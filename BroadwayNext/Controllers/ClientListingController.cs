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
    
    [Authorize]
    public partial class ClientListingController : Controller
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


        #region Parameter/Dropdown Items

        public JsonResult GetUserGroups()
        {
            using (UoW)
            {
                var userGroups = UoW.UserGroups.Get();
                return (Json(userGroups.ToList(), JsonRequestBehavior.AllowGet));
            }
        }

        public JsonResult GetUsers()
        {
            using (UoW)
            {
                var users = UoW.Users.Get();
                return (Json(users.ToList(), JsonRequestBehavior.AllowGet));
            }
        }



        #endregion

        //#region Client

        //public JsonResult GetClients()
        //{
        //    int totalRowCount;
           
        //    using (UoW)
        //    {
        //        var clients = UoW.Clients.Get(out totalRowCount);
        //        return Json(new {Data = clients, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);               
        //    }
            
        //}


        //public JsonResult GetAllClients1(int pageSize, int currentPage, string searchStr)
        //{
        //    int totalRowCount;
        //    Expression<Func<Vendor, bool>> searchFilter = null;

        //    if (!string.IsNullOrEmpty(searchStr))
        //    {
        //        int vendorNum; bool result;
        //        result = Int32.TryParse(searchStr, out vendorNum);
        //        if (result == true)
        //        {
        //            searchFilter = (v => (v.Vendnum == vendorNum) ||
        //                            (v.Company.ToLower().Contains(searchStr.ToLower())) ||
        //                            (v.Phone.Contains(searchStr) ||
        //                            (v.DBA.ToLower().Contains(searchStr.ToLower()))));
        //        }
        //        else
        //        {
        //            searchFilter = (v => (v.Company.ToLower().Contains(searchStr.ToLower())) ||
        //                                 (v.Phone.Contains(searchStr) ||
        //                                (v.DBA.ToLower().Contains(searchStr.ToLower()))));
        //        }
        //    }

        //    using (UoW)
        //    {
        //        //Get the Insurance Types explicity loaded
        //        var insTypes = UoW.InsuranceTypes.Get();
        //        //Now get the Vendors
        //        var vendors = UoW.Vendors.Get(out totalRowCount,
        //            filter: searchFilter,
        //            orderBy: c => c.OrderBy(v => v.Vendnum),
        //            includeProperties: "VendorInsurances, VendorRemitToes",
        //            pageSize: pageSize,
        //            currentPage: currentPage);

        //        return Json(new { Data = vendors, InsuranceTypes = insTypes, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
        //    }
        //}


        //public JsonResult SaveClient(Client client)
        //{
        //    DateTime Now = DateTime.Now;
        //    string UserName = System.Web.HttpContext.Current.User.Identity.Name;
        //    var result = false;
            
        //    if (ModelState.IsValid)
        //    {
        //        using (this.UoW)
        //        {
        //            if (client.ClientID == Guid.Empty)
        //            {
        //                client.Inputby = UserName;
        //                client.Inputdate = Now;
        //                client.ClientID = Guid.NewGuid();
        //                this.UoW.Clients.Insert(client);
        //            }
        //            else
        //            {
        //                client.LastModifiedBy = UserName;
        //                client.LastModifiedDate = Now;
        //                this.UoW.Clients.Update(client);
        //            }
        //            result = this.UoW.Commit() > 0;
        //        }
        //        return Json(new { Success = result});
        //    }
        //    else
        //    {
        //        return Json(new { Success = result, Message = "Invalid Model" });
        //    }
        //}

        //public JsonResult DeleteClient(Guid clientID)
        //{
        //    bool result = false;
        //    using (this.UoW)
        //    {
        //        this.UoW.Clients.Delete(clientID);
        //        result = this.UoW.Commit() > 0;
        //    }
        //    return Json(new { Success = result });
        //}

        //#endregion

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

        [HttpPost]
        public JsonResult SaveClientInstruction(ClientInstruction instruction)
        {

            DateTime Now = DateTime.Now;
            string UserName = System.Web.HttpContext.Current.User.Identity.Name;
            var result = false;

            if (ModelState.IsValid)
            {
                using (this.UoW)
                {
                    if (instruction.ClientInstructionsID == Guid.Empty)
                    {
                        instruction.InputBy = UserName;
                        instruction.InputDate = Now;
                        instruction.ClientInstructionsID = Guid.NewGuid();
                        this.UoW.ClientInstructions.Insert(instruction);
                        result = this.UoW.Commit() > 0;
                    }
                    else
                    {
                        instruction.LastModifiedBy = UserName;
                        instruction.LastModifiedDate = Now;
                        this.UoW.ClientInstructions.Update(instruction);
                        result = this.UoW.Commit() > 0;
                    }
                }
                return Json(new { Success = result });
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
            string UserName = System.Web.HttpContext.Current.User.Identity.Name;
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
                        file.InputBy = UserName;
                        //Now save
                        using (this.UoW)
                        {
                            this.UoW.Document.Insert(file);
                            //======================================================================
                            //4. Now the Document is saved... Update the Client-Document Table
                            //======================================================================
                            //var vendorDocument = new ClientDocument();
                            if (clientDoc.ClientDocumentID == Guid.Empty)
                            {
                                clientDoc.ClientDocumentID = Guid.NewGuid();
                                clientDoc.DocumentID = file.DocumentID;
                                //vendorDocument.ClientID = clientDoc.ClientID;
                                clientDoc.InputBy = UserName;
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

        [HttpPost]
        public JsonResult EditClientDocument(ClientDocument clientDoc)
        {
            bool result = false;
            string UserName = System.Web.HttpContext.Current.User.Identity.Name;
            if (ModelState.IsValid)
            {
                try
                {
                    using (UoW)
                    {
                        clientDoc.InputBy = UserName;
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

        public JsonResult DeleteClientDocument(Guid clientDocumentId, Guid documentId, string fileName)
        {
            bool result = false;
            string StorageFolder = System.Web.HttpContext.Current.Server.MapPath("~/Storage/ClientDocument/");
            string fullFileName = System.IO.Path.Combine(StorageFolder, fileName); 
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

        

        #endregion       

        #region Client Documents

        public JsonResult GetClientAssignments(Guid ClientID)
        {
            int totalRowCount;
            using (UoW)
            {
                var clientManagers = UoW.ClientManagers.Get(out totalRowCount,                    
                                                                filter: c => c.ClientID == ClientID,
                                                                orderBy: c => c.OrderBy(d => d.DivisionID));
                                                                 
                return Json(new { Data = clientManagers, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult SaveClientAssignment(ClientManager clientManager)
        {

            DateTime Now = DateTime.Now;
            string UserName = System.Web.HttpContext.Current.User.Identity.Name;
            var result = false;

            if (ModelState.IsValid)
            {
                using (this.UoW)
                {
                    if (clientManager.ClientManagerID == Guid.Empty)
                    {
                        clientManager.InputBy = UserName;
                        clientManager.InputDate = Now;
                        clientManager.ClientManagerID = Guid.NewGuid();
                        this.UoW.ClientManagers.Insert(clientManager);
                        result = this.UoW.Commit() > 0;
                    }
                    else
                    {
                        //clientManager.LastModifiedBy = UserName;
                        //clientManager.LastModifiedDate = Now;
                        this.UoW.ClientManagers.Update(clientManager);
                        result = this.UoW.Commit() > 0;
                    }
                }
                return Json(new { Success = result });
            }
            else
            {
                return Json(new { Success = result, Message = "Invalid Model" });
            }
        }


        public JsonResult DeleteClientAssignment(Guid ID)
        {
            bool result = false;
            using (this.UoW)
            {
                this.UoW.ClientManagers.Delete(ID);
                result = this.UoW.Commit() > 0;
            }
            return Json(new { Success = result });
        }



        #endregion


    }
}
