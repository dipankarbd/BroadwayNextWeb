﻿using BroadwayNextWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BroadwayNextWeb.Data
{
    public class UnitOfWork : IDisposable
    {

        private TGFContext DbContext;
        private EFRepository<Vendor> vendorRepository;
        private EFRepository<VendorRemitTo> remitToRepository;
        private EFRepository<VendorInsuranceType> insTypeRepository;
        private EFRepository<VendorInsurance> insuranceRepository;
        private EFRepository<VendorContact> vendorContactRepository;
        private EFRepository<VendorShipTo> vendorShipToRepository;
        private EFRepository<VendorTermination> vendorTerminationRepository;
        private EFRepository<TerminationReason> terminationReasonsRepository;
        private EFRepository<Division> divisionRepository;
        private EFRepository<VendorNote> VendorNoteRepository;
        private EFRepository<Document> documentRepository;
        private EFRepository<VendorDocument> vendorDocumentRepository;
        private EFRepository<User> userRepository;

        public UnitOfWork()
        {
            CreateDbContext();

            //repositoryProvider.DbContext = DbContext;
            //RepositoryProvider = repositoryProvider;       
        }

        //----------------------------
        //Application Repositories...

        public EFRepository<Vendor> Vendors
        {
            get
            {
                if (this.vendorRepository == null)
                {
                    this.vendorRepository = new EFRepository<Vendor>(DbContext);
                }
                return vendorRepository;
            }
        }
        public EFRepository<VendorRemitTo> RemitTo
        {
            get
            {
                if (this.remitToRepository == null)
                {
                    this.remitToRepository = new EFRepository<VendorRemitTo>(DbContext);
                }
                return remitToRepository;
            }
        }
        public EFRepository<VendorContact> VendorContacts
        {
            get
            {
                if (this.vendorContactRepository == null)
                {
                    this.vendorContactRepository = new EFRepository<VendorContact>(DbContext);
                }
                return vendorContactRepository;
            }
        }
        public EFRepository<VendorShipTo> VendorShipTos
        {
            get
            {
                if (this.vendorShipToRepository == null)
                {
                    this.vendorShipToRepository = new EFRepository<VendorShipTo>(DbContext);
                }
                return vendorShipToRepository;
            }
        }
        public EFRepository<VendorTermination> VendorTerminations
        {
            get
            {
                if (this.vendorTerminationRepository== null)
                {
                    this.vendorTerminationRepository = new EFRepository<VendorTermination>(DbContext);
                }
                return vendorTerminationRepository;
            }
        }
        public EFRepository<VendorInsuranceType> InsuranceTypes 
        {
            get
            {
                if (this.insTypeRepository == null)
                {
                    this.insTypeRepository = new EFRepository<VendorInsuranceType>(DbContext);
                }
                return insTypeRepository;
            }
        }
        public EFRepository<VendorInsurance> VendorInsurances
        {
            get
            {
                if (this.insuranceRepository == null)
                {
                    this.insuranceRepository = new EFRepository<VendorInsurance>(DbContext);
                }
                return insuranceRepository;
            }

        }
        public EFRepository<TerminationReason> TerminationReasons
        {
            get {
                if (this.terminationReasonsRepository == null)
                {
                    this.terminationReasonsRepository = new EFRepository<TerminationReason>(DbContext);
                }
                return terminationReasonsRepository; 
            }
        }
        public EFRepository<Division> Divisions
        {
            get
            {
                if (this.divisionRepository == null)
                {
                    this.divisionRepository = new EFRepository<Division>(DbContext);
                }
                return divisionRepository;
            }
        }

        public EFRepository<VendorNote> VendorNotes
        {
            get
            {
                if (this.VendorNoteRepository == null)
                {
                    this.VendorNoteRepository = new EFRepository<VendorNote>(DbContext);
                }
                return VendorNoteRepository;
            }
        }

        public EFRepository<Document> Document
        {
            get
            {
                if (this.documentRepository == null)
                {
                    this.documentRepository = new EFRepository<Document>(DbContext);
                }
                return documentRepository;
            }
        }


        public EFRepository<VendorDocument> VendorDocument
        {
            get
            {
                if (this.vendorDocumentRepository == null)
                {
                    this.vendorDocumentRepository = new EFRepository<VendorDocument>(DbContext);
                }
                return vendorDocumentRepository;
            }
        }
        public EFRepository<User> Users
        {
            get
            {
                if (this.userRepository == null)
                {
                    this.userRepository = new EFRepository<User>(DbContext);
                }
                return userRepository;
            }
        }


        //----------------------------

        protected void CreateDbContext()
        {
            DbContext = new TGFContext();

            // Do NOT enable proxied entities, else serialization fails
            DbContext.Configuration.ProxyCreationEnabled = false;

            // Load navigation properties explicitly (avoid serialization trouble)
            DbContext.Configuration.LazyLoadingEnabled = false;

            // Because Web API will perform validation, we don't need/want EF to do so
            DbContext.Configuration.ValidateOnSaveEnabled = false;

            //DbContext.Configuration.AutoDetectChangesEnabled = false;

        }

        public int Commit()
        {
            //System.Diagnostics.Debug.WriteLine("Committed");
            return DbContext.SaveChanges();

        }

        #region IDisposable

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (disposing)
            {
                if (DbContext != null)
                {
                    DbContext.Dispose();
                }
            }
        }

        #endregion

    }
}
