USE [TGF]
GO
/****** Object:  Table [dbo].[VendorGrades]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorGrades](
	[GradeID] [uniqueidentifier] NOT NULL,
	[Grade] [nvarchar](50) NULL,
 CONSTRAINT [PK__VendorGrades__3282355A] PRIMARY KEY CLUSTERED 
(
	[GradeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorInsuranceTypes]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorInsuranceTypes](
	[InsuranceTypeID] [uniqueidentifier] NOT NULL,
	[InsuranceType] [nvarchar](50) NULL,
 CONSTRAINT [PK__VendorTypes__3282355A] PRIMARY KEY CLUSTERED 
(
	[InsuranceTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[VendorInsuranceTypes] ([InsuranceTypeID], [InsuranceType]) VALUES (N'50bd91af-a400-46f8-a0c5-9d37784ee7bf', N'General')
INSERT [dbo].[VendorInsuranceTypes] ([InsuranceTypeID], [InsuranceType]) VALUES (N'9236aaab-880a-4c93-89c0-a1af33626f88', N'Workman''s')
INSERT [dbo].[VendorInsuranceTypes] ([InsuranceTypeID], [InsuranceType]) VALUES (N'06ed2d6e-094c-41ae-9026-a559a69b947e', N'Auto')
/****** Object:  Table [dbo].[VendorsSearch]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorsSearch](
	[RecNo] [int] IDENTITY(1000,1) NOT NULL,
	[MAC] [varchar](50) NULL,
	[Vendnum] [int] NULL,
	[Company] [varchar](100) NULL,
	[Address1] [varchar](100) NULL,
	[Address2] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](2) NULL,
	[Zip] [varchar](10) NULL,
	[DBA] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Emergency] [varchar](20) NULL,
	[Mobile] [varchar](20) NULL,
	[Contact] [varchar](100) NULL,
	[ActiveType] [bit] NULL,
	[W9] [bit] NULL,
	[GLnum] [varchar](20) NULL,
	[ADPnum] [varchar](50) NULL,
	[NetDays] [int] NULL,
	[TaxID] [varchar](50) NULL,
	[Tax1099] [money] NULL,
	[Tax1099YN] [bit] NULL,
	[TermDay] [int] NULL,
	[Terms] [varchar](50) NULL,
	[TermDiscount] [decimal](18, 4) NULL,
	[VendorType] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Comment] [text] NULL,
	[WebUsername] [varchar](50) NULL,
	[WebPassword] [varchar](50) NULL,
	[Insurance1] [varchar](50) NULL,
	[Policy1] [varchar](50) NULL,
	[ExpDate1] [datetime] NULL,
	[Limit1] [money] NULL,
	[Exempt1] [bit] NULL,
	[Insured1] [bit] NULL,
	[Insurance2] [varchar](50) NULL,
	[Policy2] [varchar](50) NULL,
	[ExpDate2] [datetime] NULL,
	[Limit2] [money] NULL,
	[Exempt2] [bit] NULL,
	[Insured2] [bit] NULL,
	[Insurance3] [varchar](50) NULL,
	[Policy3] [varchar](50) NULL,
	[ExpDate3] [datetime] NULL,
	[Limit3] [money] NULL,
	[Exempt3] [bit] NULL,
	[Insured3] [bit] NULL,
	[TerminatedDate] [datetime] NULL,
	[TerminatedEffDate] [datetime] NULL,
	[TerminatedReason] [varchar](100) NULL,
	[TerminatedBy] [varchar](30) NULL,
	[Rehire] [char](1) NULL,
	[Grade] [varchar](50) NULL,
	[CheckCompany] [varchar](100) NULL,
	[CheckAddress1] [varchar](100) NULL,
	[CheckAddress2] [varchar](100) NULL,
	[CheckCity] [varchar](100) NULL,
	[CheckState] [varchar](2) NULL,
	[CheckZip] [varchar](10) NULL,
	[CheckContact] [varchar](50) NULL,
	[CheckPhone] [varchar](20) NULL,
	[ShipCompany] [varchar](100) NULL,
	[ShipAddress1] [varchar](100) NULL,
	[ShipAddress2] [varchar](100) NULL,
	[ShipCity] [varchar](100) NULL,
	[ShipState] [varchar](2) NULL,
	[ShipZip] [varchar](10) NULL,
	[ShipContact] [varchar](50) NULL,
	[ShipPhone] [varchar](20) NULL,
	[Recruiter] [varchar](30) NULL,
	[ReferBy] [varchar](50) NULL,
	[FactorCompany] [varchar](50) NULL,
	[FactorAddress1] [varchar](50) NULL,
	[FactorAddress2] [varchar](50) NULL,
	[FactorCity] [varchar](50) NULL,
	[FactorState] [varchar](2) NULL,
	[FactorZip] [varchar](10) NULL,
	[FactorPhone] [varchar](20) NULL,
	[FactorFax] [varchar](20) NULL,
	[FactorContact] [varchar](50) NULL,
	[Inputdate] [datetime] NULL,
	[Inputby] [varchar](30) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Comment1] [varchar](50) NULL,
	[Distance] [decimal](18, 4) NULL,
	[ServiceCnt] [int] NULL,
	[drivingtime] [varchar](50) NULL,
	[Dormant] [bit] NULL,
	[RateInt] [money] NULL,
	[RateExt] [money] NULL,
	[Province] [varchar](50) NULL,
	[EmailAutoFax] [varchar](100) NULL,
	[PriceCnt] [int] NULL,
	[NP] [int] NULL,
	[SC] [int] NULL,
	[LP] [int] NULL,
	[SV] [int] NULL,
	[TermSV] [int] NULL,
	[TermLP] [int] NULL,
	[TermNP] [int] NULL,
	[TermSC] [int] NULL,
	[SignedContract] [bit] NULL,
	[VPA] [bit] NULL,
	[InsuranceWaiver] [bit] NULL,
	[InsuranceWaiverReason] [varchar](50) NULL,
 CONSTRAINT [PK_VendorsSearch] PRIMARY KEY CLUSTERED 
(
	[RecNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendors_Audit]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendors_Audit](
	[VendorAuditID] [uniqueidentifier] NOT NULL,
	[VendorID] [uniqueidentifier] NOT NULL,
	[Fieldname] [varchar](100) NULL,
	[OldValue] [varchar](255) NULL,
	[NewValue] [varchar](255) NULL,
	[UpdateDate] [datetime] NULL,
	[Username] [varchar](30) NULL,
	[InputBy] [nvarchar](50) NULL,
	[InputDate] [nvarchar](50) NULL,
	[LastModifiedBy] [nvarchar](50) NULL,
	[LastModifieddate] [datetime] NULL,
 CONSTRAINT [PK_Vendors_Audit] PRIMARY KEY CLUSTERED 
(
	[VendorAuditID] ASC,
	[VendorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendors](
	[VendorID] [uniqueidentifier] NOT NULL,
	[Vendnum] [int] NOT NULL,
	[Company] [nvarchar](100) NULL,
	[DBA] [nvarchar](100) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Zip] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[Province] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NULL,
	[PhoneExt] [int] NULL,
	[Fax] [nvarchar](20) NULL,
	[Mobile] [nvarchar](20) NULL,
	[Emergency] [nvarchar](20) NULL,
	[Contact] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[AutoEmail] [text] NULL,
	[Comment] [text] NULL,
	[VendorType] [uniqueidentifier] NULL,
	[GLnum] [nvarchar](50) NULL,
	[TaxID] [nvarchar](50) NULL,
	[NetDays] [int] NULL,
	[CheckTax1099] [bit] NULL,
	[PVA] [bit] NULL,
	[SignedContract] [bit] NULL,
	[CreditCardHolder] [bit] NULL,
	[W9] [bit] NULL,
	[PaymentTerms] [uniqueidentifier] NULL,
	[CashDiscount] [uniqueidentifier] NULL,
	[PricingYear] [nvarchar](50) NULL,
	[Overallrating] [int] NULL,
	[WebAccessUser] [nvarchar](50) NULL,
	[WebAccessPwd] [nvarchar](50) NULL,
	[InputBy] [nvarchar](50) NULL,
	[InputDate] [date] NULL,
	[LastModifiedBy] [nvarchar](50) NULL,
	[LastModifiedDate] [date] NULL,
	[GradeID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Vendors_1] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', 1, N'Edit Nasir 2', N'a', N'a', NULL, N'a', N'AL', NULL, N'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4F360B00 AS Date), NULL, CAST(0x4F360B00 AS Date), NULL)
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'82971b3a-083c-4f05-81d4-39a89f5f01dd', 5, N'c', N'c', N'c', N'c', N'c', NULL, N'12345', N'USA', NULL, N'1234567899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4E360B00 AS Date), NULL, CAST(0x63360B00 AS Date), NULL)
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', 3, N'AEL', N'NEW5', N'Edit 1', N'NEW', N'NEW', N'CA', N'36688', N'USA', NULL, N'3692587412', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4F360B00 AS Date), NULL, CAST(0x62360B00 AS Date), NULL)
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'1675784e-c919-4754-8784-b187836e2fbc', 0, N'sfdsdf', N'sdfsdf', N'sdfsadf', N'sdafsadf', NULL, NULL, NULL, N'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x6D360B00 AS Date), NULL, CAST(0x6D360B00 AS Date), NULL)
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'b4601d22-8dcd-451d-8106-baa240e65205', 2, N'aaa', N'e1sss', N'e1', N'e1', N'e1', NULL, N'36688', N'USA', NULL, N'(234) 234-2343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'41985669', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4F360B00 AS Date), NULL, CAST(0x4F360B00 AS Date), NULL)
/****** Object:  Table [dbo].[VendorRemitToTypes]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorRemitToTypes](
	[VendorRemiToTypeID] [uniqueidentifier] NOT NULL,
	[RemitToTypes] [nvarchar](50) NULL,
	[Inputby] [nvarchar](50) NULL,
	[Inputdate] [date] NULL,
	[LastModifiedby] [nvarchar](50) NULL,
	[LastModifiedDate] [date] NULL,
 CONSTRAINT [PK_VendorRemitToTypes_1] PRIMARY KEY CLUSTERED 
(
	[VendorRemiToTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorTypes]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorTypes](
	[VendorTypeID] [uniqueidentifier] NOT NULL,
	[VendorType] [nchar](10) NULL,
	[InputBy] [nvarchar](50) NULL,
	[InputDate] [date] NULL,
	[LastModifiedBy] [nvarchar](50) NULL,
	[LastModifiedDate] [date] NULL,
 CONSTRAINT [PK_VendorTypes_1] PRIMARY KEY CLUSTERED 
(
	[VendorTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientManagers_Audit]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientManagers_Audit](
	[IDnum] [varchar](50) NULL,
	[Fieldname] [varchar](100) NULL,
	[OldValue] [varchar](255) NULL,
	[NewValue] [varchar](255) NULL,
	[UpdateDate] [datetime] NULL,
	[Username] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClientNumOfDays]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientNumOfDays](
	[NumID] [uniqueidentifier] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[InputDate] [datetime] NULL,
	[InputBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK__ClientNu__E33E89A6086B34A6] PRIMARY KEY CLUSTERED 
(
	[NumID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Division]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Division](
	[DivisionID] [uniqueidentifier] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Prefix] [varchar](10) NULL,
	[GLNum] [varchar](20) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[Zip] [varchar](10) NULL,
	[Phone] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[ComplaintEmail] [varchar](50) NULL,
	[VendorInstructions] [text] NULL,
	[AutofaxNotice] [text] NULL,
	[Inputdate] [datetime] NULL,
	[InputBy] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DivisionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Division] ([DivisionID], [Code], [Prefix], [GLNum], [Address1], [Address2], [City], [State], [Zip], [Phone], [Fax], [ComplaintEmail], [VendorInstructions], [AutofaxNotice], [Inputdate], [InputBy]) VALUES (N'228da25d-917b-487e-9cab-b683ef5caabf', N'Divsion 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Division] ([DivisionID], [Code], [Prefix], [GLNum], [Address1], [Address2], [City], [State], [Zip], [Phone], [Fax], [ComplaintEmail], [VendorInstructions], [AutofaxNotice], [Inputdate], [InputBy]) VALUES (N'76e52f4f-e083-4b95-8121-f8f6f15d8156', N'Division 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Clients]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientID] [uniqueidentifier] NOT NULL,
	[Clinum] [varchar](30) NOT NULL,
	[AcctPrefix] [varchar](20) NULL,
	[Company] [varchar](100) NULL,
	[Address1] [varchar](100) NULL,
	[Address2] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](2) NULL,
	[Zip] [varchar](10) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[PhoneExt] [varchar](5) NULL,
	[Fax] [varchar](20) NULL,
	[Mobile] [varchar](20) NULL,
	[TechnologyProvider] [varchar](50) NULL,
	[ActiveType] [bit] NULL,
	[Email] [varchar](50) NULL,
	[Website] [varchar](50) NULL,
	[DNE] [money] NULL,
	[Inputdate] [datetime] NULL,
	[Inputby] [varchar](30) NULL,
	[CreditHold] [bit] NULL,
	[PaymentTermDays] [int] NULL,
	[AerialPricing] [bit] NULL,
	[InvDays] [int] NULL,
	[PrintInoutSignOff] [bit] NULL,
	[PrintLocID] [bit] NULL,
	[Artist] [varchar](50) NULL,
	[PC] [varchar](50) NULL,
	[CareOff] [bit] NULL,
	[TravelLabor] [bit] NULL,
	[Title] [varchar](50) NULL,
	[LocationNameType] [bit] NULL,
	[CreditLimit] [varchar](20) NULL,
	[LastModifiedBy] [varchar](50) NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Clients] ([ClientID], [Clinum], [AcctPrefix], [Company], [Address1], [Address2], [City], [State], [Zip], [FirstName], [LastName], [Phone], [PhoneExt], [Fax], [Mobile], [TechnologyProvider], [ActiveType], [Email], [Website], [DNE], [Inputdate], [Inputby], [CreditHold], [PaymentTermDays], [AerialPricing], [InvDays], [PrintInoutSignOff], [PrintLocID], [Artist], [PC], [CareOff], [TravelLabor], [Title], [LocationNameType], [CreditLimit], [LastModifiedBy], [LastModifiedDate]) VALUES (N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', N'00001', N'', N'ABC', N'', N'', N'', N'', N'', N'A', N'B', N'', NULL, N'', NULL, N'', 1, N'', N'', 0.0000, CAST(0x0000A11500C92FD5 AS DateTime), N'', NULL, 30, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A11500C92FD5 AS DateTime))
/****** Object:  Table [dbo].[Users]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [uniqueidentifier] NOT NULL,
	[Loginname] [varchar](30) NOT NULL,
	[Displayname] [varchar](50) NULL,
	[Lastname] [varchar](50) NULL,
	[Firstname] [varchar](50) NULL,
	[Password] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[PrinterDefault] [varchar](100) NULL,
	[PrinterCheck] [varchar](100) NULL,
	[UserGroupID] [uniqueidentifier] NOT NULL,
	[Photo] [image] NULL,
	[UserType] [uniqueidentifier] NOT NULL,
	[DailyStoreNote] [bit] NULL,
	[DailyClientNote] [bit] NULL,
	[DailyVendorNote] [bit] NULL,
	[Unscheduled] [bit] NULL,
	[ActiveType] [bit] NULL,
	[Extension] [varchar](20) NULL,
	[Sls] [bit] NULL,
	[ProphesyLocal] [bit] NULL,
	[Email2] [varchar](50) NULL,
	[EmailSig] [text] NULL,
	[Email2Sig] [text] NULL,
	[RecurringReports] [bigint] NULL,
	[NickName] [varchar](10) NULL,
	[LogoffTime] [int] NOT NULL,
	[DoNotLogoff] [bit] NULL,
	[Sysadmin] [bit] NULL,
	[PasswordSecurityQuestion] [nvarchar](100) NULL,
	[PasswordSecurityanswer] [nvarchar](100) NULL,
	[Inputdate] [datetime] NULL,
	[Inputby] [varchar](50) NULL,
	[LastModifieddate] [datetime] NULL,
	[LastModifiedby] [varchar](50) NULL,
 CONSTRAINT [PK__Users__078C1F06] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[Loginname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Users] ([UserID], [Loginname], [Displayname], [Lastname], [Firstname], [Password], [Email], [PrinterDefault], [PrinterCheck], [UserGroupID], [Photo], [UserType], [DailyStoreNote], [DailyClientNote], [DailyVendorNote], [Unscheduled], [ActiveType], [Extension], [Sls], [ProphesyLocal], [Email2], [EmailSig], [Email2Sig], [RecurringReports], [NickName], [LogoffTime], [DoNotLogoff], [Sysadmin], [PasswordSecurityQuestion], [PasswordSecurityanswer], [Inputdate], [Inputby], [LastModifieddate], [LastModifiedby]) VALUES (N'906e50e1-95e3-4820-b30f-0af94cf9cdc1', N'Test', N'Test', N'', N'', N'test', N'', N'', N'', N'b3e37e9b-a61f-4616-8e7f-a554e8c06bbb', NULL, N'428f54a2-70b9-40cc-b616-37e95a520a1a', 0, 0, 0, 0, 1, N'', 0, 0, N'', NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, CAST(0x0000A10E013084DD AS DateTime), N'', NULL, NULL)
INSERT [dbo].[Users] ([UserID], [Loginname], [Displayname], [Lastname], [Firstname], [Password], [Email], [PrinterDefault], [PrinterCheck], [UserGroupID], [Photo], [UserType], [DailyStoreNote], [DailyClientNote], [DailyVendorNote], [Unscheduled], [ActiveType], [Extension], [Sls], [ProphesyLocal], [Email2], [EmailSig], [Email2Sig], [RecurringReports], [NickName], [LogoffTime], [DoNotLogoff], [Sysadmin], [PasswordSecurityQuestion], [PasswordSecurityanswer], [Inputdate], [Inputby], [LastModifieddate], [LastModifiedby]) VALUES (N'47aef40b-6714-46c3-a485-3ea7d8c2343a', N'Admin', N'Admin', N'', N'', N'admin', N'', N'', N'', N'b3e37e9b-a61f-4616-8e7f-a554e8c06bbb', NULL, N'1f928d92-d27c-4bb2-963b-2b9ece728f8e', 0, 0, 0, 0, 1, N'', 0, 0, N'', NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, CAST(0x0000A10E012E5758 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[Users] ([UserID], [Loginname], [Displayname], [Lastname], [Firstname], [Password], [Email], [PrinterDefault], [PrinterCheck], [UserGroupID], [Photo], [UserType], [DailyStoreNote], [DailyClientNote], [DailyVendorNote], [Unscheduled], [ActiveType], [Extension], [Sls], [ProphesyLocal], [Email2], [EmailSig], [Email2Sig], [RecurringReports], [NickName], [LogoffTime], [DoNotLogoff], [Sysadmin], [PasswordSecurityQuestion], [PasswordSecurityanswer], [Inputdate], [Inputby], [LastModifieddate], [LastModifiedby]) VALUES (N'89882005-f77c-4d63-82e9-e22442363fc8', N'Arun', N'Arun', N'', N'', N'arun', N'', N'', N'', N'b3e37e9b-a61f-4616-8e7f-a554e8c06bbb', NULL, N'd1ef7a8e-bcd6-4b27-aa92-13f48426d4d5', 0, 0, 0, 0, 1, N'', 0, 0, N'', NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, CAST(0x0000A10E013084DD AS DateTime), N'', NULL, NULL)
/****** Object:  Table [dbo].[UserLog]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserLog](
	[UserID] [uniqueidentifier] NOT NULL,
	[Loginname] [varchar](50) NULL,
	[MachineName] [varchar](100) NULL,
	[BrowserType] [varchar](30) NULL,
	[OperatingSystem] [varchar](30) NULL,
	[IPAddress] [varchar](50) NULL,
	[ScreenWidth] [int] NULL,
	[ScreenHeight] [int] NULL,
	[LoginDate] [datetime] NOT NULL,
	[LogoffDate] [datetime] NULL,
 CONSTRAINT [PK__UserLog__1788CCAC5EAA0504] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserGroups]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroups](
	[UserGroupID] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__UserGrou__FA5A61E047C69FAC] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TerminationReason]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TerminationReason](
	[TerminationReasonID] [uniqueidentifier] NOT NULL,
	[Code] [varchar](30) NOT NULL,
	[Inputdate] [datetime] NULL,
	[InputBy] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TerminationReasonID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TerminationReason] ([TerminationReasonID], [Code], [Inputdate], [InputBy]) VALUES (N'90335498-b284-4c4f-a071-53f4154df708', N'Reason 2', CAST(0x0000A12500000000 AS DateTime), NULL)
INSERT [dbo].[TerminationReason] ([TerminationReasonID], [Code], [Inputdate], [InputBy]) VALUES (N'c9636648-5722-462d-b368-d7f9a8963780', N'Reason 1', CAST(0x0000A12500000000 AS DateTime), NULL)
/****** Object:  Table [dbo].[TechnologyProvider]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TechnologyProvider](
	[TPID] [uniqueidentifier] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[InputDate] [datetime] NULL,
	[InputBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Technolo__A0726B4A049AA3C2] PRIMARY KEY CLUSTERED 
(
	[TPID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StateTaxable]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[StateTaxable](
	[StateTaxableID] [uniqueidentifier] NOT NULL,
	[StateID] [uniqueidentifier] NOT NULL,
	[Code] [varchar](50) NULL,
	[Inputdate] [datetime] NULL,
	[Inputby] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[StateTaxableID] ASC,
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[States]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[States](
	[StateID] [uniqueidentifier] NOT NULL,
	[State] [char](2) NOT NULL,
	[Name] [varchar](50) NULL,
	[ModifyTax] [bit] NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC,
	[State] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentTerms]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTerms](
	[PaymentTermsID] [uniqueidentifier] NOT NULL,
	[PaymentTerms] [nvarchar](150) NULL,
	[InputBy] [nvarchar](50) NULL,
	[InputDate] [date] NULL,
	[LastModifiedby] [nvarchar](50) NULL,
	[LastModifiedDate] [date] NULL,
 CONSTRAINT [PK_PaymentTerms] PRIMARY KEY CLUSTERED 
(
	[PaymentTermsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Payment Terms is a static table with Vendors' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentTerms'
GO
/****** Object:  Table [dbo].[NoteType]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NoteType](
	[NoteTypeID] [uniqueidentifier] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[NoteType] [varchar](30) NOT NULL,
 CONSTRAINT [PK_NoteType] PRIMARY KEY CLUSTERED 
(
	[NoteTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NoteType] ([NoteTypeID], [Description], [NoteType]) VALUES (N'aef696d1-9f26-4e8a-82cb-1b736ed78b53', N'CLIENT PAY', N'CLIENT PAY')
INSERT [dbo].[NoteType] ([NoteTypeID], [Description], [NoteType]) VALUES (N'89c3dd88-3890-489c-a0ff-1d7bafedcf35', N'AUTO FAX', N'AUTO FAX')
INSERT [dbo].[NoteType] ([NoteTypeID], [Description], [NoteType]) VALUES (N'68b75541-9b4b-45fd-94d1-26ca12115c26', N'PROCEDURE - COLLECTIONS', N'PROCEDURE - COLLECTIONS')
INSERT [dbo].[NoteType] ([NoteTypeID], [Description], [NoteType]) VALUES (N'f85561c4-015e-45ce-b0d5-299d0124fa4a', N'ACCOUNT INFO', N'ACCOUNT INFO')
INSERT [dbo].[NoteType] ([NoteTypeID], [Description], [NoteType]) VALUES (N'3c50867b-9115-48f2-a8c8-2bd4644dc2f5', N'COMPLAINT', N'COMPLAINT')
INSERT [dbo].[NoteType] ([NoteTypeID], [Description], [NoteType]) VALUES (N'aa935637-23a4-4b35-a804-315755b47b3d', N'CLIENT DATA', N'CLIENT DATA')
INSERT [dbo].[NoteType] ([NoteTypeID], [Description], [NoteType]) VALUES (N'ac181c2c-2979-471e-9a1b-5f3c6b53f30d', N'CHARGEBACK', N'CHARGEBACK')
INSERT [dbo].[NoteType] ([NoteTypeID], [Description], [NoteType]) VALUES (N'22985231-63a7-476a-83f8-93eacc9a8b90', N'COLLECTION', N'COLLECTION')
INSERT [dbo].[NoteType] ([NoteTypeID], [Description], [NoteType]) VALUES (N'7629f90c-b9c2-4c18-a0c1-ac2abd6bb7f2', N'BILLING', N'BILLING')
INSERT [dbo].[NoteType] ([NoteTypeID], [Description], [NoteType]) VALUES (N'15f36ab9-18ab-4360-abaf-c166c5a96722', N'DOC REQUEST', N'DOC REQUEST')
/****** Object:  Table [dbo].[DocumentType]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentType](
	[DocumentTypeID] [uniqueidentifier] NOT NULL,
	[RecordNumber] [int] NULL,
	[DocumentType] [varchar](50) NOT NULL,
	[BypassApproval] [int] NULL,
 CONSTRAINT [PK_DocumentType] PRIMARY KEY CLUSTERED 
(
	[DocumentTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DocumentType] ([DocumentTypeID], [RecordNumber], [DocumentType], [BypassApproval]) VALUES (N'7f15be36-fba4-4418-ba01-1790b1154aef', 1007, N'CLIENT RESALE', 2)
INSERT [dbo].[DocumentType] ([DocumentTypeID], [RecordNumber], [DocumentType], [BypassApproval]) VALUES (N'ce299dcb-08f6-4561-a055-238117dcb3c1', 1002, N'W9 FORM', 2)
INSERT [dbo].[DocumentType] ([DocumentTypeID], [RecordNumber], [DocumentType], [BypassApproval]) VALUES (N'4626a9e6-9439-4aa5-9152-2d6cd5a275a1', 1013, N'COMPLETION PHOTO', 2)
INSERT [dbo].[DocumentType] ([DocumentTypeID], [RecordNumber], [DocumentType], [BypassApproval]) VALUES (N'218d7882-5976-4a03-be6d-2ff784303e9c', 1003, N'LOCATION PHOTO', 2)
INSERT [dbo].[DocumentType] ([DocumentTypeID], [RecordNumber], [DocumentType], [BypassApproval]) VALUES (N'64473162-536e-4da2-90f1-3d33bed2d65f', 1006, N'SURVEY PHOTO', 2)
INSERT [dbo].[DocumentType] ([DocumentTypeID], [RecordNumber], [DocumentType], [BypassApproval]) VALUES (N'198e885d-1a04-424c-adf7-9050560b36e4', 1009, N'STORE SURVEY', 2)
INSERT [dbo].[DocumentType] ([DocumentTypeID], [RecordNumber], [DocumentType], [BypassApproval]) VALUES (N'61058718-65af-47d7-aa54-dcbdba90930c', 1012, N'CLIENT QUOTE', 2)
INSERT [dbo].[DocumentType] ([DocumentTypeID], [RecordNumber], [DocumentType], [BypassApproval]) VALUES (N'5f34c6e0-3fb1-4085-80a9-dfd1867067db', 1011, N'CLIENT CHECK', 2)
INSERT [dbo].[DocumentType] ([DocumentTypeID], [RecordNumber], [DocumentType], [BypassApproval]) VALUES (N'9cf9c35e-ae7b-44c6-abf1-e01289721b92', 1005, N'CLIENT CORRESPOND', 2)
INSERT [dbo].[DocumentType] ([DocumentTypeID], [RecordNumber], [DocumentType], [BypassApproval]) VALUES (N'ac98035a-a8d9-4629-81d1-eaff041ef351', 1010, N'CLIENT REMIT', 2)
/****** Object:  Table [dbo].[DocumentLocation]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentLocation](
	[DocumentLocationID] [uniqueidentifier] NOT NULL,
	[RecordNumber] [int] IDENTITY(1001,1) NOT NULL,
	[LocationType] [varchar](50) NULL,
 CONSTRAINT [PK_DocumentLocation] PRIMARY KEY CLUSTERED 
(
	[DocumentLocationID] ASC,
	[RecordNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Document]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Document](
	[DocumentID] [uniqueidentifier] NOT NULL,
	[RecordNumber] [int] NULL,
	[DocumentTypeID] [uniqueidentifier] NULL,
	[FileName] [varchar](100) NULL,
	[FileExtension] [varchar](10) NULL,
	[DateImported] [datetime] NULL,
	[FileData] [image] NULL,
	[ActiveType] [bit] NULL,
	[Comment] [varchar](50) NULL,
	[Public] [bit] NULL,
	[InputBy] [varchar](50) NULL,
	[InputDate] [datetime] NULL,
	[LastModifiedBy] [varchar](50) NULL,
	[LastModifiedDate] [datetime] NULL,
	[DocumentPath] [nvarchar](500) NULL,
 CONSTRAINT [PK_Document_1] PRIMARY KEY CLUSTERED 
(
	[DocumentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClientPrefix]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientPrefix](
	[ClientPrefixID] [uniqueidentifier] NOT NULL,
	[ClientID] [uniqueidentifier] NOT NULL,
	[LocationID] [uniqueidentifier] NOT NULL,
	[Company] [varchar](50) NULL,
	[InputDate] [datetime] NULL,
	[InputBy] [varchar](30) NULL,
 CONSTRAINT [PK__ClientPr__A803D5507B113988] PRIMARY KEY CLUSTERED 
(
	[ClientPrefixID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClientNotifications]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientNotifications](
	[NotificationID] [uniqueidentifier] NOT NULL,
	[ClientID] [uniqueidentifier] NOT NULL,
	[DivisionID] [uniqueidentifier] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[CalendarType] [varchar](50) NOT NULL,
	[InputDate] [datetime] NULL,
	[InputBy] [varchar](50) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedBy] [varchar](50) NULL,
 CONSTRAINT [PK__ClientNo__20CF2E320C3BC58A] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClientNotes]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientNotes](
	[ClientNotesID] [uniqueidentifier] NOT NULL,
	[ClientID] [uniqueidentifier] NOT NULL,
	[NoteType] [varchar](50) NULL,
	[Notes] [text] NULL,
	[Collection] [bit] NULL,
	[InputStatus] [varchar](10) NULL,
	[InputDate] [datetime] NULL,
	[InputBy] [varchar](30) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedBy] [varchar](30) NULL,
 CONSTRAINT [PK__ClientNotes__76A18A26] PRIMARY KEY CLUSTERED 
(
	[ClientNotesID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClientContacts]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientContacts](
	[ClientContactID] [uniqueidentifier] NOT NULL,
	[ClientID] [uniqueidentifier] NOT NULL,
	[Clinum] [varchar](30) NULL,
	[Lastname] [varchar](50) NULL,
	[Firstname] [varchar](50) NULL,
	[Initial] [char](1) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[Zip] [varchar](10) NULL,
	[Phone] [varchar](25) NULL,
	[PhoneExt] [varchar](10) NULL,
	[Fax] [varchar](25) NULL,
	[Pager] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Title] [varchar](50) NULL,
	[Salutation] [varchar](50) NULL,
	[ContactType] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Website] [varchar](100) NULL,
	[Notes] [text] NULL,
	[ReferBy] [varchar](50) NULL,
	[ActiveType] [bit] NULL,
	[InputDate] [datetime] NULL,
	[InputBy] [varchar](30) NULL,
 CONSTRAINT [PK__ClientContacts__4C0C31DC] PRIMARY KEY CLUSTERED 
(
	[ClientContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClientBillTo]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientBillTo](
	[ClientBillToID] [uniqueidentifier] NOT NULL,
	[ClientID] [uniqueidentifier] NOT NULL,
	[Clinum] [varchar](30) NULL,
	[DeliveryOptions] [int] NULL,
	[Division] [varchar](50) NULL,
	[BillCompany] [varchar](50) NULL,
	[BillAddress1] [varchar](50) NULL,
	[BillAddress2] [varchar](50) NULL,
	[BillCity] [varchar](50) NULL,
	[BillState] [varchar](2) NULL,
	[BillZip] [varchar](10) NULL,
	[BillPhone] [varchar](20) NULL,
	[BillFax] [varchar](20) NULL,
	[BillContact] [varchar](50) NULL,
	[BillEmail] [varchar](50) NULL,
	[InputDate] [datetime] NULL,
	[InputBy] [varchar](30) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedBy] [varchar](30) NULL,
	[ActiveType] [bit] NULL,
 CONSTRAINT [PK__ClientBillTo__10B661E4] PRIMARY KEY CLUSTERED 
(
	[ClientBillToID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClientManagers]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientManagers](
	[ClientManagerID] [uniqueidentifier] NOT NULL,
	[ClientID] [uniqueidentifier] NOT NULL,
	[Title] [uniqueidentifier] NOT NULL,
	[Division] [varchar](50) NULL,
	[Operator] [varchar](30) NULL,
	[InputDate] [datetime] NULL,
	[InputBy] [varchar](30) NULL,
 CONSTRAINT [PK__ClientManagers__7192BC46] PRIMARY KEY CLUSTERED 
(
	[ClientManagerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClientInstructions]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientInstructions](
	[ClientInstructionsID] [uniqueidentifier] NOT NULL,
	[ClientID] [uniqueidentifier] NOT NULL,
	[Clinum] [varchar](30) NULL,
	[InstructionType] [varchar](50) NULL,
	[DivisionID] [uniqueidentifier] NULL,
	[Trades] [varchar](50) NULL,
	[Notes] [text] NULL,
	[InputDate] [datetime] NULL,
	[InputBy] [varchar](30) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedBy] [varchar](30) NULL,
	[ActiveType] [bit] NULL,
 CONSTRAINT [PK__ClientInstructio__4EC8A2F6] PRIMARY KEY CLUSTERED 
(
	[ClientInstructionsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ClientInstructions] ([ClientInstructionsID], [ClientID], [Clinum], [InstructionType], [DivisionID], [Trades], [Notes], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy], [ActiveType]) VALUES (N'dc6d8f57-bd70-4fb3-a0aa-5912a0fa0bdc', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', NULL, N'Instruction Type 3', N'228da25d-917b-487e-9cab-b683ef5caabf', N'Trades 3', N'<span class="wysiwyg-font-size-x-large">Testing Instruction ss<br></span>', CAST(0x0000A1150130D34E AS DateTime), NULL, CAST(0x0000A1150133E8F8 AS DateTime), NULL, 1)
/****** Object:  Table [dbo].[VendorTermination]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorTermination](
	[VendorTerminationID] [uniqueidentifier] NOT NULL,
	[VendorID] [uniqueidentifier] NOT NULL,
	[TerminationDate] [datetime] NULL,
	[TerminationEffDate] [datetime] NULL,
	[TerminatedBy] [nvarchar](50) NULL,
	[TerminationReason] [uniqueidentifier] NULL,
	[Rehire] [nchar](1) NULL,
	[Division] [uniqueidentifier] NULL,
	[InputBy] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[LastModifiedBy] [nvarchar](50) NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_VendorTermination_1] PRIMARY KEY CLUSTERED 
(
	[VendorTerminationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'c20ae38e-8542-4272-8616-0a9f6ee09a0e', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', CAST(0x0000A0F40130DF88 AS DateTime), CAST(0x0000A0F40130DF88 AS DateTime), N'aaaa', N'90335498-b284-4c4f-a071-53f4154df708', N'0', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A0F40130E76B AS DateTime), NULL, CAST(0x0000A10301310F82 AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'8c819cca-4e65-4252-8be4-75ef38097c0e', N'b4601d22-8dcd-451d-8106-baa240e65205', CAST(0x0000A0FD01244953 AS DateTime), CAST(0x0000A0FD01244953 AS DateTime), NULL, N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A0FD01244B94 AS DateTime), NULL, CAST(0x0000A0FD01244B94 AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'40b963c8-5baa-43c7-9863-84441a311359', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', CAST(0x0000A0F500000000 AS DateTime), CAST(0x0000A0E300000000 AS DateTime), N'sdfsdf', N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'228da25d-917b-487e-9cab-b683ef5caabf', NULL, CAST(0x0000A0EF012F5ECE AS DateTime), NULL, CAST(0x0000A10801411D92 AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'c8604094-1f65-47fb-b7a1-84c8c346eb7d', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', CAST(0x0000A10301310091 AS DateTime), CAST(0x0000A10301310091 AS DateTime), NULL, N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A1030131021B AS DateTime), NULL, CAST(0x0000A1030131021B AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'f3441862-09a9-499d-b1fb-bfdb526d5ce8', N'b4601d22-8dcd-451d-8106-baa240e65205', CAST(0x0000A1120138BFB8 AS DateTime), CAST(0x0000A1120138BFB8 AS DateTime), N'sdfsdf', N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A1120138C251 AS DateTime), NULL, CAST(0x0000A1120138C251 AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'301ce01f-fc1f-4c16-928b-c1c7e153bae2', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', CAST(0x0000A10400CA0009 AS DateTime), CAST(0x0000A10400CA0009 AS DateTime), NULL, N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A10400CA0233 AS DateTime), NULL, CAST(0x0000A10400CA0233 AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'4db4d01d-3f5d-4cf0-aac4-ddf5957605cc', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', CAST(0x0000A0F4012EBF0A AS DateTime), CAST(0x0000A0F4012EBF0A AS DateTime), N'aaa', N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A0F4012EC6FF AS DateTime), NULL, CAST(0x0000A0F4012EC6FF AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'f4cd5953-c308-4dc1-a647-e4fa7b311867', N'b4601d22-8dcd-451d-8106-baa240e65205', CAST(0x0000A0FD01244F98 AS DateTime), CAST(0x0000A0FD01244F98 AS DateTime), N'sadfsdf', N'c9636648-5722-462d-b368-d7f9a8963780', N'0', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A0FD0124570B AS DateTime), NULL, CAST(0x0000A1120138BE11 AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'04123c4e-72dd-4c0e-9500-ef715c455a22', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', CAST(0x0000A1030130FBD8 AS DateTime), CAST(0x0000A1030130FBD8 AS DateTime), NULL, N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A1030130FE8A AS DateTime), NULL, CAST(0x0000A1030130FE8A AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'7c988eed-f340-47ea-86a8-fa77eee7753d', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', CAST(0x0000A13700000000 AS DateTime), CAST(0x0000A13900000000 AS DateTime), N'Manager', N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'228da25d-917b-487e-9cab-b683ef5caabf', NULL, CAST(0x0000A0F400F5BE9A AS DateTime), NULL, CAST(0x0000A0F400F5DCA3 AS DateTime))
/****** Object:  Table [dbo].[VendorRemitTo]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorRemitTo](
	[VendorRemitToID] [uniqueidentifier] NOT NULL,
	[VendorID] [uniqueidentifier] NOT NULL,
	[Company] [nvarchar](100) NULL,
	[RemitType] [nvarchar](50) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](10) NULL,
	[Zip] [nvarchar](10) NULL,
	[Country] [nvarchar](50) NULL,
	[Province] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[PhoneExt] [int] NULL,
	[Contact] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[InputBy] [nvarchar](50) NULL,
	[InputDate] [date] NULL,
	[LastModifiedBy] [nvarchar](50) NULL,
	[LastModifiedDate] [date] NULL,
 CONSTRAINT [PK_VendorRemitTo_1] PRIMARY KEY CLUSTERED 
(
	[VendorRemitToID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[VendorRemitTo] ([VendorRemitToID], [VendorID], [Company], [RemitType], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Contact], [Email], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'00000000-0000-0000-0000-000000000000', N'82971b3a-083c-4f05-81d4-39a89f5f01dd', N'r1', NULL, N'r1', N'r1', N'r1', NULL, NULL, NULL, N'NY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x63360B00 AS Date))
/****** Object:  Table [dbo].[VendorNotes]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorNotes](
	[VendorNotesID] [uniqueidentifier] NOT NULL,
	[VendorID] [uniqueidentifier] NOT NULL,
	[NoteTypeID] [uniqueidentifier] NULL,
	[Notes] [text] NULL,
	[InputStatus] [varchar](10) NULL,
	[MakePublic] [bit] NULL,
	[InputDate] [datetime] NULL,
	[InputBy] [varchar](30) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedBy] [varchar](30) NULL,
 CONSTRAINT [PK_VendorNotes] PRIMARY KEY CLUSTERED 
(
	[VendorNotesID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'a8f90cc7-ee88-4fa1-baef-3382d67ea6cc', N'b4601d22-8dcd-451d-8106-baa240e65205', N'aa935637-23a4-4b35-a804-315755b47b3d', N'dasdasdasd<br>', NULL, NULL, CAST(0x0000A112012BFEDF AS DateTime), NULL, CAST(0x0000A112012BFEDF AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'b8ce31ae-5795-46bb-8ad9-bb5725ec75f3', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'3c50867b-9115-48f2-a8c8-2bd4644dc2f5', N'This is test <br>', NULL, NULL, CAST(0x0000A112012ACC89 AS DateTime), NULL, CAST(0x0000A112012ACC89 AS DateTime), NULL)
/****** Object:  Table [dbo].[VendorShipTo]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorShipTo](
	[VendorShipToID] [uniqueidentifier] NOT NULL,
	[VendorID] [uniqueidentifier] NOT NULL,
	[Recipient] [nvarchar](100) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](2) NULL,
	[Zip] [nvarchar](10) NULL,
	[Country] [nvarchar](50) NULL,
	[Province] [nvarchar](50) NULL,
	[Phone] [nvarchar](25) NULL,
	[PhoneExt] [nvarchar](10) NULL,
	[Fax] [nvarchar](25) NULL,
	[Email] [nvarchar](100) NULL,
	[InputDate] [datetime] NULL,
	[InputBy] [varchar](30) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedBy] [varchar](30) NULL,
 CONSTRAINT [PK_VendorShipTo] PRIMARY KEY CLUSTERED 
(
	[VendorShipToID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ship To information for the vendor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VendorShipTo'
GO
INSERT [dbo].[VendorShipTo] ([VendorShipToID], [VendorID], [Recipient], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Email], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'9132599a-cf97-4a70-934d-00bc0a59929b', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', N'Test', N'test', N'test', N'test', N'MT', NULL, N'USA', N'test', N'(131) 231-2321', NULL, N'(123) 213-2132', N'test', CAST(0x0000A0F4012EF0E3 AS DateTime), NULL, CAST(0x0000A0F4012EF0E3 AS DateTime), NULL)
INSERT [dbo].[VendorShipTo] ([VendorShipToID], [VendorID], [Recipient], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Email], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'2ab16b41-e2b7-4ed3-a755-0bbdce9141e2', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', N'wwww', N'www', N'www', N'www', N'WI', NULL, N'USA', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A0F4012F0203 AS DateTime), NULL, CAST(0x0000A0F4012F0203 AS DateTime), NULL)
/****** Object:  Table [dbo].[VendorInsurance]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorInsurance](
	[VendorInsuranceID] [uniqueidentifier] NOT NULL,
	[VendorID] [uniqueidentifier] NOT NULL,
	[InsuranceType] [uniqueidentifier] NOT NULL,
	[InsuranceName] [nvarchar](50) NULL,
	[Policynum] [nvarchar](50) NULL,
	[ExpiryDate] [date] NULL,
	[AdditionalInsured] [bit] NULL,
	[Not_onFile] [bit] NULL,
	[InsuranceNotRequired] [bit] NULL,
	[NotRequiredReason] [nvarchar](100) NULL,
	[InputBy] [nvarchar](50) NULL,
	[InputDate] [date] NULL,
	[LastModifiedBy] [nvarchar](50) NULL,
	[LastModifiedDate] [date] NULL,
 CONSTRAINT [PK_VendorInsurance_1] PRIMARY KEY CLUSTERED 
(
	[VendorInsuranceID] ASC,
	[VendorID] ASC,
	[InsuranceType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[VendorInsurance] ([VendorInsuranceID], [VendorID], [InsuranceType], [InsuranceName], [Policynum], [ExpiryDate], [AdditionalInsured], [Not_onFile], [InsuranceNotRequired], [NotRequiredReason], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'01636e14-b564-4e9b-8a97-2498f12eead4', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', N'9236aaab-880a-4c93-89c0-a1af33626f88', N'Company 2', N'ABC432US', CAST(0x38360B00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorInsurance] ([VendorInsuranceID], [VendorID], [InsuranceType], [InsuranceName], [Policynum], [ExpiryDate], [AdditionalInsured], [Not_onFile], [InsuranceNotRequired], [NotRequiredReason], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'11e18758-deca-4456-9706-2548a136e7f7', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', N'06ed2d6e-094c-41ae-9026-a559a69b947e', N'aaa', N'ABC432UW', CAST(0x4F360B00 AS Date), 1, 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorInsurance] ([VendorInsuranceID], [VendorID], [InsuranceType], [InsuranceName], [Policynum], [ExpiryDate], [AdditionalInsured], [Not_onFile], [InsuranceNotRequired], [NotRequiredReason], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'6d93098c-3ad7-4c0b-bd19-3c2cbad0bef7', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', N'50bd91af-a400-46f8-a0c5-9d37784ee7bf', N'Company 1', N'ABC123UN', CAST(0x56360B00 AS Date), 1, NULL, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[VendorInsurance] ([VendorInsuranceID], [VendorID], [InsuranceType], [InsuranceName], [Policynum], [ExpiryDate], [AdditionalInsured], [Not_onFile], [InsuranceNotRequired], [NotRequiredReason], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'f9936d8c-7127-4c86-9be2-e40c0fbf53ad', N'82971b3a-083c-4f05-81d4-39a89f5f01dd', N'50bd91af-a400-46f8-a0c5-9d37784ee7bf', N'HARTFORD UNDERWRITERS INSURANCE', N'14085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorContacts](
	[VendorContactID] [uniqueidentifier] NOT NULL,
	[VendorID] [uniqueidentifier] NOT NULL,
	[Lastname] [nvarchar](50) NULL,
	[Firstname] [nvarchar](50) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](2) NULL,
	[Zip] [nvarchar](10) NULL,
	[Country] [nvarchar](50) NULL,
	[Province] [nvarchar](50) NULL,
	[Phone] [nvarchar](25) NULL,
	[PhoneExt] [nvarchar](10) NULL,
	[Fax] [nvarchar](25) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[ContactType] [varchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Notes] [text] NULL,
	[ActiveType] [bit] NULL,
	[InputDate] [datetime] NULL,
	[InputBy] [varchar](30) NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedBy] [varchar](30) NULL,
 CONSTRAINT [PK__VendorContacts__63E3BB6D] PRIMARY KEY CLUSTERED 
(
	[VendorContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vendor Contacts are the contacts of the vendor.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VendorContacts'
GO
INSERT [dbo].[VendorContacts] ([VendorContactID], [VendorID], [Lastname], [Firstname], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Title], [ContactType], [Email], [Notes], [ActiveType], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'1406f120-f05c-43f1-b507-185c8db40b12', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', N'aaa', N'aaa', N'aaa', NULL, NULL, N'WI', NULL, N'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A0F4012F1141 AS DateTime), NULL, CAST(0x0000A0F4012F1141 AS DateTime), NULL)
INSERT [dbo].[VendorContacts] ([VendorContactID], [VendorID], [Lastname], [Firstname], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Title], [ContactType], [Email], [Notes], [ActiveType], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'792fe117-ca6d-4804-b22d-cf243819c8f9', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', N'test Edit 6', N'6', N'sete', N'etet', N'etet', N'MT', NULL, N'Canada', N'PPP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A0F200089143 AS DateTime), NULL, CAST(0x0000A0F2000891DB AS DateTime), NULL)
/****** Object:  Table [dbo].[VendorCategory]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorCategory](
	[VendorCategoryID] [uniqueidentifier] NOT NULL,
	[VendorID] [uniqueidentifier] NOT NULL,
	[VendorType] [varchar](50) NULL,
	[MasterType] [bit] NULL,
	[Inputdate] [datetime] NULL,
	[inputby] [nvarchar](50) NULL,
 CONSTRAINT [PK__VendorCategory__351DDF8C] PRIMARY KEY CLUSTERED 
(
	[VendorCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorFeedbacks]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorFeedbacks](
	[VendorFeedbackID] [uniqueidentifier] NOT NULL,
	[VendorID] [uniqueidentifier] NOT NULL,
	[FeedbackSubject] [nvarchar](50) NULL,
	[Feedback] [text] NULL,
	[Ratings] [int] NULL,
	[InputBy] [nvarchar](50) NULL,
	[InputDate] [datetime] NULL,
	[LastModifiedBy] [nvarchar](50) NULL,
	[LastModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_VendorFeedbacks_1] PRIMARY KEY CLUSTERED 
(
	[VendorFeedbackID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'a2aaa446-00fe-4962-b320-220bded0e87d', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'New Feedback', N'<span class="wysiwyg-font-size-large"><u>Test feedback</u></span><br>', 3, NULL, CAST(0x0000A10700FC1CD9 AS DateTime), NULL, CAST(0x0000A10700FC1FEA AS DateTime))
INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'751391fc-b87d-4aef-bd36-6d92576ddba2', N'b4601d22-8dcd-451d-8106-baa240e65205', N'test feedback', N'sdfsdfsdf<br>', 4, NULL, CAST(0x0000A11201386D49 AS DateTime), NULL, CAST(0x0000A11201386D49 AS DateTime))
INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'59b912ba-1f96-46a4-a999-930e4e517c70', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'aaaa', N'New test<br>', 3, NULL, CAST(0x0000A1070123211F AS DateTime), NULL, CAST(0x0000A1070123211F AS DateTime))
INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'27a9f145-28ab-4761-b0ee-b623e4420202', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'ABC Feedback', N'New feedback<br>', 5, NULL, CAST(0x0000A107012236A8 AS DateTime), NULL, CAST(0x0000A107012236A8 AS DateTime))
INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'f69e1ec1-a604-499d-99fc-ce2f9988637f', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'Test', N'<span class="wysiwyg-font-size-large">Testing</span><br>', 4, NULL, CAST(0x0000A1070110679B AS DateTime), NULL, CAST(0x0000A1070110679B AS DateTime))
/****** Object:  Table [dbo].[VendorDocuments]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorDocuments](
	[VendorDocumentID] [uniqueidentifier] NOT NULL,
	[DocumentID] [uniqueidentifier] NOT NULL,
	[VendorID] [uniqueidentifier] NOT NULL,
	[Note] [text] NULL,
	[Public] [bit] NULL,
	[InputBy] [nvarchar](50) NOT NULL,
	[InputDate] [datetime] NOT NULL,
 CONSTRAINT [PK_VendorDocuments] PRIMARY KEY CLUSTERED 
(
	[VendorDocumentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDocuments]    Script Date: 11/26/2012 20:50:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDocuments](
	[ClientDocumentID] [uniqueidentifier] NOT NULL,
	[DocumentID] [uniqueidentifier] NOT NULL,
	[ClientID] [uniqueidentifier] NOT NULL,
	[OrderAttachment] [bit] NULL,
	[Public] [bit] NULL,
	[InputBy] [nvarchar](50) NOT NULL,
	[InputDate] [datetime] NOT NULL,
	[Comments] [text] NULL,
 CONSTRAINT [PK__ClientDocs] PRIMARY KEY CLUSTERED 
(
	[ClientDocumentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Default [DF_ClientBillTo_ClientBillToID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF_ClientBillTo_ClientBillToID]  DEFAULT (newid()) FOR [ClientBillToID]
GO
/****** Object:  Default [DF__ClientBil__Clinu__11AA861D]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Clinu__11AA861D]  DEFAULT ('') FOR [Clinum]
GO
/****** Object:  Default [DF__ClientBil__Divis__129EAA56]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Divis__129EAA56]  DEFAULT ('') FOR [Division]
GO
/****** Object:  Default [DF__ClientBil__BillC__1392CE8F]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillC__1392CE8F]  DEFAULT ('') FOR [BillCompany]
GO
/****** Object:  Default [DF__ClientBil__BillA__1486F2C8]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillA__1486F2C8]  DEFAULT ('') FOR [BillAddress1]
GO
/****** Object:  Default [DF__ClientBil__BillA__157B1701]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillA__157B1701]  DEFAULT ('') FOR [BillAddress2]
GO
/****** Object:  Default [DF__ClientBil__BillC__166F3B3A]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillC__166F3B3A]  DEFAULT ('') FOR [BillCity]
GO
/****** Object:  Default [DF__ClientBil__BillS__17635F73]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillS__17635F73]  DEFAULT ('') FOR [BillState]
GO
/****** Object:  Default [DF__ClientBil__BillZ__185783AC]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillZ__185783AC]  DEFAULT ('') FOR [BillZip]
GO
/****** Object:  Default [DF__ClientBil__BillP__194BA7E5]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillP__194BA7E5]  DEFAULT ('') FOR [BillPhone]
GO
/****** Object:  Default [DF__ClientBil__BillF__1A3FCC1E]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillF__1A3FCC1E]  DEFAULT ('') FOR [BillFax]
GO
/****** Object:  Default [DF__ClientBil__BillC__1B33F057]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillC__1B33F057]  DEFAULT ('') FOR [BillContact]
GO
/****** Object:  Default [DF_ClientBillTo_BillEmail]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF_ClientBillTo_BillEmail]  DEFAULT ('') FOR [BillEmail]
GO
/****** Object:  Default [DF__ClientBil__Input__1C281490]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Input__1C281490]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientBil__Input__1D1C38C9]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Input__1D1C38C9]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF__ClientBil__Activ__499AA4DC]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Activ__499AA4DC]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF__ClientCon__Clinu__4D005615]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Clinu__4D005615]  DEFAULT ('') FOR [Clinum]
GO
/****** Object:  Default [DF__ClientCon__Lastn__4DF47A4E]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Lastn__4DF47A4E]  DEFAULT ('') FOR [Lastname]
GO
/****** Object:  Default [DF__ClientCon__First__4EE89E87]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__First__4EE89E87]  DEFAULT ('') FOR [Firstname]
GO
/****** Object:  Default [DF__ClientCon__Initi__4FDCC2C0]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Initi__4FDCC2C0]  DEFAULT ('') FOR [Initial]
GO
/****** Object:  Default [DF__ClientCon__Addre__50D0E6F9]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Addre__50D0E6F9]  DEFAULT ('') FOR [Address1]
GO
/****** Object:  Default [DF__ClientCon__Addre__51C50B32]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Addre__51C50B32]  DEFAULT ('') FOR [Address2]
GO
/****** Object:  Default [DF__ClientCont__City__52B92F6B]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCont__City__52B92F6B]  DEFAULT ('') FOR [City]
GO
/****** Object:  Default [DF__ClientCon__State__53AD53A4]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__State__53AD53A4]  DEFAULT ('') FOR [State]
GO
/****** Object:  Default [DF__ClientConta__Zip__54A177DD]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientConta__Zip__54A177DD]  DEFAULT ('') FOR [Zip]
GO
/****** Object:  Default [DF__ClientCon__Phone__55959C16]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Phone__55959C16]  DEFAULT ('') FOR [Phone]
GO
/****** Object:  Default [DF__ClientCon__Phone__5689C04F]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Phone__5689C04F]  DEFAULT ('') FOR [PhoneExt]
GO
/****** Object:  Default [DF__ClientConta__Fax__577DE488]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientConta__Fax__577DE488]  DEFAULT ('') FOR [Fax]
GO
/****** Object:  Default [DF__ClientCon__Pager__587208C1]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Pager__587208C1]  DEFAULT ('') FOR [Pager]
GO
/****** Object:  Default [DF__ClientCon__Mobil__59662CFA]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Mobil__59662CFA]  DEFAULT ('') FOR [Mobile]
GO
/****** Object:  Default [DF__ClientCon__Title__5A5A5133]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Title__5A5A5133]  DEFAULT ('') FOR [Title]
GO
/****** Object:  Default [DF__ClientCon__Salut__5B4E756C]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Salut__5B4E756C]  DEFAULT ('') FOR [Salutation]
GO
/****** Object:  Default [DF__ClientCon__Conta__5C4299A5]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Conta__5C4299A5]  DEFAULT ('') FOR [ContactType]
GO
/****** Object:  Default [DF__ClientCon__Email__5D36BDDE]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Email__5D36BDDE]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF__ClientCon__Websi__5E2AE217]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Websi__5E2AE217]  DEFAULT ('') FOR [Website]
GO
/****** Object:  Default [DF__ClientCon__Refer__5F1F0650]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Refer__5F1F0650]  DEFAULT ('') FOR [ReferBy]
GO
/****** Object:  Default [DF__ClientCon__Activ__60132A89]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Activ__60132A89]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF__ClientCon__Input__61074EC2]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Input__61074EC2]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientCon__Input__61FB72FB]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Input__61FB72FB]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF_ClientInstructions_ClientInstructionsID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF_ClientInstructions_ClientInstructionsID]  DEFAULT (newid()) FOR [ClientInstructionsID]
GO
/****** Object:  Default [DF__ClientIns__Clinu__4FBCC72F]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__ClientIns__Clinu__4FBCC72F]  DEFAULT ('') FOR [Clinum]
GO
/****** Object:  Default [DF__ClientInst__Type__50B0EB68]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__ClientInst__Type__50B0EB68]  DEFAULT ('') FOR [InstructionType]
GO
/****** Object:  Default [DF_ClientInstructions_Division]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF_ClientInstructions_Division]  DEFAULT ('') FOR [DivisionID]
GO
/****** Object:  Default [DF__ClientIns__Input__51A50FA1]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__ClientIns__Input__51A50FA1]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientIns__Input__529933DA]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__ClientIns__Input__529933DA]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF__clientins__Activ__34949AFE]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__clientins__Activ__34949AFE]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF__ClientMan__Divis__737B04B8]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientManagers] ADD  CONSTRAINT [DF__ClientMan__Divis__737B04B8]  DEFAULT ('') FOR [Division]
GO
/****** Object:  Default [DF__ClientMan__Opera__746F28F1]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientManagers] ADD  CONSTRAINT [DF__ClientMan__Opera__746F28F1]  DEFAULT ('') FOR [Operator]
GO
/****** Object:  Default [DF__ClientMan__Input__76577163]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientManagers] ADD  CONSTRAINT [DF__ClientMan__Input__76577163]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientMan__Input__774B959C]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientManagers] ADD  CONSTRAINT [DF__ClientMan__Input__774B959C]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF__ClientMan__Updat__5729AA24]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientManagers_Audit] ADD  CONSTRAINT [DF__ClientMan__Updat__5729AA24]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF__ClientNot__NoteT__7889D298]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF__ClientNot__NoteT__7889D298]  DEFAULT ('') FOR [NoteType]
GO
/****** Object:  Default [DF_ClientNotes_Collection]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF_ClientNotes_Collection]  DEFAULT ((0)) FOR [Collection]
GO
/****** Object:  Default [DF__ClientNot__Input__797DF6D1]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF__ClientNot__Input__797DF6D1]  DEFAULT ('') FOR [InputStatus]
GO
/****** Object:  Default [DF__ClientNot__Input__7A721B0A]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF__ClientNot__Input__7A721B0A]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientNot__Input__7B663F43]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF__ClientNot__Input__7B663F43]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF_ClientNotifications_NotificationID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientNotifications] ADD  CONSTRAINT [DF_ClientNotifications_NotificationID]  DEFAULT (newid()) FOR [NotificationID]
GO
/****** Object:  Default [DF_ClientPrefix_ClientPrefixID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientPrefix] ADD  CONSTRAINT [DF_ClientPrefix_ClientPrefixID]  DEFAULT (newid()) FOR [ClientPrefixID]
GO
/****** Object:  Default [DF__ClientPre__Input__7DEDA633]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientPrefix] ADD  CONSTRAINT [DF__ClientPre__Input__7DEDA633]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF_Clients_ClientID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_ClientID]  DEFAULT (newid()) FOR [ClientID]
GO
/****** Object:  Default [DF__Clients__Clinum__5AEE82B9]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Clinum__5AEE82B9]  DEFAULT ('') FOR [Clinum]
GO
/****** Object:  Default [DF_Clients_AcctPrefix]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_AcctPrefix]  DEFAULT ('') FOR [AcctPrefix]
GO
/****** Object:  Default [DF__Clients__Company__5BE2A6F2]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Company__5BE2A6F2]  DEFAULT ('') FOR [Company]
GO
/****** Object:  Default [DF__Clients__Address__5CD6CB2B]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Address__5CD6CB2B]  DEFAULT ('') FOR [Address1]
GO
/****** Object:  Default [DF__Clients__Address__5DCAEF64]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Address__5DCAEF64]  DEFAULT ('') FOR [Address2]
GO
/****** Object:  Default [DF__Clients__City__5EBF139D]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__City__5EBF139D]  DEFAULT ('') FOR [City]
GO
/****** Object:  Default [DF__Clients__State__5FB337D6]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__State__5FB337D6]  DEFAULT ('') FOR [State]
GO
/****** Object:  Default [DF__Clients__Zip__60A75C0F]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Zip__60A75C0F]  DEFAULT ('') FOR [Zip]
GO
/****** Object:  Default [DF__Clients__firstname__619B8048]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__firstname__619B8048]  DEFAULT ('') FOR [FirstName]
GO
/****** Object:  Default [DF__Clients__lastname__619B8048]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__lastname__619B8048]  DEFAULT ('') FOR [LastName]
GO
/****** Object:  Default [DF__Clients__Phone__628FA481]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Phone__628FA481]  DEFAULT ('') FOR [Phone]
GO
/****** Object:  Default [DF__Clients__Fax__6383C8BA]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Fax__6383C8BA]  DEFAULT ('') FOR [Fax]
GO
/****** Object:  Default [DF_Clients_Provider]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Provider]  DEFAULT ('') FOR [TechnologyProvider]
GO
/****** Object:  Default [DF__Clients__ActiveT__6477ECF3]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__ActiveT__6477ECF3]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF_Clients_Email]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Email]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF_Clients_Website]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Website]  DEFAULT ('') FOR [Website]
GO
/****** Object:  Default [DF_Clients_DNE]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_DNE]  DEFAULT ((0)) FOR [DNE]
GO
/****** Object:  Default [DF__Clients__Inputda__68487DD7]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Inputda__68487DD7]  DEFAULT (getdate()) FOR [Inputdate]
GO
/****** Object:  Default [DF__Clients__Inputby__693CA210]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Inputby__693CA210]  DEFAULT ('') FOR [Inputby]
GO
/****** Object:  Default [DF_Clients_TermDays]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_TermDays]  DEFAULT ((30)) FOR [PaymentTermDays]
GO
/****** Object:  Default [DF_Clients_InvDays]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_InvDays]  DEFAULT ((0)) FOR [InvDays]
GO
/****** Object:  Default [DF__Clients__PrintIn__2DF28A67]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__PrintIn__2DF28A67]  DEFAULT ((0)) FOR [PrintInoutSignOff]
GO
/****** Object:  Default [DF__Clients__PrintLo__0ECEE4C9]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__PrintLo__0ECEE4C9]  DEFAULT ((1)) FOR [PrintLocID]
GO
/****** Object:  Default [DF_Clients_LastModifiedDate]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO
/****** Object:  Default [DF_Division_DivisionID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Division] ADD  CONSTRAINT [DF_Division_DivisionID]  DEFAULT (newid()) FOR [DivisionID]
GO
/****** Object:  Default [DF__Document__Commen__3F3159AB]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF__Document__Commen__3F3159AB]  DEFAULT ('') FOR [Comment]
GO
/****** Object:  Default [DF__Document__Public__40257DE4]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF__Document__Public__40257DE4]  DEFAULT ((0)) FOR [Public]
GO
/****** Object:  Default [DF_DocumentType_DocumentTypeID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[DocumentType] ADD  CONSTRAINT [DF_DocumentType_DocumentTypeID]  DEFAULT (newid()) FOR [DocumentTypeID]
GO
/****** Object:  Default [DF_NoteType_NoteTypeID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[NoteType] ADD  CONSTRAINT [DF_NoteType_NoteTypeID]  DEFAULT (newid()) FOR [NoteTypeID]
GO
/****** Object:  Default [DF__notetype__Locati__7EF7A45C]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[NoteType] ADD  CONSTRAINT [DF__notetype__Locati__7EF7A45C]  DEFAULT ('') FOR [NoteType]
GO
/****** Object:  Default [DF__States__ModifyTa__245D67DE]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[States] ADD  DEFAULT ((0)) FOR [ModifyTax]
GO
/****** Object:  Default [DF__StateTaxa__Input__25518C17]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[StateTaxable] ADD  DEFAULT (getdate()) FOR [Inputdate]
GO
/****** Object:  Default [DF__StateTaxa__Input__2645B050]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[StateTaxable] ADD  DEFAULT ('') FOR [Inputby]
GO
/****** Object:  Default [DF_TerminationReason_TerminationReasonID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[TerminationReason] ADD  CONSTRAINT [DF_TerminationReason_TerminationReasonID]  DEFAULT (newid()) FOR [TerminationReasonID]
GO
/****** Object:  Default [DF__UserLog__LoginDa__618671AF]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[UserLog] ADD  CONSTRAINT [DF__UserLog__LoginDa__618671AF]  DEFAULT (getdate()) FOR [LoginDate]
GO
/****** Object:  Default [DF__Users__Displayna__0880433F]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Displayna__0880433F]  DEFAULT ('') FOR [Displayname]
GO
/****** Object:  Default [DF__Users__Lastname__09746778]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Lastname__09746778]  DEFAULT ('') FOR [Lastname]
GO
/****** Object:  Default [DF__Users__Firstname__0A688BB1]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Firstname__0A688BB1]  DEFAULT ('') FOR [Firstname]
GO
/****** Object:  Default [DF__Users__Password__0B5CAFEA]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Password__0B5CAFEA]  DEFAULT ('') FOR [Password]
GO
/****** Object:  Default [DF__Users__Email__0C50D423]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Email__0C50D423]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF__Users__PrinterDe__0D44F85C]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__PrinterDe__0D44F85C]  DEFAULT ('') FOR [PrinterDefault]
GO
/****** Object:  Default [DF__Users__PrinterCh__0E391C95]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__PrinterCh__0E391C95]  DEFAULT ('') FOR [PrinterCheck]
GO
/****** Object:  Default [DF__Users__DailyStor__13F1F5EB]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__DailyStor__13F1F5EB]  DEFAULT ((0)) FOR [DailyStoreNote]
GO
/****** Object:  Default [DF__Users__DailyClie__14E61A24]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__DailyClie__14E61A24]  DEFAULT ((0)) FOR [DailyClientNote]
GO
/****** Object:  Default [DF__Users__DailyVend__15DA3E5D]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__DailyVend__15DA3E5D]  DEFAULT ((0)) FOR [DailyVendorNote]
GO
/****** Object:  Default [DF__Users__Unschedul__16CE6296]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Unschedul__16CE6296]  DEFAULT ((0)) FOR [Unscheduled]
GO
/****** Object:  Default [DF__users__ActiveTyp__162F4418]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__users__ActiveTyp__162F4418]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF__users__Extension__41B98BF2]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__users__Extension__41B98BF2]  DEFAULT ('') FOR [Extension]
GO
/****** Object:  Default [DF__users__Sls__1D121728]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__users__Sls__1D121728]  DEFAULT ((0)) FOR [Sls]
GO
/****** Object:  Default [DF__Users__ProphesyL__5AD97420]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__ProphesyL__5AD97420]  DEFAULT ((0)) FOR [ProphesyLocal]
GO
/****** Object:  Default [DF__Users__Email2__5BCD9859]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Email2__5BCD9859]  DEFAULT ('') FOR [Email2]
GO
/****** Object:  Default [DF__Users__Inputdate__17C286CF]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Inputdate__17C286CF]  DEFAULT (getdate()) FOR [Inputdate]
GO
/****** Object:  Default [DF__Users__Inputby__18B6AB08]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Inputby__18B6AB08]  DEFAULT ('') FOR [Inputby]
GO
/****** Object:  Default [DF_VendorContacts_VendorID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorContacts] ADD  CONSTRAINT [DF_VendorContacts_VendorID]  DEFAULT (newid()) FOR [VendorContactID]
GO
/****** Object:  Default [DF_VendorContacts_LastModifiedDate]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorContacts] ADD  CONSTRAINT [DF_VendorContacts_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO
/****** Object:  Default [DF_VendorInsurance_VendorInsuranceID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorInsurance] ADD  CONSTRAINT [DF_VendorInsurance_VendorInsuranceID]  DEFAULT (newid()) FOR [VendorInsuranceID]
GO
/****** Object:  Default [DF_VendorInsuranceTypes_InsuranceTypeID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorInsuranceTypes] ADD  CONSTRAINT [DF_VendorInsuranceTypes_InsuranceTypeID]  DEFAULT (newid()) FOR [InsuranceTypeID]
GO
/****** Object:  Default [DF_Vendors_VendorID]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_VendorID]  DEFAULT (newid()) FOR [VendorID]
GO
/****** Object:  Default [DF_Vendors_LastModifiedDate]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO
/****** Object:  Default [DF__Vendors_A__Updat__56D4A469]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Vendors_Audit] ADD  CONSTRAINT [DF__Vendors_A__Updat__56D4A469]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_VendorsSearch_Dormant]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF_VendorsSearch_Dormant]  DEFAULT ((0)) FOR [Dormant]
GO
/****** Object:  Default [DF__VendorsSearc__NP__3123FCCD]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__NP__3123FCCD]  DEFAULT ((0)) FOR [NP]
GO
/****** Object:  Default [DF__VendorsSearc__SC__32182106]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__SC__32182106]  DEFAULT ((0)) FOR [SC]
GO
/****** Object:  Default [DF__VendorsSearc__LP__330C453F]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__LP__330C453F]  DEFAULT ((0)) FOR [LP]
GO
/****** Object:  Default [DF__VendorsSearc__SV__34006978]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__SV__34006978]  DEFAULT ((0)) FOR [SV]
GO
/****** Object:  ForeignKey [FK_ClientBillTo_Clients]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientBillTo]  WITH CHECK ADD  CONSTRAINT [FK_ClientBillTo_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientBillTo] CHECK CONSTRAINT [FK_ClientBillTo_Clients]
GO
/****** Object:  ForeignKey [FK_ClientContacts_Clients]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientContacts]  WITH CHECK ADD  CONSTRAINT [FK_ClientContacts_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientContacts] CHECK CONSTRAINT [FK_ClientContacts_Clients]
GO
/****** Object:  ForeignKey [FK_ClientDocuments_Clients]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ClientDocuments_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientDocuments] CHECK CONSTRAINT [FK_ClientDocuments_Clients]
GO
/****** Object:  ForeignKey [FK_ClientDocuments_Document]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ClientDocuments_Document] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[Document] ([DocumentID])
GO
ALTER TABLE [dbo].[ClientDocuments] CHECK CONSTRAINT [FK_ClientDocuments_Document]
GO
/****** Object:  ForeignKey [FK_ClientInstructions_Clients]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientInstructions]  WITH CHECK ADD  CONSTRAINT [FK_ClientInstructions_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientInstructions] CHECK CONSTRAINT [FK_ClientInstructions_Clients]
GO
/****** Object:  ForeignKey [FK_ClientInstructions_Division]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientInstructions]  WITH CHECK ADD  CONSTRAINT [FK_ClientInstructions_Division] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[ClientInstructions] CHECK CONSTRAINT [FK_ClientInstructions_Division]
GO
/****** Object:  ForeignKey [FK_ClientManagers_Clients]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientManagers]  WITH CHECK ADD  CONSTRAINT [FK_ClientManagers_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientManagers] CHECK CONSTRAINT [FK_ClientManagers_Clients]
GO
/****** Object:  ForeignKey [FK_ClientNotes_Clients]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientNotes]  WITH CHECK ADD  CONSTRAINT [FK_ClientNotes_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientNotes] CHECK CONSTRAINT [FK_ClientNotes_Clients]
GO
/****** Object:  ForeignKey [FK_ClientNotifications_Clients]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientNotifications]  WITH CHECK ADD  CONSTRAINT [FK_ClientNotifications_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientNotifications] CHECK CONSTRAINT [FK_ClientNotifications_Clients]
GO
/****** Object:  ForeignKey [FK_ClientNotifications_Division]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientNotifications]  WITH CHECK ADD  CONSTRAINT [FK_ClientNotifications_Division] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[ClientNotifications] CHECK CONSTRAINT [FK_ClientNotifications_Division]
GO
/****** Object:  ForeignKey [FK_ClientPrefix_Clients]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[ClientPrefix]  WITH CHECK ADD  CONSTRAINT [FK_ClientPrefix_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientPrefix] CHECK CONSTRAINT [FK_ClientPrefix_Clients]
GO
/****** Object:  ForeignKey [FK_Document_DocumentType]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_DocumentType] FOREIGN KEY([DocumentTypeID])
REFERENCES [dbo].[DocumentType] ([DocumentTypeID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_DocumentType]
GO
/****** Object:  ForeignKey [FK_VendorCategory_Vendors]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorCategory]  WITH CHECK ADD  CONSTRAINT [FK_VendorCategory_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorCategory] CHECK CONSTRAINT [FK_VendorCategory_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorContacts_Vendors]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorContacts]  WITH CHECK ADD  CONSTRAINT [FK_VendorContacts_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorContacts] CHECK CONSTRAINT [FK_VendorContacts_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorDocuments_Document]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorDocuments]  WITH CHECK ADD  CONSTRAINT [FK_VendorDocuments_Document] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[Document] ([DocumentID])
GO
ALTER TABLE [dbo].[VendorDocuments] CHECK CONSTRAINT [FK_VendorDocuments_Document]
GO
/****** Object:  ForeignKey [FK_VendorDocuments_Vendors]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorDocuments]  WITH CHECK ADD  CONSTRAINT [FK_VendorDocuments_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorDocuments] CHECK CONSTRAINT [FK_VendorDocuments_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorFeedbacks_Vendors]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorFeedbacks]  WITH CHECK ADD  CONSTRAINT [FK_VendorFeedbacks_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorFeedbacks] CHECK CONSTRAINT [FK_VendorFeedbacks_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorInsurance_Vendors]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorInsurance]  WITH CHECK ADD  CONSTRAINT [FK_VendorInsurance_Vendors] FOREIGN KEY([InsuranceType])
REFERENCES [dbo].[VendorInsuranceTypes] ([InsuranceTypeID])
GO
ALTER TABLE [dbo].[VendorInsurance] CHECK CONSTRAINT [FK_VendorInsurance_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorInsurance_Vendors1]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorInsurance]  WITH CHECK ADD  CONSTRAINT [FK_VendorInsurance_Vendors1] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorInsurance] CHECK CONSTRAINT [FK_VendorInsurance_Vendors1]
GO
/****** Object:  ForeignKey [FK_VendorNotes_NoteType]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorNotes]  WITH CHECK ADD  CONSTRAINT [FK_VendorNotes_NoteType] FOREIGN KEY([NoteTypeID])
REFERENCES [dbo].[NoteType] ([NoteTypeID])
GO
ALTER TABLE [dbo].[VendorNotes] CHECK CONSTRAINT [FK_VendorNotes_NoteType]
GO
/****** Object:  ForeignKey [FK_VendorNotes_Vendors]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorNotes]  WITH CHECK ADD  CONSTRAINT [FK_VendorNotes_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorNotes] CHECK CONSTRAINT [FK_VendorNotes_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorRemitTo_Vendors]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorRemitTo]  WITH CHECK ADD  CONSTRAINT [FK_VendorRemitTo_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorRemitTo] CHECK CONSTRAINT [FK_VendorRemitTo_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorShipTo_Vendors]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorShipTo]  WITH CHECK ADD  CONSTRAINT [FK_VendorShipTo_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorShipTo] CHECK CONSTRAINT [FK_VendorShipTo_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorTermination_Division]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorTermination]  WITH CHECK ADD  CONSTRAINT [FK_VendorTermination_Division] FOREIGN KEY([Division])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[VendorTermination] CHECK CONSTRAINT [FK_VendorTermination_Division]
GO
/****** Object:  ForeignKey [FK_VendorTermination_TerminationReason]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorTermination]  WITH CHECK ADD  CONSTRAINT [FK_VendorTermination_TerminationReason] FOREIGN KEY([TerminationReason])
REFERENCES [dbo].[TerminationReason] ([TerminationReasonID])
GO
ALTER TABLE [dbo].[VendorTermination] CHECK CONSTRAINT [FK_VendorTermination_TerminationReason]
GO
/****** Object:  ForeignKey [FK_VendorTermination_Vendors]    Script Date: 11/26/2012 20:50:59 ******/
ALTER TABLE [dbo].[VendorTermination]  WITH CHECK ADD  CONSTRAINT [FK_VendorTermination_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorTermination] CHECK CONSTRAINT [FK_VendorTermination_Vendors]
GO
