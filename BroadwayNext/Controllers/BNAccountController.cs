using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using BroadwayNextWeb.Data;
using BroadwayNextWeb.Models.Domain;

namespace BroadwayNextWeb.Controllers
{
    [Authorize]
    public class BNAccountController : Controller
    {
        private UnitOfWork UoW;

        public BNAccountController()
        {
            this.UoW = new UnitOfWork();
        }
        //
        // GET: /BNAccount/
        [AllowAnonymous]
        public ActionResult Index()
        {
            return View();
        }
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginModel model, string returnUrl)
        {
            if (ValidateLogin(model.UserName, model.Password))
            {
                FormsAuthentication.SetAuthCookie(model.UserName, false);
                return RedirectToLocal(returnUrl);
            }
            // If we got this far, something failed, redisplay form
            ModelState.AddModelError("", "The user name or password provided is incorrect.");
            return View(model);
        }
         
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LogOff()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "VendorListing");
        }

        private bool ValidateLogin(string userid, string password)
        {
            using (UoW)
            {
                var user = UoW.Users.Get(filter: u => u.Loginname == userid && u.Password == password).SingleOrDefault();
                if (user != null) return true;
            }

            return false;
        }
        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            else
            {
                return RedirectToAction("Index", "VendorListing");
            }
        }
    }
}
