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
    public class VendorListingController : Controller
    {

        //
        // GET: /VendorListing/
        private UnitOfWork UoW;

        public VendorListingController()
        {
            this.UoW = new UnitOfWork();
        }


        public ActionResult Index()
        {
            return View();
        }

        #region Parameter/Dropdown Items

        public JsonResult GetReasons()
        {
            int totalRowCount;
            using (UoW)
            {
                var terminationReasons = UoW.TerminationReasons.Get(out totalRowCount, orderBy: c => c.OrderBy(tr => tr.Code));
                return Json(new { Data = terminationReasons, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult GetDivisions()
        {
            int totalRowCount;
            using (UoW)
            {
                var divisions = UoW.Divisions.Get(out totalRowCount, orderBy: c => c.OrderBy(d => d.Code));
                return Json(new { Data = divisions, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult GetInsuranceTypes()
        {
            using (UoW)
            {
                var insTypes = UoW.InsuranceTypes.Get();
                return (Json(insTypes.ToList(), JsonRequestBehavior.AllowGet));
            }
        }

        public JsonResult GetDocumentTypes()
        {
            using (UoW)
            {
                var docTypes = UoW.DocumentTypes.Get();
                return (Json(docTypes.ToList(), JsonRequestBehavior.AllowGet));
            }
        }

        #endregion

        #region Vendor Contact

        public JsonResult GetVendorContacts(Guid vendorID, int pageSize, int currentPage)
        {
            int totalRowCount;
            using (UoW)
            {
                var contacts = UoW.VendorContacts.Get(out totalRowCount, filter: c => c.VendorID == vendorID);
                return Json(new { Data = contacts, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }


        public JsonResult SaveVendorContact(VendorContact contact)
        {
            contact.InputDate = DateTime.Now;
            contact.LastModifiedDate = DateTime.Now;
            var result = false;
            if (ModelState.IsValid)
            {
                using (this.UoW)
                {
                    if (contact.VendorContactID == Guid.Empty)
                    {
                        contact.VendorContactID = Guid.NewGuid();
                        this.UoW.VendorContacts.Insert(contact);
                        result = this.UoW.Commit() > 0;
                    }
                    else
                    {
                        this.UoW.VendorContacts.Update(contact);
                        result = this.UoW.Commit() > 0;
                    }
                }
                return Json(new { Success = result, VendorContact = contact });
            }
            else
            {
                return Json(new { Success = result, Message = "Invalid Model" });
            }
        }
        public JsonResult DeleteVendorContact(VendorContact contact)
        {
            bool result = false;
            using (this.UoW)
            {
                this.UoW.VendorContacts.Delete(contact);
                result = this.UoW.Commit() > 0;
            }
            return Json(new { Success = result });
        }

        #endregion

        #region Vendor Ship To

        public JsonResult GetVendorShipTos(Guid vendorID, int pageSize, int currentPage)
        {
            int totalRowCount;
            using (UoW)
            {
                var shipToes = UoW.VendorShipTos.Get(out totalRowCount, filter: c => c.VendorID == vendorID);
                return Json(new { Data = shipToes, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult SaveVendorShipTo(VendorShipTo shipto)
        {
            shipto.InputDate = DateTime.Now;
            shipto.LastModifiedDate = DateTime.Now;
            var result = false;
            //if (ModelState.IsValid)
            //{
            using (this.UoW)
            {
                if (shipto.VendorShipToID == Guid.Empty)
                {
                    shipto.VendorShipToID = Guid.NewGuid();
                    this.UoW.VendorShipTos.Insert(shipto);
                    result = this.UoW.Commit() > 0;
                }
                else
                {
                    this.UoW.VendorShipTos.Update(shipto);
                    result = this.UoW.Commit() > 0;
                }
            }
            return Json(new { Success = result, VendorShipTo = shipto });
            // }
            //else
            //{
            //   return Json(new { Success = result, Message = "Invalid Model" });
            // }
        }
        public JsonResult DeleteVendorShipTo(VendorShipTo shipto)
        {
            bool result = false;
            using (this.UoW)
            {
                this.UoW.VendorShipTos.Delete(shipto);
                result = this.UoW.Commit() > 0;
            }
            return Json(new { Success = result });
        }

        #endregion

        #region Vendor Termination

        public JsonResult GetVendorTerminations(Guid vendorID, int pageSize, int currentPage)
        {
            int totalRowCount;
            using (UoW)
            {
                var terminations = UoW.VendorTerminations.Get(out totalRowCount,
                                                            includeProperties: "Division1, TerminationReason1",
                                                            filter: c => c.VendorID == vendorID);
                return Json(new { Data = terminations, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult SaveVendorTermination(VendorTermination termination)
        {
            var result = false;
            if (ModelState.IsValid)
            {
                using (this.UoW)
                {
                    if (termination.VendorTerminationID == Guid.Empty)
                    {
                        termination.InputDate = DateTime.Now;
                        termination.LastModifiedDate = DateTime.Now;
                        termination.VendorTerminationID = Guid.NewGuid();
                        this.UoW.VendorTerminations.Insert(termination);
                        result = this.UoW.Commit() > 0;
                    }
                    else
                    {
                        TGFContext db = new TGFContext();
                        termination.LastModifiedDate = DateTime.Now;
                        this.UoW.VendorTerminations.Update(termination);
                        result = this.UoW.Commit() > 0;
                    }
                }
                return Json(new { Success = result, VendorShipTo = termination });
            }
            else
            {
                return Json(new { Success = result, Message = "Invalid Model" });
            }
        }
        public JsonResult DeleteVendorTermination(VendorTermination termination)
        {
            bool result = false;
            using (this.UoW)
            {
                this.UoW.VendorTerminations.Delete(termination);
                result = this.UoW.Commit() > 0;
            }
            return Json(new { Success = result });
        }

        #endregion

        #region Vendors


        public JsonResult GetAllVendors(int pageSize, int currentPage, string searchStr)
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
        public ActionResult Save(Vendor vendor)
        {

            DateTime InputDate = DateTime.Now;
            DateTime LastModifiedDate = DateTime.Now;

            var result = false;

            using (UoW)
            {

                string error = "";

                if (vendor.VendorID == Guid.Empty)  //This is New
                {
                    vendor.VendorID = Guid.NewGuid();
                    vendor.InputDate = InputDate;
                    vendor.LastModifiedDate = LastModifiedDate;
                    //
                    UoW.Vendors.Insert(vendor);

                    foreach (var remitToes in vendor.VendorRemitToes)
                    {
                        if (remitToes.VendorID == Guid.Empty)
                        {
                            remitToes.VendorID = vendor.VendorID;
                            remitToes.VendorRemitToID = Guid.NewGuid();
                            remitToes.InputDate = InputDate;
                            remitToes.LastModifiedDate = LastModifiedDate;
                            UoW.RemitTo.Insert(remitToes);
                        }
                    }
                    //Handle insurance 
                    foreach (var insurance in vendor.VendorInsurances)
                    {
                        if (insurance.VendorID == Guid.Empty)   //this is new Insurance
                        {
                            insurance.VendorID = vendor.VendorID;
                            insurance.VendorInsuranceID = Guid.NewGuid();
                            insurance.InputDate = InputDate;
                            insurance.LastModifiedDate = LastModifiedDate;
                            UoW.VendorInsurances.Insert(insurance);
                        }
                    }
                }
                else
                {
                    foreach (var remitToes in vendor.VendorRemitToes)
                    {
                        if (remitToes.VendorID == Guid.Empty)       //This is new
                        {
                            remitToes.VendorID = vendor.VendorID;
                            remitToes.VendorRemitToID = Guid.NewGuid();
                            remitToes.InputDate = InputDate;
                            remitToes.LastModifiedDate = LastModifiedDate;
                            UoW.RemitTo.Insert(remitToes);
                        }
                        else
                        {
                            remitToes.LastModifiedDate = LastModifiedDate;
                            UoW.RemitTo.Update(remitToes);
                        }
                    }
                    //Handle Insurance
                    foreach (var insurance in vendor.VendorInsurances)
                    {
                        if (insurance.VendorID == Guid.Empty)   //this is new Insurance
                        {
                            insurance.VendorID = vendor.VendorID;
                            insurance.VendorInsuranceID = Guid.NewGuid();
                            insurance.InputDate = InputDate;
                            insurance.LastModifiedDate = LastModifiedDate;
                            UoW.VendorInsurances.Insert(insurance);
                        }
                        else
                        {
                            insurance.LastModifiedDate = LastModifiedDate;
                            UoW.VendorInsurances.Update(insurance);
                        }
                    }
                    //
                    vendor.LastModifiedDate = LastModifiedDate;
                    UoW.Vendors.Update(vendor);
                }
                try
                {
                    result = UoW.Commit() > 0;
                }
                catch (DbUpdateConcurrencyException ex)
                {

                }
                catch (Exception e)
                {

                }

                //return Json(new { Success = result, VendorContact = contact });
                return Json(new { Sucess = result });
            }
        }

        [HttpPost]
        public JsonResult DeleteVendorAll(Guid vendorID)
        {
            var result = false; //
            using (UoW)
            {
                IEnumerable<Vendor> vendors = UoW.Vendors.Get(includeProperties: "VendorRemitToes, VendorInsurances, VendorContacts, VendorShipToes, VendorTerminations").Where(v => v.VendorID == vendorID).ToList();
                try
                {
                    //vendors.for
                    foreach (var vendor in vendors)
                    {
                        foreach (var remitToes in vendor.VendorRemitToes.ToList())
                        {
                            if (remitToes.VendorRemitToID != Guid.Empty)
                                UoW.RemitTo.Delete(remitToes);
                        }
                        foreach (var insurance in vendor.VendorInsurances.ToList())
                        {
                            if (insurance.VendorInsuranceID != Guid.Empty)
                                UoW.VendorInsurances.Delete(insurance);
                        }
                        foreach (var contact in vendor.VendorContacts.ToList())
                        {
                            if (contact.VendorContactID != Guid.Empty)
                                UoW.VendorContacts.Delete(contact);
                        }
                        foreach (var shipTo in vendor.VendorShipToes.ToList())
                        {
                            if (shipTo.VendorShipToID != Guid.Empty)
                                UoW.VendorShipTos.Delete(shipTo);
                        }
                        foreach (var termination in vendor.VendorTerminations.ToList())
                        {
                            if (termination.VendorTerminationID != Guid.Empty)
                                UoW.VendorTerminations.Delete(termination);
                        }
                        vendor.VendorRemitToes = null;
                        vendor.VendorInsurances = null;
                        vendor.VendorContacts = null;
                        vendor.VendorShipToes = null;
                        vendor.VendorTerminations = null;
                        //now delete the main Vendor
                        UoW.Vendors.Delete(vendor);

                        try
                        {
                            result = UoW.Commit() > 0;
                        }
                        catch (Exception ex)
                        {
                            throw;
                        }
                    }
                }
                catch (Exception ex)
                {

                    throw;
                }
            }
            return Json(new { Success = result });
        }




        #endregion

        #region Vendor Feedback

        //************************************ Start Vendor Feedback ****************************//
        
        public JsonResult GetVendorFeedbacks(Guid vendorId, int pageSize, int currentPage)
        {
            int totalRowCount;
            using (UoW)
            {
                var feedbacks = UoW.VendorFeedbacks.Get(out totalRowCount, 
                                                            includeProperties: "Vendor", 
                                                            filter: c => c.VendorID == vendorId, 
                                                            orderBy: c => c.OrderBy(d => d.InputDate), 
                                                            pageSize: pageSize, 
                                                            currentPage: currentPage);
                return Json(new { Data = feedbacks, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }


        public JsonResult SaveVendorFeedback(VendorFeedback feedback)
        {

            feedback.LastModifiedDate = DateTime.Now;
            var result = false;
            if (ModelState.IsValid)
            {
                using (this.UoW)
                {
                    if (feedback.VendorFeedbackID == Guid.Empty)
                    {
                        feedback.InputDate = DateTime.Now;
                        feedback.VendorFeedbackID = Guid.NewGuid();
                        this.UoW.VendorFeedbacks.Insert(feedback);
                        result = this.UoW.Commit() > 0;
                    }
                    else
                    {
                        this.UoW.VendorFeedbacks.Update(feedback);
                        result = this.UoW.Commit() > 0;
                    }
                }
                return Json(new { Success = result, VendorFeedback = feedback });
            }
            else
            {
                return Json(new { Success = result, Message = "Invalid Model" });
            }
        }


        public JsonResult DeleteVendorFeedback(VendorFeedback feedback)
        {
            bool result = false;
            using (this.UoW)
            {
                this.UoW.VendorFeedbacks.Delete(feedback);
                result = this.UoW.Commit() > 0;
            }
            return Json(new { Success = result });
        }



        //************************************ End Vendor Feedback ****************************//
        #endregion

        #region Vendor Notes

        //************************************ Start Vendor Notes ****************************//
        
        public JsonResult GetVendorNotes(Guid vendorId, int pageSize, int currentPage)
        { 
            int totalRowCount;
            using (UoW)
            {
                var notes = UoW.VendorNotes.Get(out totalRowCount, 
                                                    includeProperties: "Vendor", 
                                                    filter: c => c.VendorID == vendorId,  
                                                    orderBy: c => c.OrderBy(d => d.InputDate), 
                                                    pageSize: pageSize, 
                                                    currentPage: currentPage);
                return Json(new { Data = notes, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }


        public JsonResult SaveVendorNote(VendorNote note)
        {

            note.LastModifiedDate = DateTime.Now;
            var result = false;
            if (ModelState.IsValid)
            {
                using (this.UoW)
                {
                    if (note.VendorNotesID == Guid.Empty)
                    {
                        note.InputDate = DateTime.Now;
                        note.VendorNotesID = Guid.NewGuid();
                        this.UoW.VendorNotes.Insert(note);
                        result = this.UoW.Commit() > 0;
                    }
                    else
                    {
                        this.UoW.VendorNotes.Update(note);
                        result = this.UoW.Commit() > 0;
                    }
                }
                return Json(new { Success = result, VendorNote = note });
            }
            else
            {
                return Json(new { Success = result, Message = "Invalid Model" });
            }
        }


        public JsonResult DeleteVendorNote(VendorNote note)
        {
            bool result = false;
            using (this.UoW)
            {
                this.UoW.VendorNotes.Delete(note);
                result = this.UoW.Commit() > 0;
            }
            return Json(new { Success = result });
        }

        [HttpPost]
        public JsonResult PrepareNotesForEmail(Guid id)
        {
            using (UoW)
            {
                var note = UoW.VendorNotes.Get(filter: d => d.VendorNotesID == id).SingleOrDefault();

                if (note != null)
                {
                    Guid tmpEmailFolderName = Guid.NewGuid();
                    string storageFolder = System.Web.HttpContext.Current.Server.MapPath(ConfigurationManager.AppSettings["StorageFolder"]);
                    string tmpDir = System.IO.Path.Combine(storageFolder, "tmp", tmpEmailFolderName.ToString());
                    if (!System.IO.Directory.Exists(tmpDir))
                    {
                        System.IO.Directory.CreateDirectory(tmpDir);
                    }

                    return Json(new { Success = true, TmpDir = tmpEmailFolderName.ToString(), Notes = note.Notes });
                }

            }
            return Json(new { Success = false });
        }

        //************************************ End Vendor Notes ****************************//
        #endregion

        #region Vendor Documents

        public JsonResult GetVendorDocuments(Guid vendorID, int pageSize, int currentPage)
        {
            int totalRowCount;
            using (UoW)
            {
                var vendorDocuments = UoW.VendorDocument.Get(out totalRowCount,
                                                                 includeProperties: "Document",
                                                                 filter: c => c.VendorID == vendorID);

                return Json(new { Data = vendorDocuments, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);
            }
        }

        [HttpPost]
        public JsonResult AddVendorDocument(VendorDocument vendorDoc, Document file)
        {
            var result = false;
            DateTime Now = DateTime.Now;
            string newDir = Server.MapPath("~/Storage/VendorDocument/");

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
                            //var vendorDocument = new VendorDocument();
                            if (vendorDoc.VendorDocumentID == Guid.Empty)
                            {
                                vendorDoc.VendorDocumentID = Guid.NewGuid();
                                vendorDoc.DocumentID = file.DocumentID;
                                //vendorDocument.VendorID = vendorDoc.VendorID;
                                vendorDoc.InputDate = Now;

                                this.UoW.VendorDocument.Insert(vendorDoc);
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

        public JsonResult EditVendorDocument(VendorDocument vendorDoc)
        {
            bool result = false;
            if (ModelState.IsValid)
            {
                try
                {
                    using (UoW)
                    {
                        vendorDoc.Document.DocumentID = vendorDoc.DocumentID;   //EF breaks without this hack...
                        UoW.VendorDocument.Update(vendorDoc);
                        result = UoW.Commit() > 0;
                    }
                }
                catch (Exception e)
                {

                }
            }

            return Json(new { Success = result });
        }

        public JsonResult DeleteVendorDocument(Guid vendorDocumentId, Guid documentId, string fileName)
        {
            bool result = false;
            string StorageFolder = System.Web.HttpContext.Current.Server.MapPath("~/Storage/VendorDocument/");
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
                        UoW.VendorDocument.Delete(vendorDocumentId);
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

        [HttpPost]
        public JsonResult PrepareDocumentForEmail(Guid id)
        {
            using (UoW)
            {
                var document = UoW.Document.Get(filter: d => d.DocumentID == id).SingleOrDefault();

                string[] parts = document.FileName.Split(new char[] { '@' }, StringSplitOptions.RemoveEmptyEntries);
                if (parts.Length > 1)
                {
                    string originalFileName = parts[1];
                    string source = System.IO.Path.Combine(document.DocumentPath, document.FileName);

                    Guid tmpEmailFolderName = Guid.NewGuid();
                    string storageFolder = System.Web.HttpContext.Current.Server.MapPath(ConfigurationManager.AppSettings["StorageFolder"]);
                    string tmpDir = System.IO.Path.Combine(storageFolder, "tmp", tmpEmailFolderName.ToString());
                    if (!System.IO.Directory.Exists(tmpDir))
                    {
                        System.IO.Directory.CreateDirectory(tmpDir);
                    }
                    string destination = System.IO.Path.Combine(tmpDir, originalFileName);
                    System.IO.File.Copy(source, destination);
                    return Json(new { Success = true, TmpDir = tmpEmailFolderName.ToString() });
                }

            }
            return Json(new { Success = false });
        }
       
        #endregion

    }
}
