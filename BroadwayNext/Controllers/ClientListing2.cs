using BroadwayNextWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.Mvc;
using BroadwayNextWeb.Models.Domain;
using BroadwayNextWeb.Data.Utility;

namespace BroadwayNextWeb.Controllers
{
    public partial class ClientListingController : Controller
    {
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
                    statusFilter = (c => c.ActiveType == false);
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
    }  
}