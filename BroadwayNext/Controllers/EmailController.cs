using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;

namespace BroadwayNextWeb.Controllers
{

    public class EmailAttachment
    {
        public string FileName { get; set; }
        public string UniqueFileName { get; set; }
    }
    public class NewEmailModel
    {
        public string TmpDir { get; set; }
        public string From { get; set; }
        public string To { get; set; }
        public string CC { get; set; }
        public string BCC { get; set; }
        public string Subject { get; set; }
        [AllowHtmlAttribute]
        public string Body { get; set; }
        public bool CCSender { get; set; }
        public List<EmailAttachment> Attachments { get; set; }

        public NewEmailModel()
        {
            ReplaceNullWithEmpty();
        }
        public void ReplaceNullWithEmpty()
        {
            if (TmpDir == null) TmpDir = String.Empty;
            if (From == null) From = String.Empty;
            if (To == null) To = String.Empty;
            if (CC == null) CC = String.Empty;
            if (BCC == null) BCC = String.Empty;
            if (Subject == null) Subject = String.Empty;
            if (Body == null) Body = String.Empty;
            if (Attachments == null) Attachments = new List<EmailAttachment>();
        }
    }
    public class EmailController : Controller
    {
        public string StorageFolder
        {
            get
            {
                return System.Web.HttpContext
                    .Current
                    .Server
                    .MapPath(ConfigurationManager.AppSettings["StorageFolder"]);
            }
        }



        public ActionResult NewEmail(NewEmailModel mail)
        {
            if (String.IsNullOrEmpty(mail.TmpDir)) throw new ArgumentException();
            String tmpDir = Path.Combine(StorageFolder, "tmp", mail.TmpDir);
            if (!System.IO.Directory.Exists(tmpDir))
            {
                System.IO.Directory.CreateDirectory(tmpDir);
            }

            return View(mail);
        }

        public JsonResult GetAttachments(string emailDirectory)
        {
            String tmpDir = Path.Combine(StorageFolder, "tmp", emailDirectory);
            DirectoryInfo dir = new DirectoryInfo(tmpDir);
            FileInfo[] files = dir.GetFiles();
            List<String> fileNames = new List<string>();
            for (int i = 0; i < files.Length; i++)
            {
                fileNames.Add(files[i].Name);
            }
            return Json(fileNames, JsonRequestBehavior.AllowGet);
        }


        [HttpPost]
        public JsonResult SendEmail(NewEmailModel mail)
        {
            if (String.IsNullOrEmpty(mail.TmpDir)) throw new ArgumentException();
            String tmpDir = Path.Combine(StorageFolder, "tmp", mail.TmpDir);
            mail.ReplaceNullWithEmpty();

            string[] tos = mail.To.Split(new string[] { ",", ";" }, StringSplitOptions.RemoveEmptyEntries);
            string[] ccs = mail.CC.Split(new string[] { ",", ";" }, StringSplitOptions.RemoveEmptyEntries);
            string[] bccs = mail.BCC.Split(new string[] { ",", ";" }, StringSplitOptions.RemoveEmptyEntries);

            MailMessage message = new MailMessage();
            if (!string.IsNullOrEmpty(mail.From))
            {
                message.From = new MailAddress(mail.From);
            }
            else
            {
                message.From = new MailAddress(ConfigurationManager.AppSettings["smtpFrom"]);
            }

            for (int i = 0; i < tos.Length; i++)
            {
                message.To.Add(tos[i]);
            }
            for (int i = 0; i < ccs.Length; i++)
            {
                message.CC.Add(ccs[i]);
            }
            for (int i = 0; i < bccs.Length; i++)
            {
                message.Bcc.Add(bccs[i]);
            }
            if (mail.CCSender) message.CC.Add(mail.From);

            message.Subject = mail.Subject;
            message.Body = mail.Body;
            message.IsBodyHtml = true;


            //move files
            for (int i = 0; i < mail.Attachments.Count; i++)
            {
                EmailAttachment attachment = mail.Attachments[i];
                string source = Path.Combine(StorageFolder, attachment.UniqueFileName);
                string destination = Path.Combine(tmpDir, attachment.FileName);
                System.IO.File.Move(source, destination);
            }

            //add attachments
            DirectoryInfo dir = new DirectoryInfo(tmpDir);
            FileInfo[] files = dir.GetFiles();
            for (int i = 0; i < files.Length; i++)
            {
                message.Attachments.Add(new Attachment(files[i].FullName));
            }

            //send email using smtp
            using (SmtpClient smtpServer = new SmtpClient(ConfigurationManager.AppSettings["smtpServer"], Int32.Parse(ConfigurationManager.AppSettings["smtpPort"])))
            {
                smtpServer.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["smtpUserName"], ConfigurationManager.AppSettings["smtpPassword"]);
                smtpServer.EnableSsl = Boolean.Parse(ConfigurationManager.AppSettings["smtpEnableSSL"]);
                smtpServer.Send(message);

            }
            message.Dispose();


            //cleanup tmp dir
            dir.Delete(true);

            return Json(new { Success = true }, JsonRequestBehavior.AllowGet);
        }


        public ActionResult EmailLookup()
        {
            return View();
        }
    }
}