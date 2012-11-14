USE [master]
GO
/****** Object:  Database [TGF]    Script Date: 10/24/2012 5:35:18 PM ******/
CREATE DATABASE [TGF] ON  PRIMARY 
( NAME = N'TGF', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TGF.mdf' , SIZE = 31744KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TGF_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TGF_log.ldf' , SIZE = 6272KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TGF] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TGF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TGF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TGF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TGF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TGF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TGF] SET ARITHABORT OFF 
GO
ALTER DATABASE [TGF] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TGF] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TGF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TGF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TGF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TGF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TGF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TGF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TGF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TGF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TGF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TGF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TGF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TGF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TGF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TGF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TGF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TGF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TGF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TGF] SET  MULTI_USER 
GO
ALTER DATABASE [TGF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TGF] SET DB_CHAINING OFF 
GO
USE [TGF]
GO
/****** Object:  Table [dbo].[Division]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[States]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StateTaxable]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TerminationReason]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorCategory]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorFeedbacks]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorGrades]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorInsurance]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorInsuranceTypes]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorNotes]    Script Date: 10/24/2012 5:35:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorNotes](
	[VendorNotesID] [uniqueidentifier] NOT NULL,
	[VendorID] [uniqueidentifier] NOT NULL,
	[NoteType] [varchar](50) NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorRemitTo]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorRemitToTypes]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendors_Audit]    Script Date: 10/24/2012 5:35:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendors_Audit](
	[VendorAuditID] [uniqueidentifier] NOT NULL,
	[Vendnum] [int] NOT NULL,
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
	[Vendnum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorShipTo]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorsSearch]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendorTermination]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VendorTypes]    Script Date: 10/24/2012 5:35:18 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Division] ([DivisionID], [Code], [Prefix], [GLNum], [Address1], [Address2], [City], [State], [Zip], [Phone], [Fax], [ComplaintEmail], [VendorInstructions], [AutofaxNotice], [Inputdate], [InputBy]) VALUES (N'228da25d-917b-487e-9cab-b683ef5caabf', N'Divsion 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Division] ([DivisionID], [Code], [Prefix], [GLNum], [Address1], [Address2], [City], [State], [Zip], [Phone], [Fax], [ComplaintEmail], [VendorInstructions], [AutofaxNotice], [Inputdate], [InputBy]) VALUES (N'76e52f4f-e083-4b95-8121-f8f6f15d8156', N'Division 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TerminationReason] ([TerminationReasonID], [Code], [Inputdate], [InputBy]) VALUES (N'90335498-b284-4c4f-a071-53f4154df708', N'Reason 2', CAST(0x0000A12500000000 AS DateTime), NULL)
GO
INSERT [dbo].[TerminationReason] ([TerminationReasonID], [Code], [Inputdate], [InputBy]) VALUES (N'c9636648-5722-462d-b368-d7f9a8963780', N'Reason 1', CAST(0x0000A12500000000 AS DateTime), NULL)
GO
INSERT [dbo].[VendorContacts] ([VendorContactID], [VendorID], [Lastname], [Firstname], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Title], [ContactType], [Email], [Notes], [ActiveType], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'792fe117-ca6d-4804-b22d-cf243819c8f9', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', N'test Edit 6', N'6', N'sete', N'etet', N'etet', N'MT', NULL, N'Canada', N'PPP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A0F200089143 AS DateTime), NULL, CAST(0x0000A0F2000891DB AS DateTime), NULL)
GO
INSERT [dbo].[VendorInsurance] ([VendorInsuranceID], [VendorID], [InsuranceType], [InsuranceName], [Policynum], [ExpiryDate], [AdditionalInsured], [Not_onFile], [InsuranceNotRequired], [NotRequiredReason], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'01636e14-b564-4e9b-8a97-2498f12eead4', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', N'9236aaab-880a-4c93-89c0-a1af33626f88', N'Company 2', N'ABC432US', CAST(0x38360B00 AS Date), NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorInsurance] ([VendorInsuranceID], [VendorID], [InsuranceType], [InsuranceName], [Policynum], [ExpiryDate], [AdditionalInsured], [Not_onFile], [InsuranceNotRequired], [NotRequiredReason], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'6d93098c-3ad7-4c0b-bd19-3c2cbad0bef7', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', N'50bd91af-a400-46f8-a0c5-9d37784ee7bf', N'Company 1', N'ABC123UN', CAST(0x56360B00 AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorInsurance] ([VendorInsuranceID], [VendorID], [InsuranceType], [InsuranceName], [Policynum], [ExpiryDate], [AdditionalInsured], [Not_onFile], [InsuranceNotRequired], [NotRequiredReason], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'f9936d8c-7127-4c86-9be2-e40c0fbf53ad', N'82971b3a-083c-4f05-81d4-39a89f5f01dd', N'50bd91af-a400-46f8-a0c5-9d37784ee7bf', N'HARTFORD UNDERWRITERS INSURANCE', N'14085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[VendorInsuranceTypes] ([InsuranceTypeID], [InsuranceType]) VALUES (N'50bd91af-a400-46f8-a0c5-9d37784ee7bf', N'General')
GO
INSERT [dbo].[VendorInsuranceTypes] ([InsuranceTypeID], [InsuranceType]) VALUES (N'9236aaab-880a-4c93-89c0-a1af33626f88', N'Workman''s')
GO
INSERT [dbo].[VendorInsuranceTypes] ([InsuranceTypeID], [InsuranceType]) VALUES (N'06ed2d6e-094c-41ae-9026-a559a69b947e', N'Auto')
GO
INSERT [dbo].[VendorRemitTo] ([VendorRemitToID], [VendorID], [Company], [RemitType], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Contact], [Email], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'00000000-0000-0000-0000-000000000000', N'82971b3a-083c-4f05-81d4-39a89f5f01dd', N'r1', NULL, N'r1', N'r1', N'r1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4E360B00 AS Date), NULL, CAST(0x4E360B00 AS Date))
GO
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', 1, N'Edit Nasir 2', N'a', N'a', NULL, N'a', N'AL', NULL, N'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4F360B00 AS Date), NULL, CAST(0x4F360B00 AS Date), NULL)
GO
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'82971b3a-083c-4f05-81d4-39a89f5f01dd', 5, N'c', N'c', N'c', N'c', N'c', NULL, N'12345', N'USA', NULL, N'(123) 456-7899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4E360B00 AS Date), NULL, CAST(0x4E360B00 AS Date), NULL)
GO
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'e7de3974-4f25-407b-a42b-48b2abe016bd', 4, N'b Edit 1', N'b', N'b', N'b', N'b', NULL, NULL, N'USA', NULL, N'(123) 456-7890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4E360B00 AS Date), NULL, CAST(0x4E360B00 AS Date), NULL)
GO
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', 3, N'1', N'NEW', N'Edit 1', N'NEW', N'NEW', N'CA', N'36688', N'USA', NULL, N'(369) 258-7412', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4E360B00 AS Date), NULL, CAST(0x4E360B00 AS Date), NULL)
GO
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'b4601d22-8dcd-451d-8106-baa240e65205', 2, N'Edit 1', N'e1', N'e1', N'e1', N'e1', NULL, N'36688', N'USA', NULL, N'(123) 456-7890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'41985669', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4E360B00 AS Date), NULL, CAST(0x4E360B00 AS Date), NULL)
GO
INSERT [dbo].[VendorShipTo] ([VendorShipToID], [VendorID], [Recipient], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Email], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'9132599a-cf97-4a70-934d-00bc0a59929b', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', N'test 2', N'test', N'test', N'test', N'WI', NULL, N'USA', N'test', NULL, NULL, NULL, N'test', CAST(0x0000A0EF0131F1CC AS DateTime), NULL, CAST(0x0000A0EF0131F1CC AS DateTime), NULL)
GO
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'40b963c8-5baa-43c7-9863-84441a311359', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', CAST(0x0000A0F500000000 AS DateTime), CAST(0x0000A0E300000000 AS DateTime), NULL, N'90335498-b284-4c4f-a071-53f4154df708', N'0', N'228da25d-917b-487e-9cab-b683ef5caabf', NULL, CAST(0x0000A0EF012F5ECE AS DateTime), NULL, CAST(0x0000A0F400F517CE AS DateTime))
GO
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'7c988eed-f340-47ea-86a8-fa77eee7753d', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', CAST(0x0000A13700000000 AS DateTime), CAST(0x0000A13900000000 AS DateTime), N'Manager', N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'228da25d-917b-487e-9cab-b683ef5caabf', NULL, CAST(0x0000A0F400F5BE9A AS DateTime), NULL, CAST(0x0000A0F400F5DCA3 AS DateTime))
GO
ALTER TABLE [dbo].[Division] ADD  CONSTRAINT [DF_Division_DivisionID]  DEFAULT (newid()) FOR [DivisionID]
GO
ALTER TABLE [dbo].[States] ADD  DEFAULT ((0)) FOR [ModifyTax]
GO
ALTER TABLE [dbo].[StateTaxable] ADD  DEFAULT (getdate()) FOR [Inputdate]
GO
ALTER TABLE [dbo].[StateTaxable] ADD  DEFAULT ('') FOR [Inputby]
GO
ALTER TABLE [dbo].[TerminationReason] ADD  CONSTRAINT [DF_TerminationReason_TerminationReasonID]  DEFAULT (newid()) FOR [TerminationReasonID]
GO
ALTER TABLE [dbo].[VendorContacts] ADD  CONSTRAINT [DF_VendorContacts_VendorID]  DEFAULT (newid()) FOR [VendorContactID]
GO
ALTER TABLE [dbo].[VendorContacts] ADD  CONSTRAINT [DF_VendorContacts_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [dbo].[VendorInsurance] ADD  CONSTRAINT [DF_VendorInsurance_VendorInsuranceID]  DEFAULT (newid()) FOR [VendorInsuranceID]
GO
ALTER TABLE [dbo].[VendorInsuranceTypes] ADD  CONSTRAINT [DF_VendorInsuranceTypes_InsuranceTypeID]  DEFAULT (newid()) FOR [InsuranceTypeID]
GO
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_VendorID]  DEFAULT (newid()) FOR [VendorID]
GO
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [dbo].[Vendors_Audit] ADD  CONSTRAINT [DF__Vendors_A__Updat__56D4A469]  DEFAULT (getdate()) FOR [UpdateDate]
GO
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF_VendorsSearch_Dormant]  DEFAULT ((0)) FOR [Dormant]
GO
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__NP__3123FCCD]  DEFAULT ((0)) FOR [NP]
GO
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__SC__32182106]  DEFAULT ((0)) FOR [SC]
GO
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__LP__330C453F]  DEFAULT ((0)) FOR [LP]
GO
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__SV__34006978]  DEFAULT ((0)) FOR [SV]
GO
ALTER TABLE [dbo].[VendorCategory]  WITH CHECK ADD  CONSTRAINT [FK_VendorCategory_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorCategory] CHECK CONSTRAINT [FK_VendorCategory_Vendors]
GO
ALTER TABLE [dbo].[VendorContacts]  WITH CHECK ADD  CONSTRAINT [FK_VendorContacts_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorContacts] CHECK CONSTRAINT [FK_VendorContacts_Vendors]
GO
ALTER TABLE [dbo].[VendorFeedbacks]  WITH CHECK ADD  CONSTRAINT [FK_VendorFeedbacks_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorFeedbacks] CHECK CONSTRAINT [FK_VendorFeedbacks_Vendors]
GO
ALTER TABLE [dbo].[VendorInsurance]  WITH CHECK ADD  CONSTRAINT [FK_VendorInsurance_Vendors] FOREIGN KEY([InsuranceType])
REFERENCES [dbo].[VendorInsuranceTypes] ([InsuranceTypeID])
GO
ALTER TABLE [dbo].[VendorInsurance] CHECK CONSTRAINT [FK_VendorInsurance_Vendors]
GO
ALTER TABLE [dbo].[VendorInsurance]  WITH CHECK ADD  CONSTRAINT [FK_VendorInsurance_Vendors1] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorInsurance] CHECK CONSTRAINT [FK_VendorInsurance_Vendors1]
GO
ALTER TABLE [dbo].[VendorNotes]  WITH CHECK ADD  CONSTRAINT [FK_VendorNotes_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorNotes] CHECK CONSTRAINT [FK_VendorNotes_Vendors]
GO
ALTER TABLE [dbo].[VendorRemitTo]  WITH CHECK ADD  CONSTRAINT [FK_VendorRemitTo_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorRemitTo] CHECK CONSTRAINT [FK_VendorRemitTo_Vendors]
GO
ALTER TABLE [dbo].[VendorShipTo]  WITH CHECK ADD  CONSTRAINT [FK_VendorShipTo_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorShipTo] CHECK CONSTRAINT [FK_VendorShipTo_Vendors]
GO
ALTER TABLE [dbo].[VendorTermination]  WITH CHECK ADD  CONSTRAINT [FK_VendorTermination_Division] FOREIGN KEY([Division])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[VendorTermination] CHECK CONSTRAINT [FK_VendorTermination_Division]
GO
ALTER TABLE [dbo].[VendorTermination]  WITH CHECK ADD  CONSTRAINT [FK_VendorTermination_TerminationReason] FOREIGN KEY([TerminationReason])
REFERENCES [dbo].[TerminationReason] ([TerminationReasonID])
GO
ALTER TABLE [dbo].[VendorTermination] CHECK CONSTRAINT [FK_VendorTermination_TerminationReason]
GO
ALTER TABLE [dbo].[VendorTermination]  WITH CHECK ADD  CONSTRAINT [FK_VendorTermination_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorTermination] CHECK CONSTRAINT [FK_VendorTermination_Vendors]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vendor Contacts are the contacts of the vendor.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VendorContacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ship To information for the vendor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VendorShipTo'
GO
USE [master]
GO
ALTER DATABASE [TGF] SET  READ_WRITE 
GO
