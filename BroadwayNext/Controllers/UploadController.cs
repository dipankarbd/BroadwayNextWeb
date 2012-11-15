using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Mvc;
using System.Configuration;
using System.IO;
using System.Collections.Specialized;

namespace BroadwayNextWeb.Controllers
{
    public class UploadController : Controller
    {

        public string StorageFolder
        {
            get
            {
                //System.Web.HttpContext.Current.Server.MapPath("~/");
                return System.Web.HttpContext
                    .Current
                    .Server
                    .MapPath(ConfigurationManager.AppSettings["StorageFolder"]);
            }
        }

        public bool IsIE9AndLower
        {
            get
            {
                return System.Web.HttpContext.Current.Request.Browser.Browser.ToUpper() == "IE"
                    && (int.Parse(System.Web.HttpContext.Current.Request.Browser.Version.Substring(0, 1)) <= 9);
            }
        }

        //
        // GET: /Upload/

        public ActionResult Index()
        {
            return View();
        }

        // upload file
        [HttpPost]
        public ActionResult UploadFile()
        {
            //string test = HttpContext.Current.Request.Form["example"].ToString();
            //List<FileStatus> statuses = new List<FileStatus>();

            List<ViewDataUploadFilesResult> statuses = new List<ViewDataUploadFilesResult>();

            NameValueCollection headers = this.Request.Headers;
            //IEnumerable<string> values;
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            //----------------------------

            //values = headers.GetValues("X-File-Name");

            //-----------------------------------
            if (string.IsNullOrEmpty(headers["X-File-Name"]))
            {
                //Get FileName

                //UploadWholeFile(context, statuses);
            }
            else
            {
                //the actual fileName
                string actualFileName = headers["X-File-Name"].ToString();
                //the New fileName 
                string newFileName = Guid.NewGuid().ToString() + "@" + actualFileName;   // "+" is the escape char separintg the GUID and the actual File Name
                //if !(Exists) then ADD
                if (context.Session[actualFileName] == null)                // The actual fileName is the Key for the File
                {
                    //newFileName = newKey + "+" + fileName;   
                    context.Session[actualFileName] = newFileName;
                }
                UploadPartialFile(actualFileName, this.Request, statuses);  //Send the New File Name 
            }

            return Json(statuses);
        }

        private void UploadPartialFile(string actualFileName, HttpRequestBase request, List<ViewDataUploadFilesResult> statuses)
        {

            //-----------
            //string fileNameKey = uniqueFileName.Substring(0, uniqueFileName.IndexOf('+'));
            //string uniqueFileName = System.Web.HttpContext.Current.Session[fileNameKey].ToString();
            //string actualFileName = uniqueFileName.Substring(uniqueFileName.IndexOf('+') + 1, uniqueFileName.Length);

            //-- NEW
            string uniqueFileName = System.Web.HttpContext.Current.Session[actualFileName].ToString(); 

            //--------------
            string fullName = Path.Combine(StorageFolder, uniqueFileName);  // fullName == name + key
            //FileStatus status = new FileStatus();
            FileInfo fileInfo = null;

            if (System.IO.File.Exists(Path.Combine(StorageFolder, fullName)))
            {
                //fullName = Path.Combine(StorageFolder, Path.GetFileName(fileName));
                fileInfo = new FileInfo(fullName);
                
            }
            var file = request.Files[0];
            var inputStream = file.InputStream;

            //var fullName = Path.Combine(StorageRoot, Path.GetFileName(fileName));
            using (var fs = new FileStream(fullName, FileMode.Append, FileAccess.Write))
            {
                var buffer = new byte[1024];

                var l = inputStream.Read(buffer, 0, 1024);
                while (l > 0)
                {
                    fs.Write(buffer, 0, l);
                    l = inputStream.Read(buffer, 0, 1024);
                }
                fs.Flush();
                fs.Close();
            }
            
            int fileSize;
            if (fileInfo != null)
            {
                fileSize = int.Parse(fileInfo.Length.ToString());
            }
            else
            {
                fileSize = file.ContentLength;
            }
            if (statuses != null)
            {

                statuses.Add(new ViewDataUploadFilesResult()
                {
                    name = actualFileName,
                    fullname = uniqueFileName,   
                    size = fileSize,
                    type = file.ContentType,
                    url = "/Upload/Download/" + fullName,
                    delete_url = "Upload/DeleteFile?f=" + uniqueFileName,
                    thumbnail_url = "",               //@"data:image/png;base64," + EncodeFile(fullName),
                    delete_type = "GET",
                });
            }

        }

        // Delete file from the server
        [HttpGet]
        public void DeleteFile(string f)
        {
            string sourceDirectory = StorageFolder;
            string searchOption = "*" + f;

            var files = Directory.EnumerateFiles(sourceDirectory, f, SearchOption.AllDirectories);
            foreach (string  file in files)
            {
                FileInfo fi = new FileInfo(file);
                fi.Delete();
            }
        }

    }

    public class ViewDataUploadFilesResult
    {
        public string name { get; set; }
        public string fullname { get; set; }
        public int size { get; set; }
        public string type { get; set; }
        public string url { get; set; }
        public string delete_url { get; set; }
        public string thumbnail_url { get; set; }
        public string delete_type { get; set; }
    }
}
