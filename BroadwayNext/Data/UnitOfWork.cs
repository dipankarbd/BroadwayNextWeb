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
        private EFRepository<VendorFeedback> VendorFeedbackRepository;
        private EFRepository<VendorNote> VendorNoteRepository;
        private EFRepository<NoteType> NoteTypeRepository;
        private EFRepository<Document> documentRepository;
        private EFRepository<VendorDocument> vendorDocumentRepository;
        private EFRepository<User> userRepository;
        private EFRepository<UserGroup> UserGroupRepository;
        private EFRepository<DocumentType> documentTypesRepository;
        private EFRepository<DeliveryOption> DeliveryOptionsRepository;
        private EFRepository<State> stateReposiroty;

        private EFRepository<Client> ClientRepository;
        private EFRepository<ClientBillTo> ClientBillToRepository;
        private EFRepository<ClientContact> ClientContactRepository;
        private EFRepository<ClientDocument> ClientDocumentRepository;
        private EFRepository<ClientInstruction> ClientInstructionRepository;
        private EFRepository<ClientManager> ClientManagerRepository;
        private EFRepository<ClientNote> ClientNoteRepository;
        private EFRepository<ClientNotification> ClientNotificationRepository;
        private EFRepository<ClientNumOfDay> ClientNumOfDayRepository;
        private EFRepository<ClientPrefix> ClientPrefixRepository;
        private EFRepository<ZipLongLat> ZipLongLatRepository;
        private EFRepository<PaymentTerm> paymentTermsRepository;
        private EFRepository<TechnologyProvider> techProviderRepository;

        public UnitOfWork()
        {
            CreateDbContext();

            //repositoryProvider.DbContext = DbContext;
            //RepositoryProvider = repositoryProvider;       
        }

        #region Repository Getter/Setters
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
                if (this.vendorTerminationRepository == null)
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
            get
            {
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

        public EFRepository<VendorFeedback> VendorFeedbacks
        {
            get
            {
                if (this.VendorFeedbackRepository == null)
                {
                    this.VendorFeedbackRepository = new EFRepository<VendorFeedback>(DbContext);
                }
                return VendorFeedbackRepository;
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

        public EFRepository<NoteType> NoteTypes
        {
            get
            {
                if (this.NoteTypeRepository == null)
                {
                    this.NoteTypeRepository = new EFRepository<NoteType>(DbContext);
                }
                return NoteTypeRepository;
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

        public EFRepository<UserGroup> UserGroups
        {
            get
            {
                if (this.UserGroupRepository == null)
                {
                    this.UserGroupRepository = new EFRepository<UserGroup>(DbContext);
                }
                return UserGroupRepository;
            }
        }
        

        public EFRepository<DocumentType> DocumentTypes
        {
            get
            {
                if (this.documentTypesRepository == null)
                {
                    this.documentTypesRepository = new EFRepository<DocumentType>(DbContext);
                }
                return documentTypesRepository;
            }
        }


        public EFRepository<Client> Clients
        {
            get
            {
                if (this.ClientRepository == null)
                {
                    this.ClientRepository = new EFRepository<Client>(DbContext);
                }
                return ClientRepository;
            }
        }

        public EFRepository<ClientBillTo> ClientBillTos
        {
            get
            {
                if (this.ClientBillToRepository == null)
                {
                    this.ClientBillToRepository = new EFRepository<ClientBillTo>(DbContext);
                }
                return ClientBillToRepository;
            }
        }
               

        public EFRepository<ClientContact> ClientContacts
        {
            get
            {
                if (this.ClientContactRepository == null)
                {
                    this.ClientContactRepository = new EFRepository<ClientContact>(DbContext);
                }
                return ClientContactRepository;
            }
        }

        public EFRepository<ClientDocument> ClientDocuments
        {
            get
            {
                if (this.ClientDocumentRepository == null)
                {
                    this.ClientDocumentRepository = new EFRepository<ClientDocument>(DbContext);
                }
                return ClientDocumentRepository;
            }
        }

        public EFRepository<ClientInstruction> ClientInstructions
        {
            get
            {
                if (this.ClientInstructionRepository == null)
                {
                    this.ClientInstructionRepository = new EFRepository<ClientInstruction>(DbContext);
                }
                return ClientInstructionRepository;
            }
        }

        public EFRepository<ClientManager> ClientManagers
        {
            get
            {
                if (this.ClientManagerRepository == null)
                {
                    this.ClientManagerRepository = new EFRepository<ClientManager>(DbContext);
                }
                return ClientManagerRepository;
            }
        }

        public EFRepository<ClientNote> ClientNotes
        {
            get
            {
                if (this.ClientNoteRepository == null)
                {
                    this.ClientNoteRepository = new EFRepository<ClientNote>(DbContext);
                }
                return ClientNoteRepository;
            }
        }

        public EFRepository<ClientNotification> ClientNotifications
        {
            get
            {
                if (this.ClientNotificationRepository == null)
                {
                    this.ClientNotificationRepository = new EFRepository<ClientNotification>(DbContext);
                }
                return ClientNotificationRepository;
            }
        }

        public EFRepository<ClientNumOfDay> ClientNumOfDays
        {
            get
            {
                if (this.ClientNumOfDayRepository == null)
                {
                    this.ClientNumOfDayRepository = new EFRepository<ClientNumOfDay>(DbContext);
                }
                return ClientNumOfDayRepository;
            }
        }

        public EFRepository<ClientPrefix> ClientPrefixs
        {
            get
            {
                if (this.ClientPrefixRepository == null)
                {
                    this.ClientPrefixRepository = new EFRepository<ClientPrefix>(DbContext);
                }
                return ClientPrefixRepository;
            }
        }

        public EFRepository<ZipLongLat> ZipLongLats
        {
            get
            {
                if (this.ZipLongLatRepository == null)
                {
                    this.ZipLongLatRepository = new EFRepository<ZipLongLat>(DbContext);
                }
                return ZipLongLatRepository;
            }
        }

        public EFRepository<State> States
        {
            get{
                if (this.stateReposiroty == null)
                {
                    this.stateReposiroty = new EFRepository<State>(DbContext);
                }
                return stateReposiroty;
            }
        }
        
        public EFRepository<PaymentTerm> PaymentTerms
        {
            get{
                if (this.paymentTermsRepository == null)
                {
                    this.paymentTermsRepository = new EFRepository<PaymentTerm>(DbContext);
                }
                return paymentTermsRepository;
            }
        }

        public EFRepository<TechnologyProvider> TechnologyProvider
        {
            get{
                if (this.techProviderRepository == null)
                {
                    this.techProviderRepository = new EFRepository<TechnologyProvider>(DbContext);
                }
                return techProviderRepository;
            }
        }

        //----------------------------


        #endregion
        
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
