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
        public void ReplaceNullWithEmpty()
        {
            if (TmpDir == null) TmpDir = String.Empty;
            if (From == null) From = String.Empty;
            if (To == null) To = String.Empty;
            if (CC == null) CC = String.Empty;
            if (BCC == null) BCC = String.Empty;
            if (Subject == null) Subject = String.Empty;
            if (Body == null) Body = String.Empty;
        }
    }
    public class EmailController : Controller
    {
        //
        // GET: /Email/
        private const string attachmentdir = "~/App_Data/";

        public ActionResult NewEmail(NewEmailModel model)
        {
            return View(model);
        }

        public JsonResult GetAttachments(string emailDirectory)
        {
            DirectoryInfo dir = new DirectoryInfo(Server.MapPath(attachmentdir + emailDirectory));
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
            mail.ReplaceNullWithEmpty();

            string[] tos = mail.To.Split(new string[] { ",", ";" }, StringSplitOptions.RemoveEmptyEntries);
            string[] ccs = mail.CC.Split(new string[] { ",", ";" }, StringSplitOptions.RemoveEmptyEntries);
            string[] bccs = mail.BCC.Split(new string[] { ",", ";" }, StringSplitOptions.RemoveEmptyEntries);

            MailMessage message = new MailMessage();
            message.From = new MailAddress(mail.From);
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

            //add attachments
            DirectoryInfo dir = new DirectoryInfo(Server.MapPath(attachmentdir + mail.TmpDir));
            FileInfo[] files = dir.GetFiles();
            for (int i = 0; i < files.Length; i++)
            {
                message.Attachments.Add(new Attachment(files[i].FullName));
            }

            //send email using smtp
            SmtpClient smtpServer = new SmtpClient(ConfigurationManager.AppSettings["smtpServer"], Int32.Parse(ConfigurationManager.AppSettings["smtpPort"]));
            smtpServer.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["smtpUserName"], ConfigurationManager.AppSettings["smtpPassword"]);
            smtpServer.EnableSsl = Boolean.Parse(ConfigurationManager.AppSettings["smtpEnableSSL"]);
            smtpServer.Send(message);

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