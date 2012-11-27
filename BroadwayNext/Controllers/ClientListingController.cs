﻿using BroadwayNextWeb.Models;
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

        #region Client

        public JsonResult GetClients()
        {
            int totalRowCount;
            using (UoW)
            {
                var clients = UoW.Clients.Get(out totalRowCount);
                return Json(new {Data = clients, VirtualRowCount = totalRowCount }, JsonRequestBehavior.AllowGet);               
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

        #endregion



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





        




    }
}
