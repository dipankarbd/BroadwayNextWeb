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



        //public JsonResult GetAllVendors1(int pageSize, int currentPage, int? vendorNum, string companyName = null)
        //{
        //    TGFContext db = new TGFContext();
        //    db.Configuration.ProxyCreationEnabled = false;
        //    db.VendorInsuranceTypes.Load();
        //    //var vendors, rowCount;
        //    Expression<Func<Vendor, bool>> filterVendorNum = null;
        //    if (vendorNum.HasValue)
        //    {
        //        filterVendorNum = (v => v.Vendnum == vendorNum);   //1578511699
        //    }
        //    Expression<Func<Vendor, bool>> filterName = null;
        //    if (!string.IsNullOrEmpty(companyName))
        //    {
        //        filterName = (v => v.Company.Equals(companyName, StringComparison.CurrentCultureIgnoreCase));
        //    }
        //    try
        //    {
        //        IQueryable<Vendor> vendors = db.Vendors; ;
        //        if (filterVendorNum != null)
        //        {
        //            vendors = vendors.Where(filterVendorNum);
        //        }
        //        if (filterName != null)
        //        {
        //            vendors = vendors.Where(filterName);
        //        }
        //        int rowCount = vendors.Count();
        //        var vendorList= vendors.Include("VendorInsurances").Include("VendorRemitToes").OrderBy(v => v.Vendnum).Skip((currentPage - 1) * pageSize).Take(pageSize).ToList();
        //        return Json(new { Data = vendorList, InsuranceTypes = db.VendorInsuranceTypes.ToList(), VirtualRowCount = rowCount }, JsonRequestBehavior.AllowGet);
        //    }
        //    catch (Exception ex)
        //    {

        //        throw;
        //    }


        //}


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

        #endregion

        #region Vendor Notes

        //************************************ Start Vendor Notes ****************************//




        public JsonResult GetVendorNotes(Guid vendorId, int pageSize, int currentPage)
        {
            TGFContext db = new TGFContext();

            db.Configuration.ProxyCreationEnabled = false;

            var notesQuery = db.VendorNotes.Include("Vendor").Where(c => c.VendorID == vendorId);
            var rowCount = notesQuery.Count();
            var notes = notesQuery.OrderBy(c => c.InputDate).Skip((currentPage - 1) * pageSize).Take(pageSize).ToList();

            //contacts.ForEach(c =>
            //{
            //    c. = c.Vendor.Vendnum;
            //});
            return Json(new { Data = notes, VirtualRowCount = rowCount }, JsonRequestBehavior.AllowGet);
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
        public JsonResult AddVendorDocument(Guid vendorID, Document file)
        {
            var result = false;
            DateTime Now = DateTime.Now;

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
                        string newDir = Server.MapPath("~/Storage/VendorDocument/");
                        //string destination = newDir + fileInfo.Name;
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
                            var vendorDocument = new VendorDocument();
                            if (vendorDocument.VendorDocumentID == Guid.Empty)
                            {
                                vendorDocument.VendorDocumentID = Guid.NewGuid();
                                vendorDocument.DocumentID = file.DocumentID;
                                vendorDocument.VendorID = vendorID;
                                vendorDocument.InputDate = Now;

                                this.UoW.VendorDocument.Insert(vendorDocument);
                            }
                            //Now Commit
                            result = this.UoW.Commit() > 0;
                        }
                        return Json(new { Success = result });
                    }
                    catch (Exception e)
                    {

                        throw;
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

        #endregion

    }
}
