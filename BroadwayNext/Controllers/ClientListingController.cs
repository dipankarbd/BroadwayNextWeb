using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.Common;
using System.Data.Entity;
using BroadwayNextWeb.Data;
using BroadwayNextWeb.Data.Utility;
using System.Linq.Expressions;
using System.Data.Entity.Infrastructure;
using System.Configuration;
using BroadwayNextWeb.Models;
using BroadwayNextWeb.Models.Domain;



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


        #region Client

        public JsonResult GetClients(ClientSearchCriteriaModel searchModel)
        {
            int totalRowCount;
            Expression<Func<Client, bool>> searchFilter = null;
            if (!string.IsNullOrEmpty(searchModel.Client))
            {
                searchFilter = (c => c.Clinum.StartsWith(searchModel.Client));
            }
            if (!string.IsNullOrEmpty(searchModel.Company))
            {
                Expression<Func<Client, bool>> companyFilter = (c => c.Company.StartsWith(searchModel.Company));
                if (searchFilter != null)
                {
                    searchFilter = searchFilter.And(companyFilter);
                }
                else
                {
                    searchFilter = companyFilter;
                }
            }
            if (!string.IsNullOrEmpty(searchModel.Status))
            {
                Expression<Func<Client, bool>> statusFilter = (c => c.ActiveType == null);
                if (searchModel.Status == "active")
                {
                    statusFilter = (c => c.ActiveType == true);
                }
                else if (searchModel.Status == "inactive")
                {
                    statusFilter = (c => c.ActiveType == false || c.ActiveType == null);
                }
                else if (searchModel.Status == "all")
                {
                    statusFilter = (c => c.ActiveType == null || c.ActiveType == false || c.ActiveType == true);
                }

                if (searchFilter != null)
                {
                    searchFilter = searchFilter.And(statusFilter);
                }
                else
                {
                    searchFilter = statusFilter;
                }
            }

            using (UoW)
            {
                var clients = UoW.Clients.Get(out totalRowCount,
                    filter: searchFilter,
                    includeProperties: "ClientNotifications");
                return Json(new { Data = clients, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }

        }


        public JsonResult GetAllClients1(int pageSize, int currentPage, string searchStr)
        {
            int totalRowCount;
            Expression<Func<Vendor, bool>> searchFilter = null;

            if (!string.IsNullOrEmpty(searchStr))
            {
                int vendorNum; bool result;
                result = Int32.TryParse(searchStr, out vendorNum);
                if (result == true)
                {
                    searchFilter = (v => (v.Vendnum == vendorNum) ||
                                    (v.Company.ToLower().Contains(searchStr.ToLower())) ||
                                    (v.Phone.Contains(searchStr) ||
                                    (v.DBA.ToLower().Contains(searchStr.ToLower()))));
                }
                else
                {
                    searchFilter = (v => (v.Company.ToLower().Contains(searchStr.ToLower())) ||
                                         (v.Phone.Contains(searchStr) ||
                                        (v.DBA.ToLower().Contains(searchStr.ToLower()))));
                }
            }

            using (UoW)
            {
                //Get the Insurance Types explicity loaded
                var insTypes = UoW.InsuranceTypes.Get();
                //Now get the Vendors
                var vendors = UoW.Vendors.Get(out totalRowCount,
                    filter: searchFilter,
                    orderBy: c => c.OrderBy(v => v.Vendnum),
                    includeProperties: "VendorInsurances, VendorRemitToes",
                    pageSize: pageSize,
                    currentPage: currentPage);

                return Json(new { Data = vendors, InsuranceTypes = insTypes, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult SaveClient(Client client)
        {
            DateTime Now = DateTime.Now;
            string UserName = System.Web.HttpContext.Current.User.Identity.Name;
            var result = false;

            if (ModelState.IsValid)
            {
                using (this.UoW)
                {
                    if (client.ClientID == Guid.Empty)
                    {
                        client.Inputby = UserName;
                        client.Inputdate = Now;
                        client.ClientID = Guid.NewGuid();
                        this.UoW.Clients.Insert(client);
                    }
                    else
                    {
                        client.LastModifiedBy = UserName;
                        client.LastModifiedDate = Now;
                        this.UoW.Clients.Update(client);
                    }
                    result = this.UoW.Commit() > 0;
                }
                return Json(new { Success = result });
            }
            else
            {
                return Json(new { Success = result, Message = "Invalid Model" });
            }
        }

        [HttpPost]
        public JsonResult DeleteClient(Guid clientID)
        {
            bool result = false;
            using (this.UoW)
            {
                this.UoW.Clients.Delete(clientID);
                result = this.UoW.Commit() > 0;
            }
            return Json(new { Success = result });
        }

        #region ClientNotification

        public JsonResult GetClientNotifications(Guid ClientID)
        {
            int totalRowCount;
            using (UoW)
            {
                var clientNotifications = UoW.ClientNotifications.Get(out totalRowCount,
                                                                filter: c => c.ClientID == ClientID,
                                                                orderBy: c => c.OrderBy(d => d.DivisionID));

                return Json(new { Data = clientNotifications, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult SaveClientNotification(ClientNotification ClientNotification)
        {
            DateTime Now = DateTime.Now;
            string UserName = System.Web.HttpContext.Current.User.Identity.Name;
            var result = false;

            if (ModelState.IsValid)
            {
                using (this.UoW)
                {
                    if (ClientNotification.NotificationID == Guid.Empty)
                    {

                        ClientNotification.NotificationID = Guid.NewGuid();
                        ClientNotification.InputBy = UserName;
                        ClientNotification.InputDate = Now;

                        this.UoW.ClientNotifications.Insert(ClientNotification);
                    }
                    else
                    {
                        ClientNotification.LastModifiedBy = UserName;
                        ClientNotification.LastModifiedDate = Now;
                        this.UoW.ClientNotifications.Update(ClientNotification);
                    }
                    result = this.UoW.Commit() > 0;
                }
                return Json(new { Success = result });
            }
            else
            {
                return Json(new { Success = result, Message = "Invalid Model" });
            }
        }

        [HttpPost]
        public JsonResult DeleteClientNotification(Guid notificationID)
        {
            bool result = false;
            using (this.UoW)
            {
                try
                {
                    this.UoW.ClientNotifications.Delete(notificationID);
                    result = this.UoW.Commit() > 0;
                }
                catch (Exception ex)
                {

                    throw;
                }

            }
            return Json(new { Success = result });
        }

        #endregion

        #endregion

        #region Client BillTo

        public JsonResult GetClientBillToes(Guid clientID)
        {
            int totalRowCount;

            using (UoW)
            {
                var billToes = UoW.ClientBillTos.Get(out totalRowCount, filter: c => c.ClientID == clientID);
                return Json(new { Data = billToes, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }

        }

        [HttpPost]
        public JsonResult SaveClientBillTo(ClientBillTo ClientBillTo)
        {
            DateTime Now = DateTime.Now;
            string UserName = System.Web.HttpContext.Current.User.Identity.Name;
            var result = false;

            if (ModelState.IsValid)
            {
                using (this.UoW)
                {
                    if (ClientBillTo.ClientBillToID == Guid.Empty)
                    {
                        ClientBillTo.InputBy = UserName;
                        ClientBillTo.InputDate = Now;
                        ClientBillTo.ClientBillToID = Guid.NewGuid();
                        this.UoW.ClientBillTos.Insert(ClientBillTo);
                    }
                    else
                    {
                        ClientBillTo.LastModifiedBy = UserName;
                        ClientBillTo.LastModifiedDate = Now;
                        this.UoW.ClientBillTos.Update(ClientBillTo);
                    }
                    result = this.UoW.Commit() > 0;
                }
                return Json(new { Success = result });
            }
            else
            {
                return Json(new { Success = result, Message = "Invalid Model" });
            }
        }

        [HttpPost]
        public JsonResult DeleteBillTo(Guid billToID)
        {
            bool result = false;
            using (this.UoW)
            {
                this.UoW.ClientBillTos.Delete(billToID);
                result = this.UoW.Commit() > 0;
            }
            return Json(new { Success = result });
        }


        #endregion        

        #region Client Contact

        public JsonResult GetClientContacts(Guid clientID)
        {
            int totalRowCount;

            using (UoW)
            {
                var contacts = UoW.ClientContacts.Get(out totalRowCount, filter: c => c.ClientID == clientID);
                return Json(new { Data = contacts, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }

        }

        [HttpPost]
        public JsonResult SaveClientContact(ClientContact clientContact)
        {
            DateTime Now = DateTime.Now;
            string UserName = System.Web.HttpContext.Current.User.Identity.Name;
            var result = false;

            if (ModelState.IsValid)
            {
                using (this.UoW)
                {
                    if (clientContact.ClientContactID == Guid.Empty)
                    {
                        clientContact.InputBy = UserName;
                        clientContact.InputDate = Now;
                        clientContact.ClientContactID = Guid.NewGuid();
                        this.UoW.ClientContacts.Insert(clientContact);
                    }
                    else
                    {
                        //clientContact.LastModifiedBy = UserName;
                        //clientContact.LastModifiedDate = Now;
                        this.UoW.ClientContacts.Update(clientContact);
                    }
                    result = this.UoW.Commit() > 0;
                }
                return Json(new { Success = result });
            }
            else
            {
                return Json(new { Success = result, Message = "Invalid Model" });
            }
        }

        [HttpPost]
        public JsonResult DeleteContact(Guid clientContactID)
        {
            bool result = false;
            using (this.UoW)
            {
                this.UoW.ClientContacts.Delete(clientContactID);
                result = this.UoW.Commit() > 0;
            }
            return Json(new { Success = result });
        }


        #endregion

        #region Client Instructions


        public JsonResult GetClientInstructions(Guid clientID, int pageSize, int currentPage)
        {
            int totalRowCount;
            using (UoW)
            {
                var Instructions = UoW.ClientInstructions.Get(out totalRowCount, filter: c => c.ClientID == clientID, orderBy: c => c.OrderBy(d => d.InputDate));
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

        public JsonResult GetClientDocuments(Guid ClientID, bool IsWOAttachment, int pageSize, int currentPage)
        {
            int totalRowCount;            
            using (UoW)
            {
                var clientDocuments = UoW.ClientDocuments.Get(out totalRowCount,
                                                                 includeProperties: "Document",
                                                                 filter: c => c.ClientID == ClientID && c.OrderAttachment == IsWOAttachment);

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
            //--
            string noFileFoundMessage;

            //if (ModelState.IsValid)
            //{
            if ((file.DocumentID == Guid.Empty) && (file.FileName != null))      //-- NEW == we need to Add the Document 
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
                else    //We didn't find any file to save...
                {
                    noFileFoundMessage = "Didn't find any valid document to save. Please upload a valid file and then hit the Save button";
                    return Json(new { Success = result , errMsg = noFileFoundMessage});
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
            DateTime Now = DateTime.Now;
            if (ModelState.IsValid)
            {
                try
                {
                    using (UoW)
                    {
                        clientDoc.InputBy = UserName;
                        clientDoc.Document.DocumentID = clientDoc.DocumentID;   //EF breaks without this hack...                       
                        clientDoc.Document.LastModifiedBy = UserName;
                        clientDoc.Document.LastModifiedDate = Now;
                        UoW.Document.Update(clientDoc.Document);
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

        #region Client Assignments

        public JsonResult GetClientAssignments(Guid ClientID)
        {
            int totalRowCount;
            using (UoW)
            {
                var clientManagers = UoW.ClientManagers.Get(out totalRowCount,                                                               
                                                                filter: c => c.ClientID == ClientID,
                                                                orderBy: c => c.OrderBy(d => d.DivisionID)
                                                                );
                                                                 
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

        #region Client Prefix

        public JsonResult GetClientPrefixs(Guid ClientID)
        {
            int totalRowCount;
            using (UoW)
            {
                var ClientPrefixs = UoW.ClientPrefixs.Get(out totalRowCount,
                                                                filter: c => c.ClientID == ClientID,
                                                                orderBy: c => c.OrderBy(d => d.Prefix));

                return Json(new { Data = ClientPrefixs, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult CheckClientPrefix(ClientPrefix clientPrefix)
        {
            int totalRowCount;
            var result = false;
            using (UoW)
            {
                if (clientPrefix.ClientPrefixID == Guid.Empty)
                {                    
                    clientPrefix.ClientPrefixID = Guid.NewGuid();
                    var ClientPrefixs = UoW.ClientPrefixs.Get(out totalRowCount, filter: c => c.Prefix.Trim().ToUpper() == clientPrefix.Prefix.Trim().ToUpper() && c.ClientID == clientPrefix.ClientID);
                    result = totalRowCount > 0;
                }
                else
                {
                    var ClientPrefixs = UoW.ClientPrefixs.Get(out totalRowCount, filter: c => c.Prefix.Trim().ToUpper() == clientPrefix.Prefix.Trim().ToUpper() && c.ClientPrefixID != clientPrefix.ClientPrefixID && c.ClientID == clientPrefix.ClientID);
                    result = totalRowCount > 0;
                }


                return Json(new { IsExist = result }, JsonRequestBehavior.AllowGet);
            }
        }



        [HttpPost]
        public JsonResult SaveClientPrefix(ClientPrefix clientPrefix)
        {

            DateTime Now = DateTime.Now;
            string UserName = System.Web.HttpContext.Current.User.Identity.Name;
            var result = false;

            if (ModelState.IsValid)
            {
                using (this.UoW)
                {
                    if (clientPrefix.ClientPrefixID == Guid.Empty)
                    {
                        clientPrefix.Prefix = clientPrefix.Prefix.Trim().ToUpper();
                        clientPrefix.InputBy = UserName;
                        clientPrefix.InputDate = Now;
                        clientPrefix.ClientPrefixID = Guid.NewGuid();
                        this.UoW.ClientPrefixs.Insert(clientPrefix);
                        result = this.UoW.Commit() > 0;
                    }
                    else
                    {
                        //clientManager.LastModifiedBy = UserName;
                        //clientManager.LastModifiedDate = Now;
                        clientPrefix.Prefix = clientPrefix.Prefix.Trim().ToUpper();
                        this.UoW.ClientPrefixs.Update(clientPrefix);
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


        public JsonResult DeleteClientPrefix(Guid ID)
        {
            bool result = false;
            using (this.UoW)
            {
                this.UoW.ClientPrefixs.Delete(ID);
                result = this.UoW.Commit() > 0;
            }
            return Json(new { Success = result });
        }



        #endregion
    }
}
