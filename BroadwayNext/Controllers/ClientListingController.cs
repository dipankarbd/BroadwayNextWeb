using BroadwayNextWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.Common;
using System.Data.Entity;
using BroadwayNextWeb.Data;
using System.Linq.Expressions;
using System.Data.Entity.Infrastructure;
using System.Configuration;

namespace BroadwayNextWeb.Controllers
{
    
    public class ClientListingController : Controller
    {
        //
        // GET: /ClientListing/
         private UnitOfWork UoW;

         public ClientListingController()
        {
            this.UoW = new UnitOfWork();
        }

        public ActionResult Index()
        {
            return View();
        }
                      

        #region Client Instructions
                

        public JsonResult GetClientInstructions(Guid clientID, int pageSize, int currentPage)
        {
            int totalRowCount;
            using (UoW)
            {
                var Instructions = UoW.ClientInstructions.Get(out totalRowCount,
                                                    includeProperties: "Client,Division",
                                                    filter: c => c.ClientID == clientID,
                                                    orderBy: c => c.OrderBy(d => d.InputDate),
                                                    pageSize: pageSize,
                                                    currentPage: currentPage);
                return Json(new { Data = Instructions, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }


        public JsonResult SaveClientInstruction(ClientInstruction instruction)
        {

            instruction.LastModifiedDate = DateTime.Now;
            var result = false;
            if (ModelState.IsValid)
            {
                using (this.UoW)
                {
                    if (instruction.ClientInstructionsID == Guid.Empty)
                    {
                        instruction.InputDate = DateTime.Now;
                        instruction.ClientInstructionsID = Guid.NewGuid();
                        this.UoW.ClientInstructions.Insert(instruction);
                        result = this.UoW.Commit() > 0;
                    }
                    else
                    {
                        this.UoW.ClientInstructions.Update(instruction);
                        result = this.UoW.Commit() > 0;
                    }
                }
                return Json(new { Success = result, ClientInstruction = instruction });
            }
            else
            {
                return Json(new { Success = result, Message = "Invalid Model" });
            }
        }


        public JsonResult DeleteClientInstruction(Guid ID)
        {
            bool result = false;
            using (this.UoW)
            {
                this.UoW.ClientInstructions.Delete(ID);
                result = this.UoW.Commit() > 0;
            }
            return Json(new { Success = result });
        }

        #endregion


        #region Client Documents

        public JsonResult GetClientDocuments(Guid ClientID, int pageSize, int currentPage)
        {
            int totalRowCount;
            using (UoW)
            {
                var clientDocuments = UoW.ClientDocuments.Get(out totalRowCount,
                                                                 includeProperties: "Document",
                                                                 filter: c => c.ClientID == ClientID);

                return Json(new { Data = clientDocuments, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult AddClientDocument(ClientDocument clientDoc, Document file)
        {
            var result = false;
            DateTime Now = DateTime.Now;
            string newDir = Server.MapPath("~/Storage/ClientDocument/");

            //if (ModelState.IsValid)
            //{
            if (file.DocumentID == Guid.Empty)      //-- NEW == we need to Add the Document 
            {
                //1. Prep Document + Save File
                //=====================================================================
                file.DocumentID = Guid.NewGuid();
                file.DateImported = Now;
                file.InputDate = Now;

                //=====================================================================
                //2. Prep+Move The Actual File from Temp
                //=====================================================================
                string StorageFolder = System.Web.HttpContext.Current.Server.MapPath(ConfigurationManager.AppSettings["StorageFolder"]);
                string fullFileName = System.IO.Path.Combine(StorageFolder, file.FileName); //FileName => 3326c583-9300-4189-bb8b-4b528502910b@Maintainable.javascript
                if (System.IO.File.Exists(fullFileName))
                {
                    try
                    {
                        System.IO.FileInfo fileInfo = new System.IO.FileInfo(fullFileName);
                        fileInfo.MoveTo(newDir + fileInfo.Name);
                        //======================================================================
                        //3.Update Document Table with updated path and doc info
                        //======================================================================
                        file.DocumentPath = fileInfo.DirectoryName;     //Get the new directory path after move
                        file.FileExtension = fileInfo.Extension;
                        //Now save
                        using (this.UoW)
                        {
                            this.UoW.Document.Insert(file);
                            //======================================================================
                            //4. Now the Document is saved... Update the Vendor-Document Table
                            //======================================================================
                            //var clientDocument = new VendorDocument();
                            if (clientDoc.ClientDocumentID == Guid.Empty)
                            {
                                clientDoc.ClientDocumentID = Guid.NewGuid();
                                clientDoc.DocumentID = file.DocumentID;
                                //clientDocument.VendorID = clientDoc.VendorID;
                                clientDoc.InputBy = "Nasir Uddin";
                                clientDoc.InputDate = Now;

                                this.UoW.ClientDocuments.Insert(clientDoc);
                            }
                            //Now Commit
                            result = this.UoW.Commit() > 0;
                            //if successful delete the session key
                            if (result == true)
                            {
                                var key = fileInfo.Name.Substring(fileInfo.Name.IndexOf('@') + 1);
                                if (System.Web.HttpContext.Current.Session[key] != null)
                                {
                                    System.Web.HttpContext.Current.Session[key] = null;
                                }
                            }
                        }
                        return Json(new { Success = result });
                    }
                    catch (Exception e)
                    {
                        //Something went wrong, so we need to clean up
                        string fn = newDir + file.FileName;
                        if (System.IO.File.Exists(fn))
                        {
                            //Delete so we don't have any orphan file lying around
                            System.IO.File.Delete(fn);
                        }
                        //throw;
                    }
                }
            }

            return Json(new { Success = result });
            //}
            //else
            //{
            //    return Json(new { Success = result, Message = "Invalid Model" });
            //}
        }

        public JsonResult EditVendorDocument(ClientDocument clientDoc)
        {
            bool result = false;
            if (ModelState.IsValid)
            {
                try
                {
                    using (UoW)
                    {
                        clientDoc.Document.DocumentID = clientDoc.DocumentID;   //EF breaks without this hack...
                        UoW.ClientDocuments.Update(clientDoc);
                        result = UoW.Commit() > 0;
                    }
                }
                catch (Exception e)
                {

                }
            }

            return Json(new { Success = result });
        }

        public JsonResult DeleteVendorDocument(Guid clientDocumentId, Guid documentId, string fileName)
        {
            bool result = false;
            string StorageFolder = System.Web.HttpContext.Current.Server.MapPath("~/Storage/ClientDocument/");
            string fullFileName = System.IO.Path.Combine(StorageFolder, fileName); //FileName => 3326c583-9300-4189-bb8b-4b528502910b@Maintainable.javascript
            if (System.IO.File.Exists(fullFileName))
            {
                try
                {
                    System.IO.FileInfo fileInfo = new System.IO.FileInfo(fullFileName);
                    fileInfo.Delete();
                    using (this.UoW)
                    {
                        UoW.Document.Delete(documentId);
                        UoW.ClientDocuments.Delete(clientDocumentId);
                        result = this.UoW.Commit() > 0;
                    }
                    return Json(new { Success = result });
                }
                catch (Exception e)
                {
                    //throw;
                }
            }

            return Json(new { Success = result });
        }

        //[HttpPost]
        //public JsonResult PrepareDocumentForEmail(Guid id)
        //{
        //    using (UoW)
        //    {
        //        var document = UoW.Document.Get(filter: d => d.DocumentID == id).SingleOrDefault();

        //        string[] parts = document.FileName.Split(new char[] { '@' }, StringSplitOptions.RemoveEmptyEntries);
        //        if (parts.Length > 1)
        //        {
        //            string originalFileName = parts[1];
        //            string source = System.IO.Path.Combine(document.DocumentPath, document.FileName);

        //            Guid tmpEmailFolderName = Guid.NewGuid();
        //            string storageFolder = System.Web.HttpContext.Current.Server.MapPath(ConfigurationManager.AppSettings["StorageFolder"]);
        //            string tmpDir = System.IO.Path.Combine(storageFolder, "tmp", tmpEmailFolderName.ToString());
        //            if (!System.IO.Directory.Exists(tmpDir))
        //            {
        //                System.IO.Directory.CreateDirectory(tmpDir);
        //            }
        //            string destination = System.IO.Path.Combine(tmpDir, originalFileName);
        //            System.IO.File.Copy(source, destination);
        //            return Json(new { Success = true, TmpDir = tmpEmailFolderName.ToString() });
        //        }

        //    }
        //    return Json(new { Success = false });
        //}

        #endregion


    }
}
