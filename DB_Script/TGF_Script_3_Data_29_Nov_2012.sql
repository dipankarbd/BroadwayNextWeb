USE [TGF]
GO
/****** Object:  Table [dbo].[VendorGrades]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[VendorInsuranceTypes]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[VendorsSearch]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[ZipLongLat]    Script Date: 11/29/2012 18:54:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZipLongLat](
	[ID] [int] NOT NULL,
	[Zip] [nvarchar](10) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](2) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
 CONSTRAINT [PK_ZipLongLat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110659, N'00501', N'HOLTSVILLE', N'NY', 40.8154, -73.0456)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110660, N'00544', N'HOLTSVILLE', N'NY', 40.8154, -73.0456)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110661, N'00601', N'ADJUNTAS', N'PR', 18.1642, -66.7227)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110662, N'00602', N'AGUADA', N'PR', 18.3974, -67.1679)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110663, N'00603', N'AGUADILLA', N'PR', 18.4409, -67.1508)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110664, N'00604', N'AGUADILLA', N'PR', 18.4295, -67.1547)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110665, N'00605', N'AGUADILLA', N'PR', 18.4289, -67.1538)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110666, N'00606', N'MARICAO', N'PR', 18.1825, -66.9805)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110667, N'00610', N'ANASCO', N'PR', 18.2859, -67.1412)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110668, N'00611', N'ANGELES', N'PR', 18.2856, -66.9698)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110669, N'00612', N'ARECIBO', N'PR', 18.4739, -66.7295)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110670, N'00613', N'ARECIBO', N'PR', 18.4744, -66.7163)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110671, N'00614', N'ARECIBO', N'PR', 18.4744, -66.7163)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110672, N'00616', N'BAJADERO', N'PR', 18.4287, -66.6836)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110673, N'00617', N'BARCELONETA', N'PR', 18.4548, -66.5389)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110674, N'00622', N'BOQUERON', N'PR', 18.0265, -67.1727)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110675, N'00623', N'CABO ROJO', N'PR', 18.0849, -67.1633)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110676, N'00624', N'PENUELAS', N'PR', 18.0112, -66.3514)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110677, N'00627', N'CAMUY', N'PR', 18.4865, -66.8455)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110678, N'00631', N'CASTANER', N'PR', 18.1639, -66.7245)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110679, N'00636', N'ROSARIO', N'PR', 18.1647, -67.0797)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110680, N'00637', N'SABANA GRANDE', N'PR', 18.0664, -66.9568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110681, N'00638', N'CIALES', N'PR', 18.3392, -66.4685)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110682, N'00641', N'UTUADO', N'PR', 18.2676, -66.7005)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110683, N'00646', N'DORADO', N'PR', 18.4598, -66.2592)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110684, N'00647', N'ENSENADA', N'PR', 17.9715, -66.9368)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110685, N'00650', N'FLORIDA', N'PR', 18.3645, -66.5673)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110686, N'00652', N'GARROCHALES', N'PR', 18.4598, -66.6117)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110687, N'00653', N'GUANICA', N'PR', 17.9714, -66.9064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110688, N'00656', N'GUAYANILLA', N'PR', 18.0206, -66.7913)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110689, N'00659', N'HATILLO', N'PR', 18.4851, -66.8257)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110690, N'00660', N'HORMIGUEROS', N'PR', 18.1684, -67.1306)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110691, N'00662', N'ISABELA', N'PR', 18.4951, -67.0273)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110692, N'00664', N'JAYUYA', N'PR', 18.2205, -66.6046)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110693, N'00667', N'LAJAS', N'PR', 18.0409, -67.0495)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110694, N'00669', N'LARES', N'PR', 18.2912, -66.8528)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110695, N'00670', N'LAS MARIAS', N'PR', 18.2539, -66.9876)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110696, N'00674', N'MANATI', N'PR', 18.4259, -66.4717)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110697, N'00676', N'MOCA', N'PR', 18.3946, -67.1158)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110698, N'00677', N'RINCON', N'PR', 18.3427, -67.2504)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110699, N'00678', N'QUEBRADILLAS', N'PR', 18.4738, -66.9364)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110700, N'00680', N'MAYAGUEZ', N'PR', 18.1211, -67.0824)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110701, N'00681', N'MAYAGUEZ', N'PR', 18.1211, -67.0824)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110702, N'00682', N'MAYAGUEZ', N'PR', 18.1211, -67.0853)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110703, N'00683', N'SAN GERMAN', N'PR', 18.0846, -67.0463)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110704, N'00685', N'SAN SEBASTIAN', N'PR', 18.3413, -66.991)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110705, N'00687', N'MOROVIS', N'PR', 18.3346, -66.4186)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110706, N'00688', N'SABANA HOYOS', N'PR', 18.4356, -66.6145)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110707, N'00690', N'SAN ANTONIO', N'PR', 18.4943, -67.0987)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110708, N'00692', N'VEGA ALTA', N'PR', 18.4144, -66.3319)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110709, N'00693', N'VEGA BAJA', N'PR', 18.4061, -66.3012)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110710, N'00694', N'VEGA BAJA', N'PR', 18.4465, -66.3884)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110711, N'00698', N'YAUCO', N'PR', 18.0306, -66.8507)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110712, N'00703', N'AGUAS BUENAS', N'PR', 18.2584, -66.1068)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110713, N'00704', N'AGUIRRE', N'PR', 18.2501, -66.1032)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110714, N'00705', N'AIBONITO', N'PR', 18.1439, -66.2725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110715, N'00707', N'MAUNABO', N'PR', 18.0098, -65.8982)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110716, N'00714', N'ARROYO', N'PR', 17.9678, -66.0617)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110717, N'00715', N'MERCEDITA', N'PR', 18.1144, -66.8568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110718, N'00716', N'PONCE', N'PR', 18.0093, -66.6209)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110719, N'00717', N'PONCE', N'PR', 18.0055, -66.6209)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110720, N'00718', N'NAGUABO', N'PR', 18.2147, -65.7358)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110721, N'00719', N'NARANJITO', N'PR', 18.3023, -66.246)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110722, N'00720', N'OROCOVIS', N'PR', 18.2314, -66.3905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110723, N'00721', N'PALMER', N'PR', 18.3018, -66.08)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110724, N'00723', N'PATILLAS', N'PR', 18.0086, -66.0144)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110725, N'00725', N'CAGUAS', N'PR', 18.2357, -66.0369)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110726, N'00726', N'CAGUAS', N'PR', 18.2364, -66.0489)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110727, N'00727', N'CAGUAS', N'PR', 18.2351, -66.0374)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110728, N'00728', N'PONCE', N'PR', 18.0073, -66.5912)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110729, N'00729', N'CANOVANAS', N'PR', 18.3747, -65.9126)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110730, N'00730', N'PONCE', N'PR', 18.0152, -66.6246)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110731, N'00731', N'PONCE', N'PR', 18.0179, -66.6229)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110732, N'00732', N'PONCE', N'PR', 18.0133, -66.6146)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110733, N'00733', N'PONCE', N'PR', 18.0133, -66.6146)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110734, N'00734', N'PONCE', N'PR', 18.0133, -66.6146)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110735, N'00735', N'CEIBA', N'PR', 18.2667, -65.6476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110736, N'00736', N'CAYEY', N'PR', 18.1193, -66.1642)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110737, N'00737', N'CAYEY', N'PR', 18.1138, -66.1667)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110738, N'00738', N'FAJARDO', N'PR', 18.3304, -65.6573)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110739, N'00739', N'CIDRA', N'PR', 18.1743, -66.1581)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110740, N'00740', N'PUERTO REAL', N'PR', 18.3201, -65.6502)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110741, N'00741', N'PUNTA SANTIAGO', N'PR', 18.1684, -65.7486)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110742, N'00742', N'ROOSEVELT ROADS', N'PR', 18.2666, -65.6482)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110743, N'00744', N'RIO BLANCO', N'PR', 18.2202, -65.7902)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110744, N'00745', N'RIO GRANDE', N'PR', 18.3817, -65.8302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110745, N'00751', N'SALINAS', N'PR', 17.9903, -66.2815)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110746, N'00754', N'SAN LORENZO', N'PR', 18.1909, -65.9618)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110747, N'00757', N'SANTA ISABEL', N'PR', 17.9676, -66.4046)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110748, N'00765', N'VIEQUES', N'PR', 18.1015, -65.4768)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110749, N'00766', N'VILLALBA', N'PR', 18.1304, -66.4926)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110750, N'00767', N'YABUCOA', N'PR', 18.0547, -65.8738)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110751, N'00769', N'COAMO', N'PR', 18.0836, -66.3566)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110752, N'00771', N'LAS PIEDRAS', N'PR', 18.1853, -65.8667)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110753, N'00772', N'LOIZA', N'PR', 18.2022, -65.86)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110754, N'00773', N'LUQUILLO', N'PR', 18.3744, -65.7168)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110755, N'00775', N'CULEBRA', N'PR', 18.3053, -65.3114)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110756, N'00777', N'JUNCOS', N'PR', 18.2339, -65.9218)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110757, N'00778', N'GURABO', N'PR', 18.2551, -65.9776)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110758, N'00780', N'COTO LAUREL', N'PR', 18.0474, -66.5517)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110759, N'00782', N'COMERIO', N'PR', 18.2202, -66.2266)
GO
print 'Processed 100 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110760, N'00783', N'COROZAL', N'PR', 18.3429, -66.3176)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110761, N'00784', N'GUAYAMA', N'PR', 17.9849, -66.1175)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110762, N'00785', N'GUAYAMA', N'PR', 17.98, -66.1101)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110763, N'00786', N'LA PLATA', N'PR', 18.1564, -66.2336)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110764, N'00791', N'HUMACAO', N'PR', 18.1494, -65.8294)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110765, N'00792', N'HUMACAO', N'PR', 18.1519, -65.8279)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110766, N'00794', N'BARRANQUITAS', N'PR', 18.1808, -66.2956)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110767, N'00795', N'JUANA DIAZ', N'PR', 18.0561, -66.5063)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110768, N'00801', N'ST THOMAS', N'VI', 18.3436, -64.9314)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110769, N'00802', N'ST THOMAS', N'VI', 18.3436, -64.9322)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110770, N'00803', N'ST THOMAS', N'VI', 18.3436, -64.9314)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110771, N'00804', N'ST THOMAS', N'VI', 18.3436, -64.9314)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110772, N'00805', N'ST THOMAS', N'VI', 18.3436, -64.9314)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110773, N'00820', N'CHRISTIANSTED', N'VI', 17.7473, -64.7041)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110774, N'00821', N'CHRISTIANSTED', N'VI', 17.7488, -64.7039)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110775, N'00822', N'CHRISTIANSTED', N'VI', 17.7488, -64.7039)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110776, N'00823', N'CHRISTIANSTED', N'VI', 17.7488, -64.7039)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110777, N'00824', N'CHRISTIANSTED', N'VI', 17.7488, -64.7039)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110778, N'00830', N'ST JOHN', N'VI', 18.3328, -64.7926)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110779, N'00831', N'ST JOHN', N'VI', 18.3333, -64.7943)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110780, N'00840', N'FREDERIKSTED', N'VI', 17.7135, -64.8827)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110781, N'00841', N'FREDERIKSTED', N'VI', 17.7147, -64.8818)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110782, N'00850', N'KINGSHILL', N'VI', 17.7193, -64.8336)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110783, N'00851', N'KINGSHILL', N'VI', 17.7253, -64.7836)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110784, N'00901', N'SAN JUAN', N'PR', 18.4697, -66.1179)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110785, N'00902', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110786, N'00906', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110787, N'00907', N'SAN JUAN', N'PR', 18.4559, -66.0777)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110788, N'00908', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110789, N'00909', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110790, N'00910', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110791, N'00911', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110792, N'00912', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110793, N'00913', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110794, N'00914', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110795, N'00915', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110796, N'00916', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110797, N'00917', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110798, N'00918', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110799, N'00919', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110800, N'00920', N'SAN JUAN', N'PR', 18.408, -66.0933)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110801, N'00921', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110802, N'00922', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110803, N'00923', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110804, N'00924', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110805, N'00925', N'SAN JUAN', N'PR', 18.4067, -66.0993)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110806, N'00926', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110807, N'00927', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110808, N'00928', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110809, N'00929', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110810, N'00930', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110811, N'00931', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110812, N'00933', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110813, N'00934', N'FORT BUCHANAN', N'PR', 18.4601, -66.1102)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110814, N'00935', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110815, N'00936', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110816, N'00937', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110817, N'00938', N'SAN JUAN', N'PR', 18.4551, -66.0548)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110818, N'00939', N'SAN JUAN', N'PR', 18.4683, -66.1061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110819, N'00940', N'SAN JUAN', N'PR', 18.4551, -66.0548)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110820, N'00949', N'TOA BAJA', N'PR', 18.4519, -66.1817)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110821, N'00950', N'TOA BAJA', N'PR', 18.4456, -66.26)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110822, N'00951', N'TOA BAJA', N'PR', 18.4456, -66.26)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110823, N'00952', N'SABANA SECA', N'PR', 18.4257, -66.1885)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110824, N'00953', N'TOA ALTA', N'PR', 18.3905, -66.2487)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110825, N'00954', N'TOA ALTA', N'PR', 18.3905, -66.2487)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110826, N'00955', N'SAN JUAN', N'PR', 18.4697, -66.1179)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110827, N'00956', N'BAYAMON', N'PR', 18.4008, -66.1589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110828, N'00957', N'BAYAMON', N'PR', 18.4008, -66.1589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110829, N'00958', N'BAYAMON', N'PR', 18.4008, -66.1589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110830, N'00959', N'BAYAMON', N'PR', 18.4008, -66.1589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110831, N'00960', N'BAYAMON', N'PR', 18.4008, -66.1589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110832, N'00961', N'BAYAMON', N'PR', 18.4008, -66.1589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110833, N'00962', N'CATANO', N'PR', 18.1103, -66.17)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110834, N'00963', N'CATANO', N'PR', 18.1103, -66.17)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110835, N'00965', N'GUAYNABO', N'PR', 18.3658, -66.0928)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110836, N'00966', N'GUAYNABO', N'PR', 18.3596, -66.1116)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110837, N'00968', N'GUAYNABO', N'PR', 18.4683, -66.1064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110838, N'00969', N'GUAYNABO', N'PR', 18.3596, -66.1116)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110839, N'00970', N'GUAYNABO', N'PR', 18.3596, -66.1116)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110840, N'00971', N'GUAYNABO', N'PR', 18.3596, -66.1116)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110841, N'00975', N'SAN JUAN', N'PR', 18.4683, -66.1064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110842, N'00976', N'TRUJILLO ALTO', N'PR', 18.3569, -66.0247)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110843, N'00977', N'TRUJILLO ALTO', N'PR', 18.3569, -66.0076)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110844, N'00978', N'SAINT JUST CONTRACT', N'PR', 18.3703, -66.0123)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110845, N'00979', N'CAROLINA', N'PR', 18.4683, -66.1064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110846, N'00981', N'CAROLINA', N'PR', 18.4683, -66.1064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110847, N'00982', N'CAROLINA', N'PR', 18.4683, -66.1064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110848, N'00983', N'CAROLINA', N'PR', 18.4298, -65.9816)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110849, N'00984', N'CAROLINA', N'PR', 18.3828, -65.9578)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110850, N'00985', N'CAROLINA', N'PR', 18.3988, -65.9524)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110851, N'00986', N'CAROLINA', N'PR', 18.3828, -65.9578)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110852, N'00987', N'CAROLINA', N'PR', 18.3828, -65.9578)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110853, N'00988', N'CAROLINA', N'PR', 18.3828, -65.9578)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110854, N'01001', N'AGAWAM', N'MA', 42.0626, -72.6252)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110855, N'01002', N'AMHERST', N'MA', 42.3773, -72.4671)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110856, N'01003', N'AMHERST', N'MA', 42.3752, -72.5212)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110857, N'01004', N'AMHERST', N'MA', 42.3736, -72.5209)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110858, N'01005', N'BARRE', N'MA', 42.4202, -72.106)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110859, N'01007', N'BELCHERTOWN', N'MA', 42.2771, -72.4022)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110860, N'01008', N'BLANDFORD', N'MA', 42.1887, -72.9556)
GO
print 'Processed 200 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110861, N'01009', N'BONDSVILLE', N'MA', 42.2075, -72.3496)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110862, N'01010', N'BRIMFIELD', N'MA', 42.1143, -72.1854)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110863, N'01011', N'CHESTER', N'MA', 42.2802, -72.999)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110864, N'01012', N'CHESTERFIELD', N'MA', 42.39, -72.8444)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110865, N'01013', N'CHICOPEE', N'MA', 42.1705, -72.6067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110866, N'01014', N'CHICOPEE', N'MA', 42.1486, -72.6085)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110867, N'01020', N'CHICOPEE', N'MA', 42.1808, -72.5635)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110868, N'01021', N'CHICOPEE', N'MA', 42.1486, -72.6085)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110869, N'01022', N'CHICOPEE', N'MA', 42.1968, -72.5424)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110870, N'01026', N'CUMMINGTON', N'MA', 42.4538, -72.924)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110871, N'01027', N'EASTHAMPTON', N'MA', 42.2952, -72.7431)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110872, N'01028', N'EAST LONGMEADOW', N'MA', 42.0595, -72.4991)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110873, N'01029', N'EAST OTIS', N'MA', 42.1613, -73.0508)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110874, N'01030', N'FEEDING HILLS', N'MA', 42.0669, -72.6778)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110875, N'01031', N'GILBERTVILLE', N'MA', 42.3533, -72.2125)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110876, N'01032', N'GOSHEN', N'MA', 42.4675, -72.8362)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110877, N'01033', N'GRANBY', N'MA', 42.2613, -72.5027)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110878, N'01034', N'GRANVILLE', N'MA', 42.0855, -72.9568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110879, N'01035', N'HADLEY', N'MA', 42.3561, -72.5677)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110880, N'01036', N'HAMPDEN', N'MA', 42.0636, -72.4157)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110881, N'01037', N'HARDWICK', N'MA', 42.3503, -72.2001)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110882, N'01038', N'HATFIELD', N'MA', 42.3856, -72.6078)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110883, N'01039', N'HAYDENVILLE', N'MA', 42.4048, -72.6898)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110884, N'01040', N'HOLYOKE', N'MA', 42.212, -72.6423)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110885, N'01041', N'HOLYOKE', N'MA', 42.2043, -72.6167)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110886, N'01050', N'HUNTINGTON', N'MA', 42.3047, -72.879)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110887, N'01053', N'LEEDS', N'MA', 42.3532, -72.7129)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110888, N'01054', N'LEVERETT', N'MA', 42.4786, -72.4839)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110889, N'01056', N'LUDLOW', N'MA', 42.1924, -72.4583)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110890, N'01057', N'MONSON', N'MA', 42.089, -72.3226)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110891, N'01059', N'NORTH AMHERST', N'MA', 42.3738, -72.5205)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110892, N'01060', N'NORTHAMPTON', N'MA', 42.323, -72.6707)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110893, N'01061', N'NORTHAMPTON', N'MA', 42.3251, -72.6418)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110894, N'01062', N'FLORENCE', N'MA', 42.3249, -72.6582)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110895, N'01063', N'NORTHAMPTON', N'MA', 42.3251, -72.6418)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110896, N'01066', N'NORTH HATFIELD', N'MA', 42.4107, -72.6253)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110897, N'01068', N'OAKHAM', N'MA', 42.35, -72.0468)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110898, N'01069', N'PALMER', N'MA', 42.1774, -72.2801)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110899, N'01070', N'PLAINFIELD', N'MA', 42.5178, -72.9242)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110900, N'01071', N'RUSSELL', N'MA', 42.16, -72.86)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110901, N'01072', N'SHUTESBURY', N'MA', 42.4779, -72.4152)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110902, N'01073', N'SOUTHAMPTON', N'MA', 42.231, -72.7376)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110903, N'01074', N'SOUTH BARRE', N'MA', 42.3824, -72.0998)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110904, N'01075', N'SOUTH HADLEY', N'MA', 42.2564, -72.5775)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110905, N'01077', N'SOUTHWICK', N'MA', 42.055, -72.7789)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110906, N'01079', N'THORNDIKE', N'MA', 42.1968, -72.3271)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110907, N'01080', N'THREE RIVERS', N'MA', 42.1755, -72.3784)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110908, N'01081', N'WALES', N'MA', 42.0621, -72.2143)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110909, N'01082', N'WARE', N'MA', 42.2735, -72.2794)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110910, N'01083', N'WARREN', N'MA', 42.1986, -72.1719)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110911, N'01084', N'WEST CHESTERFIELD', N'MA', 42.4062, -72.8896)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110912, N'01085', N'WESTFIELD', N'MA', 42.1558, -72.7734)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110913, N'01086', N'WESTFIELD', N'MA', 42.1253, -72.7501)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110914, N'01088', N'WEST HATFIELD', N'MA', 42.3927, -72.6478)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110915, N'01089', N'WEST SPRINGFIELD', N'MA', 42.125, -72.6501)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110916, N'01090', N'WEST SPRINGFIELD', N'MA', 42.1068, -72.6206)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110917, N'01092', N'WEST WARREN', N'MA', 42.2001, -72.2038)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110918, N'01093', N'WHATELY', N'MA', 42.4399, -72.6353)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110919, N'01094', N'WHEELWRIGHT', N'MA', 42.3517, -72.1405)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110920, N'01095', N'WILBRAHAM', N'MA', 42.1269, -72.4307)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110921, N'01096', N'WILLIAMSBURG', N'MA', 42.4143, -72.7787)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110922, N'01097', N'WORONOCO', N'MA', 42.1594, -72.8751)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110923, N'01098', N'WORTHINGTON', N'MA', 42.3846, -72.9405)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110924, N'01101', N'SPRINGFIELD', N'MA', 42.1015, -72.5905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110925, N'01102', N'SPRINGFIELD', N'MA', 42.1015, -72.5905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110926, N'01103', N'SPRINGFIELD', N'MA', 42.1025, -72.5916)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110927, N'01104', N'SPRINGFIELD', N'MA', 42.1337, -72.5666)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110928, N'01105', N'SPRINGFIELD', N'MA', 42.0995, -72.5786)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110929, N'01106', N'LONGMEADOW', N'MA', 42.0487, -72.5696)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110930, N'01107', N'SPRINGFIELD', N'MA', 42.1213, -72.6057)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110931, N'01108', N'SPRINGFIELD', N'MA', 42.0811, -72.5578)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110932, N'01109', N'SPRINGFIELD', N'MA', 42.1176, -72.5486)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110933, N'01111', N'SPRINGFIELD', N'MA', 42.1015, -72.5905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110934, N'01114', N'SPRINGFIELD', N'MA', 42.1015, -72.5905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110935, N'01115', N'SPRINGFIELD', N'MA', 42.1015, -72.5905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110936, N'01116', N'LONGMEADOW', N'MA', 42.0647, -72.5131)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110937, N'01118', N'SPRINGFIELD', N'MA', 42.095, -72.5238)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110938, N'01119', N'SPRINGFIELD', N'MA', 42.1247, -72.5112)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110939, N'01128', N'SPRINGFIELD', N'MA', 42.0951, -72.4878)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110940, N'01129', N'SPRINGFIELD', N'MA', 42.122, -72.4869)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110941, N'01133', N'SPRINGFIELD', N'MA', 42.1015, -72.5905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110942, N'01138', N'SPRINGFIELD', N'MA', 42.1015, -72.5905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110943, N'01139', N'SPRINGFIELD', N'MA', 42.1015, -72.5905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110944, N'01144', N'SPRINGFIELD', N'MA', 42.1032, -72.5916)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110945, N'01151', N'INDIAN ORCHARD', N'MA', 42.1526, -72.5046)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110946, N'01152', N'SPRINGFIELD', N'MA', 42.1028, -72.5921)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110947, N'01199', N'SPRINGFIELD', N'MA', 42.1015, -72.5905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110948, N'01201', N'PITTSFIELD', N'MA', 42.4608, -73.282)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110949, N'01202', N'PITTSFIELD', N'MA', 42.4501, -73.2456)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110950, N'01203', N'PITTSFIELD', N'MA', 42.4501, -73.2456)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110951, N'01220', N'ADAMS', N'MA', 42.6258, -73.0997)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110952, N'01222', N'ASHLEY FALLS', N'MA', 42.0575, -73.316)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110953, N'01223', N'BECKET', N'MA', 42.3623, -73.1505)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110954, N'01224', N'BERKSHIRE', N'MA', 42.5125, -73.1936)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110955, N'01225', N'CHESHIRE', N'MA', 42.5613, -73.1573)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110956, N'01226', N'DALTON', N'MA', 42.4825, -73.1481)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110957, N'01227', N'DALTON', N'MA', 42.4739, -73.1667)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110958, N'01229', N'GLENDALE', N'MA', 42.2836, -73.3445)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110959, N'01230', N'GREAT BARRINGTON', N'MA', 42.1779, -73.3332)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110960, N'01235', N'HINSDALE', N'MA', 42.4301, -73.0667)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110961, N'01236', N'HOUSATONIC', N'MA', 42.2774, -73.3774)
GO
print 'Processed 300 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110962, N'01237', N'LANESBORO', N'MA', 42.5714, -73.2564)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110963, N'01238', N'LEE', N'MA', 42.2764, -73.1899)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110964, N'01240', N'LENOX', N'MA', 42.3695, -73.2774)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110965, N'01242', N'LENOX DALE', N'MA', 42.3364, -73.2458)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110966, N'01243', N'MIDDLEFIELD', N'MA', 42.3514, -73.0159)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110967, N'01244', N'MILL RIVER', N'MA', 42.0772, -73.1627)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110968, N'01245', N'MONTEREY', N'MA', 42.2031, -73.2274)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110969, N'01247', N'NORTH ADAMS', N'MA', 42.6996, -73.0936)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110970, N'01252', N'NORTH EGREMONT', N'MA', 42.1967, -73.4386)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110971, N'01253', N'OTIS', N'MA', 42.2038, -73.0917)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110972, N'01254', N'RICHMOND', N'MA', 42.3819, -73.3666)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110973, N'01255', N'SANDISFIELD', N'MA', 42.1051, -73.1239)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110974, N'01256', N'SAVOY', N'MA', 42.5897, -73.0162)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110975, N'01257', N'SHEFFIELD', N'MA', 42.0893, -73.3727)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110976, N'01258', N'SOUTH EGREMONT', N'MA', 42.094, -73.4662)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110977, N'01259', N'SOUTHFIELD', N'MA', 42.0733, -73.241)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110978, N'01260', N'SOUTH LEE', N'MA', 42.2775, -73.2778)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110979, N'01262', N'STOCKBRIDGE', N'MA', 42.3006, -73.3255)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110980, N'01263', N'STOCKBRIDGE', N'MA', 42.2878, -73.3208)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110981, N'01264', N'TYRINGHAM', N'MA', 42.3043, -73.2487)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110982, N'01266', N'WEST STOCKBRIDGE', N'MA', 42.3147, -73.3968)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110983, N'01267', N'WILLIAMSTOWN', N'MA', 42.6848, -73.2282)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110984, N'01270', N'WINDSOR', N'MA', 42.5137, -73.043)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110985, N'01301', N'GREENFIELD', N'MA', 42.629, -72.6062)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110986, N'01302', N'GREENFIELD', N'MA', 42.5878, -72.6003)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110987, N'01330', N'ASHFIELD', N'MA', 42.5227, -72.8242)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110988, N'01331', N'ATHOL', N'MA', 42.617, -72.1846)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110989, N'01337', N'BERNARDSTON', N'MA', 42.6986, -72.5766)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110990, N'01338', N'BUCKLAND', N'MA', 42.5997, -72.7362)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110991, N'01339', N'CHARLEMONT', N'MA', 42.6103, -72.8956)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110992, N'01340', N'COLRAIN', N'MA', 42.6891, -72.7385)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110993, N'01341', N'CONWAY', N'MA', 42.5066, -72.7087)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110994, N'01342', N'DEERFIELD', N'MA', 42.5381, -72.6067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110995, N'01343', N'DRURY', N'MA', 42.6466, -73.004)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110996, N'01344', N'ERVING', N'MA', 42.6125, -72.4148)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110997, N'01346', N'HEATH', N'MA', 42.6791, -72.84)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110998, N'01347', N'LAKE PLEASANT', N'MA', 42.5567, -72.5186)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (110999, N'01349', N'TURNERS FALLS', N'MA', 42.5736, -72.4889)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111000, N'01350', N'MONROE BRIDGE', N'MA', 42.7226, -72.9829)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111001, N'01351', N'MONTAGUE', N'MA', 42.5391, -72.5186)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111002, N'01354', N'NORTHFIELD', N'MA', 42.6787, -72.4874)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111003, N'01355', N'NEW SALEM', N'MA', 42.4495, -72.3314)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111004, N'01360', N'NORTHFIELD', N'MA', 42.6676, -72.4343)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111005, N'01364', N'ORANGE', N'MA', 42.614, -72.3011)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111006, N'01366', N'PETERSHAM', N'MA', 42.4757, -72.2015)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111007, N'01367', N'ROWE', N'MA', 42.6912, -72.9302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111008, N'01368', N'ROYALSTON', N'MA', 42.5958, -72.2274)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111009, N'01369', N'SHATTUCKVILLE', N'MA', 42.6376, -72.7294)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111010, N'01370', N'SHELBURNE FALLS', N'MA', 42.6026, -72.7442)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111011, N'01373', N'SOUTH DEERFIELD', N'MA', 42.4698, -72.6164)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111012, N'01375', N'SUNDERLAND', N'MA', 42.4651, -72.5539)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111013, N'01376', N'TURNERS FALLS', N'MA', 42.6364, -72.5105)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111014, N'01378', N'WARWICK', N'MA', 42.6702, -72.3543)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111015, N'01379', N'WENDELL', N'MA', 42.5618, -72.4041)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111016, N'01380', N'WENDELL DEPOT', N'MA', 42.5988, -72.356)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111017, N'01420', N'FITCHBURG', N'MA', 42.5924, -71.8176)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111018, N'01430', N'ASHBURNHAM', N'MA', 42.659, -71.9245)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111019, N'01431', N'ASHBY', N'MA', 42.6765, -71.8232)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111020, N'01432', N'AYER', N'MA', 42.5628, -71.5717)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111021, N'01436', N'BALDWINVILLE', N'MA', 42.602, -72.089)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111022, N'01438', N'EAST TEMPLETON', N'MA', 42.5631, -72.0378)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111023, N'01440', N'GARDNER', N'MA', 42.5847, -71.987)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111024, N'01441', N'WESTMINSTER', N'MA', 42.575, -71.9988)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111025, N'01450', N'GROTON', N'MA', 42.6135, -71.5611)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111026, N'01451', N'HARVARD', N'MA', 42.5009, -71.5775)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111027, N'01452', N'HUBBARDSTON', N'MA', 42.4838, -72.0053)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111028, N'01453', N'LEOMINSTER', N'MA', 42.5209, -71.7716)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111029, N'01460', N'LITTLETON', N'MA', 42.5349, -71.4895)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111030, N'01462', N'LUNENBURG', N'MA', 42.5909, -71.7208)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111031, N'01463', N'PEPPERELL', N'MA', 42.6719, -71.6029)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111032, N'01464', N'SHIRLEY', N'MA', 42.5726, -71.6476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111033, N'01467', N'STILL RIVER', N'MA', 42.4919, -71.6184)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111034, N'01468', N'TEMPLETON', N'MA', 42.549, -72.066)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111035, N'01469', N'TOWNSEND', N'MA', 42.6663, -71.6929)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111036, N'01470', N'GROTON', N'MA', 42.6112, -71.5752)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111037, N'01471', N'GROTON', N'MA', 42.6112, -71.5752)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111038, N'01472', N'WEST GROTON', N'MA', 42.6006, -71.6302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111039, N'01473', N'WESTMINSTER', N'MA', 42.5492, -71.9037)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111040, N'01474', N'WEST TOWNSEND', N'MA', 42.6692, -71.7495)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111041, N'01475', N'WINCHENDON', N'MA', 42.6665, -72.049)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111042, N'01477', N'WINCHENDON SPRINGS', N'MA', 42.7021, -72.0237)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111043, N'01501', N'AUBURN', N'MA', 42.197, -71.8452)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111044, N'01503', N'BERLIN', N'MA', 42.3838, -71.6355)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111045, N'01504', N'BLACKSTONE', N'MA', 42.0416, -71.5423)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111046, N'01505', N'BOYLSTON', N'MA', 42.3502, -71.718)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111047, N'01506', N'BROOKFIELD', N'MA', 42.1837, -72.1103)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111048, N'01507', N'CHARLTON', N'MA', 42.1351, -71.9685)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111049, N'01508', N'CHARLTON CITY', N'MA', 42.1476, -71.9982)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111050, N'01509', N'CHARLTON DEPOT', N'MA', 42.1733, -71.9794)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111051, N'01510', N'CLINTON', N'MA', 42.4151, -71.6845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111052, N'01515', N'EAST BROOKFIELD', N'MA', 42.2029, -72.0459)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111053, N'01516', N'DOUGLAS', N'MA', 42.0528, -71.7498)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111054, N'01517', N'EAST PRINCETON', N'MA', 42.4728, -71.8395)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111055, N'01518', N'FISKDALE', N'MA', 42.1124, -72.1166)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111056, N'01519', N'GRAFTON', N'MA', 42.2034, -71.6813)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111057, N'01520', N'HOLDEN', N'MA', 42.3349, -71.8573)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111058, N'01521', N'HOLLAND', N'MA', 42.0415, -72.1491)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111059, N'01522', N'JEFFERSON', N'MA', 42.386, -71.864)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111060, N'01523', N'LANCASTER', N'MA', 42.4719, -71.6906)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111061, N'01524', N'LEICESTER', N'MA', 42.2492, -71.9206)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111062, N'01525', N'LINWOOD', N'MA', 42.0973, -71.6455)
GO
print 'Processed 400 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111063, N'01526', N'MANCHAUG', N'MA', 42.0945, -71.7482)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111064, N'01527', N'MILLBURY', N'MA', 42.1926, -71.7739)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111065, N'01529', N'MILLVILLE', N'MA', 42.0195, -71.5783)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111066, N'01531', N'NEW BRAINTREE', N'MA', 42.3191, -72.1283)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111067, N'01532', N'NORTHBOROUGH', N'MA', 42.3229, -71.6469)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111068, N'01534', N'NORTHBRIDGE', N'MA', 42.1404, -71.6391)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111069, N'01535', N'NORTH BROOKFIELD', N'MA', 42.2695, -72.0791)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111070, N'01536', N'NORTH GRAFTON', N'MA', 42.2356, -71.6898)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111071, N'01537', N'NORTH OXFORD', N'MA', 42.162, -71.8956)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111072, N'01538', N'NORTH UXBRIDGE', N'MA', 42.0878, -71.6417)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111073, N'01540', N'OXFORD', N'MA', 42.119, -71.858)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111074, N'01541', N'PRINCETON', N'MA', 42.4565, -71.8812)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111075, N'01542', N'ROCHDALE', N'MA', 42.2023, -71.9095)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111076, N'01543', N'RUTLAND', N'MA', 42.3849, -71.9673)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111077, N'01545', N'SHREWSBURY', N'MA', 42.2859, -71.7148)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111078, N'01546', N'SHREWSBURY', N'MA', 42.2959, -71.7134)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111079, N'01550', N'SOUTHBRIDGE', N'MA', 42.0598, -72.0339)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111080, N'01560', N'SOUTH GRAFTON', N'MA', 42.1762, -71.6944)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111081, N'01561', N'SOUTH LANCASTER', N'MA', 42.4444, -71.6876)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111082, N'01562', N'SPENCER', N'MA', 42.2477, -71.9927)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111083, N'01564', N'STERLING', N'MA', 42.441, -71.7743)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111084, N'01566', N'STURBRIDGE', N'MA', 42.1049, -72.0779)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111085, N'01568', N'UPTON', N'MA', 42.1768, -71.6042)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111086, N'01569', N'UXBRIDGE', N'MA', 42.058, -71.6363)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111087, N'01570', N'WEBSTER', N'MA', 42.052, -71.8479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111088, N'01571', N'DUDLEY', N'MA', 42.0567, -71.9306)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111089, N'01580', N'WESTBOROUGH', N'MA', 42.2695, -71.6164)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111090, N'01581', N'WESTBOROUGH', N'MA', 42.2681, -71.6145)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111091, N'01582', N'WESTBOROUGH', N'MA', 42.2695, -71.6164)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111092, N'01583', N'WEST BOYLSTON', N'MA', 42.37, -71.7814)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111093, N'01585', N'WEST BROOKFIELD', N'MA', 42.2611, -72.1621)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111094, N'01586', N'WEST MILLBURY', N'MA', 42.1756, -71.8027)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111095, N'01588', N'WHITINSVILLE', N'MA', 42.1216, -71.6664)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111096, N'01590', N'SUTTON', N'MA', 42.1334, -71.7509)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111097, N'01601', N'WORCESTER', N'MA', 42.2627, -71.8028)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111098, N'01602', N'WORCESTER', N'MA', 42.2724, -71.8495)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111099, N'01603', N'WORCESTER', N'MA', 42.2432, -71.8439)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111100, N'01604', N'WORCESTER', N'MA', 42.249, -71.7692)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111101, N'01605', N'WORCESTER', N'MA', 42.2894, -71.7892)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111102, N'01606', N'WORCESTER', N'MA', 42.3148, -71.7961)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111103, N'01607', N'WORCESTER', N'MA', 42.2273, -71.7924)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111104, N'01608', N'WORCESTER', N'MA', 42.2617, -71.8015)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111105, N'01609', N'WORCESTER', N'MA', 42.2849, -71.8255)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111106, N'01610', N'WORCESTER', N'MA', 42.2465, -71.8094)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111107, N'01611', N'CHERRY VALLEY', N'MA', 42.2377, -71.8783)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111108, N'01612', N'PAXTON', N'MA', 42.3101, -71.933)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111109, N'01613', N'WORCESTER', N'MA', 42.2627, -71.8028)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111110, N'01614', N'WORCESTER', N'MA', 42.2627, -71.8028)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111111, N'01615', N'WORCESTER', N'MA', 42.2627, -71.8028)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111112, N'01653', N'WORCESTER', N'MA', 42.2627, -71.8028)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111113, N'01654', N'WORCESTER', N'MA', 42.2627, -71.8028)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111114, N'01655', N'WORCESTER', N'MA', 42.2627, -71.8028)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111115, N'01701', N'FRAMINGHAM', N'MA', 42.3203, -71.4404)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111116, N'01702', N'FRAMINGHAM', N'MA', 42.2813, -71.4287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111117, N'01703', N'FRAMINGHAM', N'MA', 42.3026, -71.4236)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111118, N'01704', N'FRAMINGHAM', N'MA', 42.3026, -71.4236)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111119, N'01705', N'FRAMINGHAM', N'MA', 42.3026, -71.4236)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111120, N'01718', N'VILLAGE OF NAGOG WOODS', N'MA', 42.5322, -71.401)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111121, N'01719', N'BOXBOROUGH', N'MA', 42.4884, -71.5177)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111122, N'01720', N'ACTON', N'MA', 42.4841, -71.4379)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111123, N'01721', N'ASHLAND', N'MA', 42.2571, -71.468)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111124, N'01730', N'BEDFORD', N'MA', 42.4949, -71.2781)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111125, N'01731', N'HANSCOM AFB', N'MA', 42.4526, -71.2809)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111126, N'01740', N'BOLTON', N'MA', 42.4359, -71.6066)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111127, N'01741', N'CARLISLE', N'MA', 42.5299, -71.3514)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111128, N'01742', N'CONCORD', N'MA', 42.464, -71.3767)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111129, N'01745', N'FAYVILLE', N'MA', 42.29, -71.503)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111130, N'01746', N'HOLLISTON', N'MA', 42.1976, -71.4448)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111131, N'01747', N'HOPEDALE', N'MA', 42.1252, -71.5349)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111132, N'01748', N'HOPKINTON', N'MA', 42.2257, -71.5381)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111133, N'01749', N'HUDSON', N'MA', 42.3849, -71.5328)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111134, N'01752', N'MARLBOROUGH', N'MA', 42.3495, -71.5482)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111135, N'01754', N'MAYNARD', N'MA', 42.4225, -71.4615)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111136, N'01756', N'MENDON', N'MA', 42.0929, -71.5511)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111137, N'01757', N'MILFORD', N'MA', 42.1566, -71.5186)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111138, N'01760', N'NATICK', N'MA', 42.2868, -71.3531)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111139, N'01770', N'SHERBORN', N'MA', 42.234, -71.375)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111140, N'01772', N'SOUTHBOROUGH', N'MA', 42.3002, -71.5323)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111141, N'01773', N'LINCOLN', N'MA', 42.4264, -71.3094)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111142, N'01775', N'STOW', N'MA', 42.4324, -71.5145)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111143, N'01776', N'SUDBURY', N'MA', 42.3844, -71.4233)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111144, N'01778', N'WAYLAND', N'MA', 42.3586, -71.3587)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111145, N'01784', N'WOODVILLE', N'MA', 42.2376, -71.5627)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111146, N'01801', N'WOBURN', N'MA', 42.4867, -71.1543)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111147, N'01803', N'BURLINGTON', N'MA', 42.5021, -71.2027)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111148, N'01805', N'BURLINGTON', N'MA', 42.5044, -71.1964)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111149, N'01806', N'WOBURN', N'MA', 42.4793, -71.1526)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111150, N'01807', N'WOBURN', N'MA', 42.4793, -71.1526)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111151, N'01808', N'WOBURN', N'MA', 42.4848, -71.1558)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111152, N'01810', N'ANDOVER', N'MA', 42.6464, -71.1647)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111153, N'01812', N'ANDOVER', N'MA', 42.6585, -71.1377)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111154, N'01813', N'WOBURN', N'MA', 42.4793, -71.1526)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111155, N'01815', N'WOBURN', N'MA', 42.4793, -71.1526)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111156, N'01821', N'BILLERICA', N'MA', 42.5493, -71.2504)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111157, N'01822', N'BILLERICA', N'MA', 42.5586, -71.2695)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111158, N'01824', N'CHELMSFORD', N'MA', 42.5915, -71.3555)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111159, N'01826', N'DRACUT', N'MA', 42.6832, -71.3006)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111160, N'01827', N'DUNSTABLE', N'MA', 42.6762, -71.4983)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111161, N'01830', N'HAVERHILL', N'MA', 42.7965, -71.0534)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111162, N'01831', N'HAVERHILL', N'MA', 42.7763, -71.0778)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111163, N'01832', N'HAVERHILL', N'MA', 42.7916, -71.1315)
GO
print 'Processed 500 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111164, N'01833', N'GEORGETOWN', N'MA', 42.7243, -70.9818)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111165, N'01834', N'GROVELAND', N'MA', 42.7505, -71.0153)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111166, N'01835', N'HAVERHILL', N'MA', 42.7512, -71.0864)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111167, N'01840', N'LAWRENCE', N'MA', 42.7079, -71.1609)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111168, N'01841', N'LAWRENCE', N'MA', 42.7112, -71.1649)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111169, N'01842', N'LAWRENCE', N'MA', 42.7069, -71.166)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111170, N'01843', N'LAWRENCE', N'MA', 42.6899, -71.1616)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111171, N'01844', N'METHUEN', N'MA', 42.7346, -71.189)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111172, N'01845', N'NORTH ANDOVER', N'MA', 42.6711, -71.0866)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111173, N'01850', N'LOWELL', N'MA', 42.6562, -71.3029)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111174, N'01851', N'LOWELL', N'MA', 42.6287, -71.3365)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111175, N'01852', N'LOWELL', N'MA', 42.6317, -71.2957)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111176, N'01853', N'LOWELL', N'MA', 42.6435, -71.3101)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111177, N'01854', N'LOWELL', N'MA', 42.6505, -71.3545)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111178, N'01860', N'MERRIMAC', N'MA', 42.8389, -71.0131)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111179, N'01862', N'NORTH BILLERICA', N'MA', 42.5659, -71.3044)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111180, N'01863', N'NORTH CHELMSFORD', N'MA', 42.6324, -71.3918)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111181, N'01864', N'NORTH READING', N'MA', 42.5814, -71.0875)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111182, N'01865', N'NUTTING LAKE', N'MA', 42.5381, -71.2689)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111183, N'01866', N'PINEHURST', N'MA', 42.5304, -71.2278)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111184, N'01867', N'READING', N'MA', 42.5351, -71.1055)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111185, N'01876', N'TEWKSBURY', N'MA', 42.6115, -71.2279)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111186, N'01879', N'TYNGSBORO', N'MA', 42.6592, -71.448)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111187, N'01880', N'WAKEFIELD', N'MA', 42.5039, -71.0656)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111188, N'01885', N'WEST BOXFORD', N'MA', 42.7077, -71.0658)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111189, N'01886', N'WESTFORD', N'MA', 42.5863, -71.4398)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111190, N'01887', N'WILMINGTON', N'MA', 42.5608, -71.1653)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111191, N'01888', N'WOBURN', N'MA', 42.4806, -71.1516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111192, N'01889', N'NORTH READING', N'MA', 42.5763, -71.0788)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111193, N'01890', N'WINCHESTER', N'MA', 42.4518, -71.1465)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111194, N'01899', N'ANDOVER', N'MA', 42.6586, -71.1375)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111195, N'01901', N'LYNN', N'MA', 42.4611, -70.947)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111196, N'01902', N'LYNN', N'MA', 42.471, -70.9405)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111197, N'01903', N'LYNN', N'MA', 42.4638, -70.9479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111198, N'01904', N'LYNN', N'MA', 42.4911, -70.9658)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111199, N'01905', N'LYNN', N'MA', 42.4642, -70.9719)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111200, N'01906', N'SAUGUS', N'MA', 42.4714, -71.0123)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111201, N'01907', N'SWAMPSCOTT', N'MA', 42.4758, -70.9068)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111202, N'01908', N'NAHANT', N'MA', 42.4278, -70.9254)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111203, N'01910', N'LYNN', N'MA', 42.4667, -70.9503)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111204, N'01913', N'AMESBURY', N'MA', 42.8537, -70.9439)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111205, N'01915', N'BEVERLY', N'MA', 42.5685, -70.8619)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111206, N'01921', N'BOXFORD', N'MA', 42.6796, -71.0165)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111207, N'01922', N'BYFIELD', N'MA', 42.7582, -70.9195)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111208, N'01923', N'DANVERS', N'MA', 42.5739, -70.9505)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111209, N'01929', N'ESSEX', N'MA', 42.6303, -70.7811)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111210, N'01930', N'GLOUCESTER', N'MA', 42.6166, -70.7157)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111211, N'01931', N'GLOUCESTER', N'MA', 42.6159, -70.6627)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111212, N'01936', N'HAMILTON', N'MA', 42.6208, -70.8578)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111213, N'01937', N'HATHORNE', N'MA', 42.5834, -70.9859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111214, N'01938', N'IPSWICH', N'MA', 42.6812, -70.8495)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111215, N'01940', N'LYNNFIELD', N'MA', 42.5359, -71.0388)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111216, N'01944', N'MANCHESTER', N'MA', 42.5824, -70.7694)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111217, N'01945', N'MARBLEHEAD', N'MA', 42.4989, -70.8636)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111218, N'01949', N'MIDDLETON', N'MA', 42.6044, -71.0163)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111219, N'01950', N'NEWBURYPORT', N'MA', 42.8125, -70.9023)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111220, N'01951', N'NEWBURY', N'MA', 42.7802, -70.8638)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111221, N'01952', N'SALISBURY', N'MA', 42.8501, -70.8633)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111222, N'01960', N'PEABODY', N'MA', 42.5338, -70.9728)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111223, N'01961', N'PEABODY', N'MA', 42.5278, -70.9294)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111224, N'01965', N'PRIDES CROSSING', N'MA', 42.559, -70.8253)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111225, N'01966', N'ROCKPORT', N'MA', 42.6548, -70.6236)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111226, N'01969', N'ROWLEY', N'MA', 42.7202, -70.8993)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111227, N'01970', N'SALEM', N'MA', 42.5108, -70.907)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111228, N'01971', N'SALEM', N'MA', 42.5195, -70.8972)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111229, N'01982', N'SOUTH HAMILTON', N'MA', 42.6267, -70.8582)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111230, N'01983', N'TOPSFIELD', N'MA', 42.636, -70.9427)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111231, N'01984', N'WENHAM', N'MA', 42.6008, -70.8825)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111232, N'01985', N'WEST NEWBURY', N'MA', 42.7931, -70.969)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111233, N'02018', N'ACCORD', N'MA', 42.1747, -70.8845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111234, N'02019', N'BELLINGHAM', N'MA', 42.0775, -71.4736)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111235, N'02020', N'BRANT ROCK', N'MA', 42.0863, -70.6417)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111236, N'02021', N'CANTON', N'MA', 42.175, -71.1265)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111237, N'02025', N'COHASSET', N'MA', 42.2362, -70.8195)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111238, N'02026', N'DEDHAM', N'MA', 42.2464, -71.1775)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111239, N'02027', N'DEDHAM', N'MA', 42.2472, -71.1664)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111240, N'02030', N'DOVER', N'MA', 42.2364, -71.2839)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111241, N'02031', N'EAST MANSFIELD', N'MA', 42.0231, -71.1779)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111242, N'02032', N'EAST WALPOLE', N'MA', 42.1522, -71.2148)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111243, N'02035', N'FOXBORO', N'MA', 42.0631, -71.2456)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111244, N'02038', N'FRANKLIN', N'MA', 42.0862, -71.411)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111245, N'02040', N'GREENBUSH', N'MA', 42.1792, -70.7501)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111246, N'02041', N'GREEN HARBOR', N'MA', 42.0775, -70.65)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111247, N'02043', N'HINGHAM', N'MA', 42.2161, -70.8847)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111248, N'02044', N'HINGHAM', N'MA', 42.2039, -70.8789)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111249, N'02045', N'HULL', N'MA', 42.2829, -70.8734)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111250, N'02047', N'HUMAROCK', N'MA', 42.1361, -70.6908)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111251, N'02048', N'MANSFIELD', N'MA', 42.0159, -71.2194)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111252, N'02050', N'MARSHFIELD', N'MA', 42.1128, -70.7147)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111253, N'02051', N'MARSHFIELD HILLS', N'MA', 42.1459, -70.7405)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111254, N'02052', N'MEDFIELD', N'MA', 42.1847, -71.3048)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111255, N'02053', N'MEDWAY', N'MA', 42.1536, -71.4287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111256, N'02054', N'MILLIS', N'MA', 42.1692, -71.3624)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111257, N'02055', N'MINOT', N'MA', 42.2403, -70.7626)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111258, N'02056', N'NORFOLK', N'MA', 42.1166, -71.329)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111259, N'02059', N'NORTH MARSHFIELD', N'MA', 42.1434, -70.7705)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111260, N'02060', N'NORTH SCITUATE', N'MA', 42.2187, -70.7861)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111261, N'02061', N'NORWELL', N'MA', 42.1607, -70.8177)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111262, N'02062', N'NORWOOD', N'MA', 42.1844, -71.1953)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111263, N'02065', N'OCEAN BLUFF', N'MA', 42.0918, -70.7061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111264, N'02066', N'SCITUATE', N'MA', 42.201, -70.7631)
GO
print 'Processed 600 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111265, N'02067', N'SHARON', N'MA', 42.1085, -71.1829)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111266, N'02070', N'SHELDONVILLE', N'MA', 42.0283, -71.3976)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111267, N'02071', N'SOUTH WALPOLE', N'MA', 42.1061, -71.2733)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111268, N'02072', N'STOUGHTON', N'MA', 42.1194, -71.1021)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111269, N'02081', N'WALPOLE', N'MA', 42.149, -71.259)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111270, N'02090', N'WESTWOOD', N'MA', 42.2195, -71.2086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111271, N'02093', N'WRENTHAM', N'MA', 42.0515, -71.3548)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111272, N'02101', N'BOSTON', N'MA', 42.3586, -71.0605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111273, N'02102', N'BOSTON', N'MA', 42.3586, -71.0605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111274, N'02103', N'BOSTON', N'MA', 42.3586, -71.0605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111275, N'02104', N'BOSTON', N'MA', 42.3586, -71.0605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111276, N'02105', N'BOSTON', N'MA', 42.3586, -71.0605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111277, N'02106', N'BOSTON', N'MA', 42.3586, -71.0605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111278, N'02107', N'BOSTON', N'MA', 42.3586, -71.0605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111279, N'02108', N'BOSTON', N'MA', 42.3581, -71.0647)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111280, N'02109', N'BOSTON', N'MA', 42.363, -71.0545)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111281, N'02110', N'BOSTON', N'MA', 42.3568, -71.0536)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111282, N'02111', N'BOSTON', N'MA', 42.3512, -71.0614)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111283, N'02112', N'BOSTON', N'MA', 42.3586, -71.0605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111284, N'02113', N'BOSTON', N'MA', 42.3652, -71.0558)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111285, N'02114', N'BOSTON', N'MA', 42.3621, -71.068)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111286, N'02115', N'BOSTON', N'MA', 42.341, -71.0948)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111287, N'02116', N'BOSTON', N'MA', 42.3496, -71.0753)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111288, N'02117', N'BOSTON', N'MA', 42.3586, -71.0605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111289, N'02118', N'BOSTON', N'MA', 42.338, -71.0718)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111290, N'02119', N'BOSTON', N'MA', 42.3237, -71.0855)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111291, N'02120', N'BOSTON', N'MA', 42.3325, -71.0965)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111292, N'02121', N'BOSTON', N'MA', 42.3078, -71.0835)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111293, N'02122', N'BOSTON', N'MA', 42.296, -71.0538)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111294, N'02123', N'BOSTON', N'MA', 42.3586, -71.0605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111295, N'02124', N'BOSTON', N'MA', 42.2862, -71.071)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111296, N'02125', N'BOSTON', N'MA', 42.3165, -71.0576)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111297, N'02126', N'MATTAPAN', N'MA', 42.274, -71.094)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111298, N'02127', N'BOSTON', N'MA', 42.3356, -71.0408)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111299, N'02128', N'BOSTON', N'MA', 42.3739, -71.015)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111300, N'02129', N'CHARLESTOWN', N'MA', 42.3791, -71.0637)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111301, N'02130', N'JAMAICA PLAIN', N'MA', 42.3076, -71.1131)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111302, N'02131', N'ROSLINDALE', N'MA', 42.2845, -71.1256)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111303, N'02132', N'WEST ROXBURY', N'MA', 42.2799, -71.1623)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111304, N'02133', N'BOSTON', N'MA', 42.3572, -71.0796)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111305, N'02134', N'ALLSTON', N'MA', 42.3585, -71.13)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111306, N'02135', N'BRIGHTON', N'MA', 42.3489, -71.1565)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111307, N'02136', N'HYDE PARK', N'MA', 42.2548, -71.1282)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111308, N'02137', N'READVILLE', N'MA', 42.3586, -71.0605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111309, N'02138', N'CAMBRIDGE', N'MA', 42.3802, -71.1347)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111310, N'02139', N'CAMBRIDGE', N'MA', 42.3631, -71.1033)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111311, N'02140', N'CAMBRIDGE', N'MA', 42.3933, -71.1333)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111312, N'02141', N'CAMBRIDGE', N'MA', 42.3703, -71.0825)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111313, N'02142', N'CAMBRIDGE', N'MA', 42.3638, -71.0835)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111314, N'02143', N'SOMERVILLE', N'MA', 42.3814, -71.0971)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111315, N'02144', N'SOMERVILLE', N'MA', 42.4009, -71.1218)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111316, N'02145', N'SOMERVILLE', N'MA', 42.3917, -71.0902)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111317, N'02148', N'MALDEN', N'MA', 42.4305, -71.0574)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111318, N'02149', N'EVERETT', N'MA', 42.4071, -71.0536)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111319, N'02150', N'CHELSEA', N'MA', 42.3964, -71.0327)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111320, N'02151', N'REVERE', N'MA', 42.4188, -71.0044)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111321, N'02152', N'WINTHROP', N'MA', 42.3773, -70.9806)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111322, N'02153', N'MEDFORD', N'MA', 42.4184, -71.1069)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111323, N'02155', N'MEDFORD', N'MA', 42.4255, -71.1081)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111324, N'02156', N'WEST MEDFORD', N'MA', 42.4293, -71.1285)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111325, N'02163', N'BOSTON', N'MA', 42.3579, -71.1176)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111326, N'02169', N'QUINCY', N'MA', 42.2468, -71.0071)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111327, N'02170', N'QUINCY', N'MA', 42.2664, -71.0167)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111328, N'02171', N'QUINCY', N'MA', 42.2866, -71.0248)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111329, N'02176', N'MELROSE', N'MA', 42.456, -71.0593)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111330, N'02177', N'MELROSE', N'MA', 42.4584, -71.0668)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111331, N'02180', N'STONEHAM', N'MA', 42.476, -71.0969)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111332, N'02184', N'BRAINTREE', N'MA', 42.2036, -71.0017)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111333, N'02185', N'BRAINTREE', N'MA', 42.2101, -70.9902)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111334, N'02186', N'MILTON', N'MA', 42.2378, -71.0804)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111335, N'02187', N'MILTON VILLAGE', N'MA', 42.2795, -71.0782)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111336, N'02188', N'WEYMOUTH', N'MA', 42.2076, -70.9575)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111337, N'02189', N'WEYMOUTH', N'MA', 42.21, -70.9313)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111338, N'02190', N'WEYMOUTH', N'MA', 42.1666, -70.9521)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111339, N'02191', N'WEYMOUTH', N'MA', 42.2435, -70.9438)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111340, N'02196', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111341, N'02199', N'BOSTON', N'MA', 42.3482, -71.0825)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111342, N'02201', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111343, N'02202', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111344, N'02203', N'BOSTON', N'MA', 42.3612, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111345, N'02204', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111346, N'02205', N'BOSTON', N'MA', 42.3512, -71.0536)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111347, N'02206', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111348, N'02207', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111349, N'02208', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111350, N'02209', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111351, N'02210', N'BOSTON', N'MA', 42.3466, -71.0403)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111352, N'02211', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111353, N'02212', N'BOSTON', N'MA', 42.3362, -71.0176)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111354, N'02215', N'BOSTON', N'MA', 42.3469, -71.1025)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111355, N'02216', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111356, N'02217', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111357, N'02222', N'BOSTON', N'MA', 42.3628, -71.0635)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111358, N'02228', N'EAST BOSTON', N'MA', 42.3739, -71.015)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111359, N'02238', N'CAMBRIDGE', N'MA', 42.3669, -71.1002)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111360, N'02239', N'CAMBRIDGE', N'MA', 42.3669, -71.1002)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111361, N'02241', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111362, N'02266', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111363, N'02269', N'QUINCY', N'MA', 42.2528, -71.0025)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111364, N'02283', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111365, N'02284', N'BOSTON', N'MA', 42.3586, -71.0603)
GO
print 'Processed 700 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111366, N'02293', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111367, N'02295', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111368, N'02297', N'BOSTON', N'MA', 42.3586, -71.0603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111369, N'02301', N'BROCKTON', N'MA', 42.0777, -71.0422)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111370, N'02302', N'BROCKTON', N'MA', 42.0878, -70.9987)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111371, N'02303', N'BROCKTON', N'MA', 42.0834, -71.0188)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111372, N'02304', N'BROCKTON', N'MA', 42.0834, -71.0188)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111373, N'02305', N'BROCKTON', N'MA', 42.0834, -71.0188)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111374, N'02322', N'AVON', N'MA', 42.1269, -71.0499)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111375, N'02324', N'BRIDGEWATER', N'MA', 41.9726, -70.973)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111376, N'02325', N'BRIDGEWATER', N'MA', 41.9903, -70.9759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111377, N'02327', N'BRYANTVILLE', N'MA', 42.0425, -70.8459)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111378, N'02330', N'CARVER', N'MA', 41.8765, -70.7616)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111379, N'02331', N'DUXBURY', N'MA', 42.0414, -70.6726)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111380, N'02332', N'DUXBURY', N'MA', 42.0459, -70.7161)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111381, N'02333', N'EAST BRIDGEWATER', N'MA', 42.035, -70.9423)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111382, N'02334', N'EASTON', N'MA', 42.0275, -71.1279)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111383, N'02337', N'ELMWOOD', N'MA', 42.0154, -70.9646)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111384, N'02338', N'HALIFAX', N'MA', 41.9909, -70.8632)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111385, N'02339', N'HANOVER', N'MA', 42.1223, -70.8564)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111386, N'02340', N'HANOVER', N'MA', 42.1223, -70.8564)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111387, N'02341', N'HANSON', N'MA', 42.0563, -70.8728)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111388, N'02343', N'HOLBROOK', N'MA', 42.1471, -71.0046)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111389, N'02344', N'MIDDLEBORO', N'MA', 41.8934, -70.9117)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111390, N'02345', N'MANOMET', N'MA', 41.8975, -70.5426)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111391, N'02346', N'MIDDLEBORO', N'MA', 41.8817, -70.8734)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111392, N'02347', N'LAKEVILLE', N'MA', 41.8333, -70.9656)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111393, N'02348', N'MIDDLEBORO', N'MA', 41.8934, -70.9117)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111394, N'02349', N'MIDDLEBORO', N'MA', 41.8934, -70.9117)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111395, N'02350', N'MONPONSETT', N'MA', 42.017, -70.8499)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111396, N'02351', N'ABINGTON', N'MA', 42.1179, -70.9586)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111397, N'02355', N'NORTH CARVER', N'MA', 41.9272, -70.7516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111398, N'02356', N'NORTH EASTON', N'MA', 42.0558, -71.1216)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111399, N'02357', N'NORTH EASTON', N'MA', 42.0664, -71.1044)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111400, N'02358', N'NORTH PEMBROKE', N'MA', 42.1024, -70.7739)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111401, N'02359', N'PEMBROKE', N'MA', 42.0662, -70.8014)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111402, N'02360', N'PLYMOUTH', N'MA', 41.879, -70.6307)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111403, N'02361', N'PLYMOUTH', N'MA', 41.9583, -70.6675)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111404, N'02362', N'PLYMOUTH', N'MA', 41.9583, -70.6675)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111405, N'02364', N'KINGSTON', N'MA', 41.9862, -70.748)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111406, N'02366', N'SOUTH CARVER', N'MA', 41.8429, -70.7469)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111407, N'02367', N'PLYMPTON', N'MA', 41.963, -70.81)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111408, N'02368', N'RANDOLPH', N'MA', 42.1762, -71.0528)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111409, N'02370', N'ROCKLAND', N'MA', 42.1292, -70.91)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111410, N'02375', N'SOUTH EASTON', N'MA', 42.0178, -71.0994)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111411, N'02379', N'WEST BRIDGEWATER', N'MA', 42.0209, -71.0267)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111412, N'02381', N'WHITE HORSE BEACH', N'MA', 41.9317, -70.56)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111413, N'02382', N'WHITMAN', N'MA', 42.0799, -70.9399)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111414, N'02420', N'LEXINGTON', N'MA', 42.4456, -71.2304)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111415, N'02421', N'LEXINGTON', N'MA', 42.4456, -71.2304)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111416, N'02445', N'BROOKLINE', N'MA', 42.3337, -71.1298)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111417, N'02446', N'BROOKLINE', N'MA', 42.3337, -71.1298)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111418, N'02447', N'BROOKLINE VILLAGE', N'MA', 42.3336, -71.1237)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111419, N'02451', N'WALTHAM', N'MA', 42.3876, -71.2411)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111420, N'02452', N'WALTHAM', N'MA', 42.3876, -71.2411)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111421, N'02453', N'WALTHAM', N'MA', 42.3876, -71.2411)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111422, N'02454', N'WALTHAM', N'MA', 42.3767, -71.2363)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111423, N'02455', N'NORTH WALTHAM', N'MA', 42.3586, -71.0605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111424, N'02456', N'NEW TOWN', N'MA', 42.3601, -71.1308)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111425, N'02457', N'BABSON PARK', N'MA', 42.2988, -71.2601)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111426, N'02458', N'NEWTON', N'MA', 42.3527, -71.1872)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111427, N'02459', N'NEWTON CENTER', N'MA', 42.3146, -71.1931)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111428, N'02460', N'NEWTONVILLE', N'MA', 42.3517, -71.2082)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111429, N'02461', N'NEWTON HIGHLANDS', N'MA', 42.3182, -71.2087)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111430, N'02462', N'NEWTON LOWER FALLS', N'MA', 42.3311, -71.257)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111431, N'02464', N'NEWTON UPPER FALLS', N'MA', 42.3132, -71.22)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111432, N'02465', N'WEST NEWTON', N'MA', 42.35, -71.2263)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111433, N'02466', N'AUBURNDALE', N'MA', 42.3471, -71.2478)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111434, N'02467', N'CHESTNUT HILL', N'MA', 42.3163, -71.1603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111435, N'02468', N'WABAN', N'MA', 42.3279, -71.2319)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111436, N'02471', N'WATERTOWN', N'MA', 42.3708, -71.1833)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111437, N'02472', N'WATERTOWN', N'MA', 42.3702, -71.1777)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111438, N'02474', N'ARLINGTON', N'MA', 42.4186, -71.1633)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111439, N'02475', N'ARLINGTON HEIGHTS', N'MA', 42.4288, -71.1494)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111440, N'02476', N'ARLINGTON', N'MA', 42.4186, -71.1633)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111441, N'02477', N'WATERTOWN', N'MA', 42.3708, -71.1833)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111442, N'02478', N'BELMONT', N'MA', 42.396, -71.1795)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111443, N'02479', N'WAVERLEY', N'MA', 42.4202, -71.2019)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111444, N'02481', N'WELLESLEY HILLS', N'MA', 42.3044, -71.2849)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111445, N'02482', N'WELLESLEY', N'MA', 42.3044, -71.2849)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111446, N'02492', N'NEEDHAM', N'MA', 42.275, -71.2465)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111447, N'02493', N'WESTON', N'MA', 42.359, -71.3)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111448, N'02494', N'NEEDHAM HEIGHTS', N'MA', 42.2971, -71.227)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111449, N'02495', N'NONANTUM', N'MA', 42.3367, -71.2094)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111450, N'02532', N'BUZZARDS BAY', N'MA', 41.7705, -70.5815)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111451, N'02534', N'CATAUMET', N'MA', 41.6667, -70.6086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111452, N'02535', N'CHILMARK', N'MA', 41.3536, -70.7417)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111453, N'02536', N'EAST FALMOUTH', N'MA', 41.6005, -70.5664)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111454, N'02537', N'EAST SANDWICH', N'MA', 41.7282, -70.4398)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111455, N'02538', N'EAST WAREHAM', N'MA', 41.778, -70.6491)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111456, N'02539', N'EDGARTOWN', N'MA', 41.3788, -70.5416)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111457, N'02540', N'FALMOUTH', N'MA', 41.5717, -70.6273)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111458, N'02541', N'FALMOUTH', N'MA', 41.5516, -70.6156)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111459, N'02542', N'BUZZARDS BAY', N'MA', 41.679, -70.5704)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111460, N'02543', N'WOODS HOLE', N'MA', 41.5274, -70.6631)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111461, N'02552', N'MENEMSHA', N'MA', 41.3648, -70.7515)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111462, N'02553', N'MONUMENT BEACH', N'MA', 41.7141, -70.6147)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111463, N'02554', N'NANTUCKET', N'MA', 41.2766, -70.065)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111464, N'02556', N'NORTH FALMOUTH', N'MA', 41.6396, -70.6245)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111465, N'02557', N'OAK BLUFFS', N'MA', 41.4451, -70.5647)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111466, N'02558', N'ONSET', N'MA', 41.7483, -70.6649)
GO
print 'Processed 800 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111467, N'02559', N'POCASSET', N'MA', 41.6914, -70.6154)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111468, N'02561', N'SAGAMORE', N'MA', 41.772, -70.5366)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111469, N'02562', N'SAGAMORE BEACH', N'MA', 41.8005, -70.5312)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111470, N'02563', N'SANDWICH', N'MA', 41.7202, -70.4773)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111471, N'02564', N'SIASCONSET', N'MA', 41.2623, -69.9668)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111472, N'02565', N'SILVER BEACH', N'MA', 41.6406, -70.6334)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111473, N'02568', N'VINEYARD HAVEN', N'MA', 41.4442, -70.5999)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111474, N'02571', N'WAREHAM', N'MA', 41.7865, -70.7021)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111475, N'02573', N'WEST CHOP', N'MA', 41.4768, -70.6027)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111476, N'02574', N'WEST FALMOUTH', N'MA', 41.6059, -70.6459)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111477, N'02575', N'WEST TISBURY', N'MA', 41.4015, -70.654)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111478, N'02576', N'WEST WAREHAM', N'MA', 41.7789, -70.7655)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111479, N'02584', N'NANTUCKET', N'MA', 41.2836, -70.1002)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111480, N'02601', N'HYANNIS', N'MA', 41.6607, -70.2924)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111481, N'02630', N'BARNSTABLE', N'MA', 41.7011, -70.3019)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111482, N'02631', N'BREWSTER', N'MA', 41.7472, -70.0688)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111483, N'02632', N'CENTERVILLE', N'MA', 41.663, -70.346)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111484, N'02633', N'CHATHAM', N'MA', 41.6873, -69.9813)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111485, N'02634', N'CENTERVILLE', N'MA', 41.6487, -70.3486)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111486, N'02635', N'COTUIT', N'MA', 41.6273, -70.44)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111487, N'02636', N'CENTERVILLE', N'MA', 41.6376, -70.3318)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111488, N'02637', N'CUMMAQUID', N'MA', 41.6991, -70.2777)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111489, N'02638', N'DENNIS', N'MA', 41.7328, -70.193)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111490, N'02639', N'DENNIS PORT', N'MA', 41.6664, -70.1357)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111491, N'02641', N'EAST DENNIS', N'MA', 41.7486, -70.1649)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111492, N'02642', N'EASTHAM', N'MA', 41.8433, -69.9805)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111493, N'02643', N'EAST ORLEANS', N'MA', 41.7966, -69.9568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111494, N'02644', N'FORESTDALE', N'MA', 41.7072, -70.5302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111495, N'02645', N'HARWICH', N'MA', 41.7026, -70.0637)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111496, N'02646', N'HARWICH PORT', N'MA', 41.6725, -70.0704)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111497, N'02647', N'HYANNIS PORT', N'MA', 41.6311, -70.3076)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111498, N'02648', N'MARSTONS MILLS', N'MA', 41.6705, -70.4155)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111499, N'02649', N'MASHPEE', N'MA', 41.6167, -70.4906)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111500, N'02650', N'NORTH CHATHAM', N'MA', 41.7032, -69.9645)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111501, N'02651', N'NORTH EASTHAM', N'MA', 41.8477, -70.0042)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111502, N'02652', N'NORTH TRURO', N'MA', 42.0421, -70.0917)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111503, N'02653', N'ORLEANS', N'MA', 41.7662, -69.9697)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111504, N'02655', N'OSTERVILLE', N'MA', 41.6354, -70.3848)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111505, N'02657', N'PROVINCETOWN', N'MA', 42.0612, -70.1974)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111506, N'02659', N'SOUTH CHATHAM', N'MA', 41.6824, -70.0221)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111507, N'02660', N'SOUTH DENNIS', N'MA', 41.7141, -70.1529)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111508, N'02661', N'SOUTH HARWICH', N'MA', 41.7014, -70.0217)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111509, N'02662', N'SOUTH ORLEANS', N'MA', 41.7567, -69.9938)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111510, N'02663', N'SOUTH WELLFLEET', N'MA', 41.9196, -69.9971)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111511, N'02664', N'SOUTH YARMOUTH', N'MA', 41.6739, -70.1961)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111512, N'02666', N'TRURO', N'MA', 41.9888, -70.0453)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111513, N'02667', N'WELLFLEET', N'MA', 41.9282, -70.0147)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111514, N'02668', N'WEST BARNSTABLE', N'MA', 41.7107, -70.3611)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111515, N'02669', N'WEST CHATHAM', N'MA', 41.6768, -69.9866)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111516, N'02670', N'WEST DENNIS', N'MA', 41.66, -70.1693)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111517, N'02671', N'WEST HARWICH', N'MA', 41.6704, -70.1135)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111518, N'02672', N'WEST HYANNISPORT', N'MA', 41.6356, -70.3191)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111519, N'02673', N'WEST YARMOUTH', N'MA', 41.6589, -70.2416)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111520, N'02675', N'YARMOUTH PORT', N'MA', 41.7045, -70.2302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111521, N'02702', N'ASSONET', N'MA', 41.782, -71.0542)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111522, N'02703', N'ATTLEBORO', N'MA', 41.9304, -71.2954)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111523, N'02712', N'CHARTLEY', N'MA', 41.9488, -71.2266)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111524, N'02713', N'CUTTYHUNK', N'MA', 41.4796, -70.7571)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111525, N'02714', N'DARTMOUTH', N'MA', 41.5766, -71.0106)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111526, N'02715', N'DIGHTON', N'MA', 41.816, -71.1517)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111527, N'02717', N'EAST FREETOWN', N'MA', 41.7554, -70.9742)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111528, N'02718', N'EAST TAUNTON', N'MA', 41.8686, -71.014)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111529, N'02719', N'FAIRHAVEN', N'MA', 41.6398, -70.8717)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111530, N'02720', N'FALL RIVER', N'MA', 41.7314, -71.1164)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111531, N'02721', N'FALL RIVER', N'MA', 41.6806, -71.1533)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111532, N'02722', N'FALL RIVER', N'MA', 41.7014, -71.1558)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111533, N'02723', N'FALL RIVER', N'MA', 41.6927, -71.1316)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111534, N'02724', N'FALL RIVER', N'MA', 41.684, -71.1777)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111535, N'02725', N'SOMERSET', N'MA', 41.7226, -71.1789)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111536, N'02726', N'SOMERSET', N'MA', 41.7613, -71.1468)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111537, N'02738', N'MARION', N'MA', 41.7087, -70.7664)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111538, N'02739', N'MATTAPOISETT', N'MA', 41.6681, -70.8178)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111539, N'02740', N'NEW BEDFORD', N'MA', 41.6384, -70.9419)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111540, N'02741', N'NEW BEDFORD', N'MA', 41.6363, -70.9347)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111541, N'02742', N'NEW BEDFORD', N'MA', 41.6363, -70.9347)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111542, N'02743', N'ACUSHNET', N'MA', 41.7138, -70.901)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111543, N'02744', N'NEW BEDFORD', N'MA', 41.6093, -70.913)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111544, N'02745', N'NEW BEDFORD', N'MA', 41.6972, -70.95)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111545, N'02746', N'NEW BEDFORD', N'MA', 41.6606, -70.9358)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111546, N'02747', N'NORTH DARTMOUTH', N'MA', 41.665, -71.0141)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111547, N'02748', N'SOUTH DARTMOUTH', N'MA', 41.5609, -70.9815)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111548, N'02760', N'NORTH ATTLEBORO', N'MA', 41.9706, -71.3359)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111549, N'02761', N'NORTH ATTLEBORO', N'MA', 41.9834, -71.3336)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111550, N'02762', N'PLAINVILLE', N'MA', 42.0139, -71.3367)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111551, N'02763', N'ATTLEBORO FALLS', N'MA', 41.9644, -71.3121)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111552, N'02764', N'NORTH DIGHTON', N'MA', 41.8553, -71.1622)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111553, N'02766', N'NORTON', N'MA', 41.9632, -71.1829)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111554, N'02767', N'RAYNHAM', N'MA', 41.9389, -71.0535)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111555, N'02768', N'RAYNHAM CENTER', N'MA', 41.9237, -71.0526)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111556, N'02769', N'REHOBOTH', N'MA', 41.844, -71.246)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111557, N'02770', N'ROCHESTER', N'MA', 41.7569, -70.841)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111558, N'02771', N'SEEKONK', N'MA', 41.8355, -71.3171)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111559, N'02777', N'SWANSEA', N'MA', 41.7606, -71.2109)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111560, N'02779', N'BERKLEY', N'MA', 41.8358, -71.0748)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111561, N'02780', N'TAUNTON', N'MA', 41.9112, -71.1289)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111562, N'02783', N'TAUNTON', N'MA', 41.9058, -71.1056)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111563, N'02790', N'WESTPORT', N'MA', 41.6022, -71.0828)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111564, N'02791', N'WESTPORT POINT', N'MA', 41.522, -71.0751)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111565, N'02801', N'ADAMSVILLE', N'RI', 41.5544, -71.1314)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111566, N'02802', N'ALBION', N'RI', 41.9514, -71.4551)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111567, N'02804', N'ASHAWAY', N'RI', 41.4382, -71.7682)
GO
print 'Processed 900 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111568, N'02806', N'BARRINGTON', N'RI', 41.7391, -71.322)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111569, N'02807', N'BLOCK ISLAND', N'RI', 41.1768, -71.5785)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111570, N'02808', N'BRADFORD', N'RI', 41.4008, -71.7509)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111571, N'02809', N'BRISTOL', N'RI', 41.6821, -71.2695)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111572, N'02812', N'CAROLINA', N'RI', 41.4755, -71.6599)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111573, N'02813', N'CHARLESTOWN', N'RI', 41.401, -71.6697)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111574, N'02814', N'CHEPACHET', N'RI', 41.904, -71.7093)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111575, N'02815', N'CLAYVILLE', N'RI', 41.77, -71.6581)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111576, N'02816', N'COVENTRY', N'RI', 41.6899, -71.6207)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111577, N'02817', N'WEST GREENWICH', N'RI', 41.6284, -71.6677)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111578, N'02818', N'EAST GREENWICH', N'RI', 41.6429, -71.4939)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111579, N'02822', N'EXETER', N'RI', 41.5683, -71.6387)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111580, N'02823', N'FISKEVILLE', N'RI', 41.7345, -71.5488)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111581, N'02824', N'FORESTDALE', N'RI', 41.9458, -71.7004)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111582, N'02825', N'FOSTER', N'RI', 41.7807, -71.7237)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111583, N'02826', N'GLENDALE', N'RI', 41.9762, -71.6332)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111584, N'02827', N'GREENE', N'RI', 41.6972, -71.7415)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111585, N'02828', N'GREENVILLE', N'RI', 41.8792, -71.5604)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111586, N'02829', N'HARMONY', N'RI', 41.8875, -71.5975)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111587, N'02830', N'HARRISVILLE', N'RI', 41.98, -71.6506)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111588, N'02831', N'HOPE', N'RI', 41.7452, -71.5941)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111589, N'02832', N'HOPE VALLEY', N'RI', 41.5104, -71.7381)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111590, N'02833', N'HOPKINTON', N'RI', 41.455, -71.7803)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111591, N'02835', N'JAMESTOWN', N'RI', 41.5154, -71.3771)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111592, N'02836', N'KENYON', N'RI', 41.4488, -71.6227)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111593, N'02837', N'LITTLE COMPTON', N'RI', 41.5162, -71.1657)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111594, N'02838', N'MANVILLE', N'RI', 41.9616, -71.4744)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111595, N'02839', N'MAPLEVILLE', N'RI', 41.9409, -71.6393)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111596, N'02840', N'NEWPORT', N'RI', 41.4796, -71.3204)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111597, N'02841', N'NEWPORT', N'RI', 41.4901, -71.3136)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111598, N'02842', N'MIDDLETOWN', N'RI', 41.5174, -71.2762)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111599, N'02852', N'NORTH KINGSTOWN', N'RI', 41.5873, -71.4626)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111600, N'02854', N'NORTH KINGSTOWN', N'RI', 41.6259, -71.4806)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111601, N'02857', N'NORTH SCITUATE', N'RI', 41.8328, -71.633)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111602, N'02858', N'OAKLAND', N'RI', 41.9639, -71.6407)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111603, N'02859', N'PASCOAG', N'RI', 41.9718, -71.7391)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111604, N'02860', N'PAWTUCKET', N'RI', 41.8706, -71.3891)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111605, N'02861', N'PAWTUCKET', N'RI', 41.8783, -71.3527)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111606, N'02862', N'PAWTUCKET', N'RI', 41.8787, -71.3832)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111607, N'02863', N'CENTRAL FALLS', N'RI', 41.8892, -71.3937)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111608, N'02864', N'CUMBERLAND', N'RI', 41.9699, -71.4191)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111609, N'02865', N'LINCOLN', N'RI', 41.9123, -71.4484)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111610, N'02871', N'PORTSMOUTH', N'RI', 41.5806, -71.2571)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111611, N'02872', N'PRUDENCE ISLAND', N'RI', 41.6051, -71.3345)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111612, N'02873', N'ROCKVILLE', N'RI', 41.5094, -71.7843)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111613, N'02874', N'SAUNDERSTOWN', N'RI', 41.5163, -71.4663)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111614, N'02875', N'SHANNOCK', N'RI', 41.4554, -71.641)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111615, N'02876', N'SLATERSVILLE', N'RI', 42.0033, -71.5855)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111616, N'02877', N'SLOCUM', N'RI', 41.5397, -71.5279)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111617, N'02878', N'TIVERTON', N'RI', 41.609, -71.1735)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111618, N'02879', N'WAKEFIELD', N'RI', 41.4261, -71.5353)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111619, N'02880', N'WAKEFIELD', N'RI', 41.4374, -71.5016)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111620, N'02881', N'KINGSTON', N'RI', 41.4796, -71.5207)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111621, N'02882', N'NARRAGANSETT', N'RI', 41.4075, -71.4775)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111622, N'02883', N'PEACE DALE', N'RI', 41.4529, -71.499)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111623, N'02885', N'WARREN', N'RI', 41.7289, -71.2619)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111624, N'02886', N'WARWICK', N'RI', 41.7055, -71.4528)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111625, N'02887', N'WARWICK', N'RI', 41.6918, -71.3795)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111626, N'02888', N'WARWICK', N'RI', 41.7483, -71.4124)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111627, N'02889', N'WARWICK', N'RI', 41.7067, -71.3871)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111628, N'02891', N'WESTERLY', N'RI', 41.3616, -71.7933)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111629, N'02892', N'WEST KINGSTON', N'RI', 41.497, -71.599)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111630, N'02893', N'WEST WARWICK', N'RI', 41.7, -71.516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111631, N'02894', N'WOOD RIVER JUNCTION', N'RI', 41.4527, -71.7025)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111632, N'02895', N'WOONSOCKET', N'RI', 42.0062, -71.4864)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111633, N'02896', N'NORTH SMITHFIELD', N'RI', 41.9725, -71.5515)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111634, N'02898', N'WYOMING', N'RI', 41.5171, -71.676)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111635, N'02901', N'PROVIDENCE', N'RI', 41.8238, -71.4133)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111636, N'02902', N'PROVIDENCE', N'RI', 41.8238, -71.4133)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111637, N'02903', N'PROVIDENCE', N'RI', 41.8204, -71.4128)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111638, N'02904', N'PROVIDENCE', N'RI', 41.8605, -71.4362)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111639, N'02905', N'PROVIDENCE', N'RI', 41.7871, -71.4008)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111640, N'02906', N'PROVIDENCE', N'RI', 41.8386, -71.3928)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111641, N'02907', N'PROVIDENCE', N'RI', 41.7975, -71.425)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111642, N'02908', N'PROVIDENCE', N'RI', 41.8385, -71.439)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111643, N'02909', N'PROVIDENCE', N'RI', 41.8175, -71.4503)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111644, N'02910', N'CRANSTON', N'RI', 41.775, -71.4355)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111645, N'02911', N'NORTH PROVIDENCE', N'RI', 41.8539, -71.4734)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111646, N'02912', N'PROVIDENCE', N'RI', 41.8238, -71.4133)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111647, N'02914', N'EAST PROVIDENCE', N'RI', 41.8122, -71.3625)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111648, N'02915', N'RIVERSIDE', N'RI', 41.7767, -71.3502)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111649, N'02916', N'RUMFORD', N'RI', 41.8441, -71.3537)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111650, N'02917', N'SMITHFIELD', N'RI', 41.9065, -71.5244)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111651, N'02918', N'PROVIDENCE', N'RI', 41.8238, -71.4133)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111652, N'02919', N'JOHNSTON', N'RI', 41.827, -71.5198)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111653, N'02920', N'CRANSTON', N'RI', 41.7676, -71.4674)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111654, N'02921', N'CRANSTON', N'RI', 41.7619, -71.52)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111655, N'02940', N'PROVIDENCE', N'RI', 41.8238, -71.4133)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111656, N'03031', N'AMHERST', N'NH', 42.8705, -71.6074)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111657, N'03032', N'AUBURN', N'NH', 42.9909, -71.3424)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111658, N'03033', N'BROOKLINE', N'NH', 42.7464, -71.6705)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111659, N'03034', N'CANDIA', N'NH', 43.0594, -71.3094)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111660, N'03036', N'CHESTER', N'NH', 42.9673, -71.2507)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111661, N'03037', N'DEERFIELD', N'NH', 43.1379, -71.2568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111662, N'03038', N'DERRY', N'NH', 42.8895, -71.2818)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111663, N'03040', N'EAST CANDIA', N'NH', 43.0484, -71.2493)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111664, N'03041', N'EAST DERRY', N'NH', 42.8946, -71.2917)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111665, N'03042', N'EPPING', N'NH', 43.0532, -71.0745)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111666, N'03043', N'FRANCESTOWN', N'NH', 42.9972, -71.8154)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111667, N'03044', N'FREMONT', N'NH', 42.979, -71.1235)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111668, N'03045', N'GOFFSTOWN', N'NH', 43.0165, -71.5582)
GO
print 'Processed 1000 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111669, N'03046', N'DUNBARTON', N'NH', 43.1097, -71.5993)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111670, N'03047', N'GREENFIELD', N'NH', 42.9373, -71.8626)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111671, N'03048', N'GREENVILLE', N'NH', 42.7496, -71.7606)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111672, N'03049', N'HOLLIS', N'NH', 42.7523, -71.5826)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111673, N'03051', N'HUDSON', N'NH', 42.7645, -71.4065)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111674, N'03052', N'LITCHFIELD', N'NH', 42.8267, -71.4536)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111675, N'03053', N'LONDONDERRY', N'NH', 42.8794, -71.3877)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111676, N'03054', N'MERRIMACK', N'NH', 42.8551, -71.5193)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111677, N'03055', N'MILFORD', N'NH', 42.8182, -71.6742)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111678, N'03057', N'MONT VERNON', N'NH', 42.903, -71.6963)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111679, N'03060', N'NASHUA', N'NH', 42.737, -71.4488)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111680, N'03061', N'NASHUA', N'NH', 42.7656, -71.4682)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111681, N'03062', N'NASHUA', N'NH', 42.7215, -71.4954)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111682, N'03063', N'NASHUA', N'NH', 42.7771, -71.5136)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111683, N'03064', N'NASHUA', N'NH', 42.7725, -71.473)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111684, N'03070', N'NEW BOSTON', N'NH', 42.9779, -71.6851)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111685, N'03071', N'NEW IPSWICH', N'NH', 42.7491, -71.8748)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111686, N'03073', N'NORTH SALEM', N'NH', 42.8368, -71.2213)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111687, N'03076', N'PELHAM', N'NH', 42.7336, -71.324)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111688, N'03077', N'RAYMOND', N'NH', 43.0497, -71.1922)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111689, N'03079', N'SALEM', N'NH', 42.7902, -71.2199)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111690, N'03082', N'LYNDEBOROUGH', N'NH', 42.9039, -71.7812)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111691, N'03084', N'TEMPLE', N'NH', 42.8287, -71.8569)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111692, N'03086', N'WILTON', N'NH', 42.8316, -71.7726)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111693, N'03087', N'WINDHAM', N'NH', 42.8079, -71.2995)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111694, N'03101', N'MANCHESTER', N'NH', 42.9878, -71.4651)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111695, N'03102', N'MANCHESTER', N'NH', 43.0067, -71.4926)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111696, N'03103', N'MANCHESTER', N'NH', 42.9238, -71.449)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111697, N'03104', N'MANCHESTER', N'NH', 43.0089, -71.4405)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111698, N'03105', N'MANCHESTER', N'NH', 42.9956, -71.4556)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111699, N'03106', N'HOOKSETT', N'NH', 43.0706, -71.4194)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111700, N'03107', N'MANCHESTER', N'NH', 42.9956, -71.4556)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111701, N'03108', N'MANCHESTER', N'NH', 42.9956, -71.4556)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111702, N'03109', N'MANCHESTER', N'NH', 42.9641, -71.4032)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111703, N'03110', N'BEDFORD', N'NH', 42.9407, -71.5309)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111704, N'03111', N'MANCHESTER', N'NH', 42.9956, -71.4556)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111705, N'03215', N'WATERVILLE VALLEY', N'NH', 43.9503, -71.5001)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111706, N'03216', N'ANDOVER', N'NH', 43.4272, -71.7955)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111707, N'03217', N'ASHLAND', N'NH', 43.7097, -71.589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111708, N'03218', N'BARNSTEAD', N'NH', 43.3701, -71.291)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111709, N'03220', N'BELMONT', N'NH', 43.4594, -71.484)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111710, N'03221', N'BRADFORD', N'NH', 43.279, -71.9935)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111711, N'03222', N'BRISTOL', N'NH', 43.6264, -71.7826)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111712, N'03223', N'CAMPTON', N'NH', 43.8657, -71.6461)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111713, N'03224', N'CANTERBURY', N'NH', 43.3629, -71.5466)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111714, N'03225', N'CENTER BARNSTEAD', N'NH', 43.3398, -71.2327)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111715, N'03226', N'CENTER HARBOR', N'NH', 43.7121, -71.4886)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111716, N'03227', N'CENTER SANDWICH', N'NH', 43.8351, -71.478)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111717, N'03229', N'CONTOOCOOK', N'NH', 43.2205, -71.6996)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111718, N'03230', N'DANBURY', N'NH', 43.5184, -71.8741)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111719, N'03231', N'EAST ANDOVER', N'NH', 43.4783, -71.7646)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111720, N'03232', N'EAST HEBRON', N'NH', 43.6912, -71.7557)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111721, N'03233', N'ELKINS', N'NH', 43.4189, -71.9407)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111722, N'03234', N'EPSOM', N'NH', 43.2097, -71.3469)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111723, N'03235', N'FRANKLIN', N'NH', 43.4435, -71.6697)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111724, N'03237', N'GILMANTON', N'NH', 43.4182, -71.4061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111725, N'03238', N'GLENCLIFF', N'NH', 43.9825, -71.8939)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111726, N'03240', N'GRAFTON', N'NH', 43.5749, -71.97)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111727, N'03241', N'HEBRON', N'NH', 43.7311, -71.8331)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111728, N'03242', N'HENNIKER', N'NH', 43.1735, -71.8224)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111729, N'03243', N'HILL', N'NH', 43.5308, -71.7589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111730, N'03244', N'HILLSBORO', N'NH', 43.1281, -71.9266)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111731, N'03245', N'HOLDERNESS', N'NH', 43.7278, -71.5895)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111732, N'03246', N'LACONIA', N'NH', 43.567, -71.4823)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111733, N'03247', N'LACONIA', N'NH', 43.5478, -71.4074)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111734, N'03249', N'GILFORD', N'NH', 43.5518, -71.3905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111735, N'03251', N'LINCOLN', N'NH', 44.0978, -71.5802)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111736, N'03252', N'LOCHMERE', N'NH', 43.4712, -71.5308)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111737, N'03253', N'MEREDITH', N'NH', 43.6394, -71.5339)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111738, N'03254', N'MOULTONBOROUGH', N'NH', 43.7525, -71.3598)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111739, N'03255', N'NEWBURY', N'NH', 43.3732, -72.0415)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111740, N'03256', N'NEW HAMPTON', N'NH', 43.6154, -71.647)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111741, N'03257', N'NEW LONDON', N'NH', 43.4164, -71.9863)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111742, N'03258', N'CHICHESTER', N'NH', 43.2528, -71.4017)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111743, N'03259', N'NORTH SANDWICH', N'NH', 43.8614, -71.388)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111744, N'03260', N'NORTH SUTTON', N'NH', 43.3636, -71.94)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111745, N'03261', N'NORTHWOOD', N'NH', 43.204, -71.2)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111746, N'03262', N'NORTH WOODSTOCK', N'NH', 44.0023, -71.7388)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111747, N'03263', N'PITTSFIELD', N'NH', 43.2759, -71.3302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111748, N'03264', N'PLYMOUTH', N'NH', 43.8032, -71.7266)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111749, N'03266', N'RUMNEY', N'NH', 43.7922, -71.8971)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111750, N'03268', N'SALISBURY', N'NH', 43.4091, -71.7032)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111751, N'03269', N'SANBORNTON', N'NH', 43.5445, -71.6261)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111752, N'03272', N'SOUTH NEWBURY', N'NH', 43.2956, -71.9974)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111753, N'03273', N'SOUTH SUTTON', N'NH', 43.3202, -71.9347)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111754, N'03274', N'STINSON LAKE', N'NH', 43.8614, -71.8088)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111755, N'03275', N'SUNCOOK', N'NH', 43.1606, -71.4143)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111756, N'03276', N'TILTON', N'NH', 43.4812, -71.5745)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111757, N'03278', N'WARNER', N'NH', 43.3175, -71.8466)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111758, N'03279', N'WARREN', N'NH', 43.9715, -71.8912)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111759, N'03280', N'WASHINGTON', N'NH', 43.1831, -72.0893)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111760, N'03281', N'WEARE', N'NH', 43.0801, -71.7237)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111761, N'03282', N'WENTWORTH', N'NH', 43.8637, -71.9292)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111762, N'03284', N'SPRINGFIELD', N'NH', 43.4929, -72.037)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111763, N'03287', N'WILMOT', N'NH', 43.4448, -71.9168)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111764, N'03289', N'WINNISQUAM', N'NH', 43.5015, -71.5127)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111765, N'03290', N'NOTTINGHAM', N'NH', 43.0998, -71.1003)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111766, N'03291', N'WEST NOTTINGHAM', N'NH', 43.1396, -71.1245)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111767, N'03293', N'WOODSTOCK', N'NH', 43.9778, -71.6858)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111768, N'03298', N'TILTON', N'NH', 43.629, -71.4937)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111769, N'03299', N'TILTON', N'NH', 43.629, -71.4937)
GO
print 'Processed 1100 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111770, N'03301', N'CONCORD', N'NH', 43.248, -71.5112)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111771, N'03302', N'CONCORD', N'NH', 43.2084, -71.5381)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111772, N'03303', N'CONCORD', N'NH', 43.3208, -71.6638)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111773, N'03304', N'BOW', N'NH', 43.1735, -71.5808)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111774, N'03305', N'CONCORD', N'NH', 43.2084, -71.5381)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111775, N'03307', N'LOUDON', N'NH', 43.3083, -71.4468)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111776, N'03431', N'KEENE', N'NH', 42.9764, -72.2744)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111777, N'03435', N'KEENE', N'NH', 42.9337, -72.2794)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111778, N'03440', N'ANTRIM', N'NH', 43.0586, -71.9613)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111779, N'03441', N'ASHUELOT', N'NH', 42.8112, -72.4431)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111780, N'03442', N'BENNINGTON', N'NH', 43.013, -71.9083)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111781, N'03443', N'CHESTERFIELD', N'NH', 42.8888, -72.4589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111782, N'03444', N'DUBLIN', N'NH', 42.8936, -72.072)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111783, N'03445', N'SULLIVAN', N'NH', 42.9936, -72.1906)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111784, N'03446', N'SWANZEY', N'NH', 42.8618, -72.2452)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111785, N'03447', N'FITZWILLIAM', N'NH', 42.7589, -72.1476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111786, N'03448', N'GILSUM', N'NH', 43.0403, -72.2643)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111787, N'03449', N'HANCOCK', N'NH', 42.9761, -71.9956)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111788, N'03450', N'HARRISVILLE', N'NH', 42.9404, -72.0799)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111789, N'03451', N'HINSDALE', N'NH', 42.8109, -72.499)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111790, N'03452', N'JAFFREY', N'NH', 42.8293, -72.06)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111791, N'03455', N'MARLBOROUGH', N'NH', 42.8933, -72.1812)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111792, N'03456', N'MARLOW', N'NH', 43.1307, -72.2152)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111793, N'03457', N'NELSON', N'NH', 42.9982, -72.1464)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111794, N'03458', N'PETERBOROUGH', N'NH', 42.8756, -71.9378)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111795, N'03461', N'RINDGE', N'NH', 42.7527, -72.0106)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111796, N'03462', N'SPOFFORD', N'NH', 42.9056, -72.4015)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111797, N'03464', N'STODDARD', N'NH', 43.0777, -72.1153)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111798, N'03465', N'TROY', N'NH', 42.8267, -72.1898)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111799, N'03466', N'WEST CHESTERFIELD', N'NH', 42.8726, -72.5149)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111800, N'03467', N'WESTMORELAND', N'NH', 42.9687, -72.4306)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111801, N'03468', N'WEST PETERBOROUGH', N'NH', 42.8872, -71.9856)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111802, N'03469', N'WEST SWANZEY', N'NH', 42.8602, -72.3146)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111803, N'03470', N'WINCHESTER', N'NH', 42.7724, -72.3306)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111804, N'03561', N'LITTLETON', N'NH', 44.3195, -71.8017)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111805, N'03570', N'BERLIN', N'NH', 44.4946, -71.3056)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111806, N'03574', N'BETHLEHEM', N'NH', 44.2523, -71.5913)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111807, N'03575', N'BRETTON WOODS', N'NH', 44.2582, -71.4419)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111808, N'03576', N'COLEBROOK', N'NH', 44.8906, -71.3771)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111809, N'03579', N'ERROL', N'NH', 44.8154, -71.1891)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111810, N'03580', N'FRANCONIA', N'NH', 44.1784, -71.6802)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111811, N'03581', N'GORHAM', N'NH', 44.3296, -71.1352)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111812, N'03582', N'GROVETON', N'NH', 44.6154, -71.467)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111813, N'03583', N'JEFFERSON', N'NH', 44.3946, -71.4295)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111814, N'03584', N'LANCASTER', N'NH', 44.4906, -71.4996)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111815, N'03585', N'LISBON', N'NH', 44.2214, -71.8862)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111816, N'03587', N'MEADOWS', N'NH', 44.3628, -71.4641)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111817, N'03588', N'MILAN', N'NH', 44.6084, -71.1109)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111818, N'03589', N'MOUNT WASHINGTON', N'NH', 44.2818, -71.2998)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111819, N'03590', N'NORTH STRATFORD', N'NH', 44.7189, -71.4659)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111820, N'03592', N'PITTSBURG', N'NH', 45.1081, -71.25)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111821, N'03595', N'TWIN MOUNTAIN', N'NH', 44.2631, -71.5464)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111822, N'03597', N'WEST STEWARTSTOWN', N'NH', 44.9955, -71.5318)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111823, N'03598', N'WHITEFIELD', N'NH', 44.3374, -71.528)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111824, N'03601', N'ACWORTH', N'NH', 43.2156, -72.2924)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111825, N'03602', N'ALSTEAD', N'NH', 43.1141, -72.3097)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111826, N'03603', N'CHARLESTOWN', N'NH', 43.2437, -72.3854)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111827, N'03604', N'DREWSVILLE', N'NH', 43.1281, -72.3928)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111828, N'03605', N'LEMPSTER', N'NH', 43.2136, -72.1592)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111829, N'03607', N'SOUTH ACWORTH', N'NH', 43.181, -72.3267)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111830, N'03608', N'WALPOLE', N'NH', 43.0717, -72.4054)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111831, N'03609', N'NORTH WALPOLE', N'NH', 43.1467, -72.4461)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111832, N'03740', N'BATH', N'NH', 44.1828, -71.9509)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111833, N'03741', N'CANAAN', N'NH', 43.6625, -72.0033)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111834, N'03743', N'CLAREMONT', N'NH', 43.3506, -72.3252)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111835, N'03745', N'CORNISH', N'NH', 43.4878, -72.3345)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111836, N'03746', N'CORNISH FLAT', N'NH', 43.4973, -72.28)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111837, N'03748', N'ENFIELD', N'NH', 43.6295, -72.1191)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111838, N'03749', N'ENFIELD CENTER', N'NH', 43.5903, -72.1117)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111839, N'03750', N'ETNA', N'NH', 43.7126, -72.1802)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111840, N'03751', N'GEORGES MILLS', N'NH', 43.4338, -72.075)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111841, N'03752', N'GOSHEN', N'NH', 43.2892, -72.1152)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111842, N'03753', N'GRANTHAM', N'NH', 43.5175, -72.1505)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111843, N'03754', N'GUILD', N'NH', 43.3769, -72.1388)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111844, N'03755', N'HANOVER', N'NH', 43.7256, -72.2368)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111845, N'03756', N'LEBANON', N'NH', 43.7029, -72.2895)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111846, N'03765', N'HAVERHILL', N'NH', 44.0424, -72.0588)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111847, N'03766', N'LEBANON', N'NH', 43.6309, -72.225)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111848, N'03768', N'LYME', N'NH', 43.8051, -72.1151)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111849, N'03769', N'LYME CENTER', N'NH', 43.7995, -72.1234)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111850, N'03770', N'MERIDEN', N'NH', 43.5271, -72.2791)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111851, N'03771', N'MONROE', N'NH', 44.2815, -72.0093)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111852, N'03773', N'NEWPORT', N'NH', 43.3489, -72.2102)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111853, N'03774', N'NORTH HAVERHILL', N'NH', 44.0965, -71.991)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111854, N'03777', N'ORFORD', N'NH', 43.8953, -72.0656)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111855, N'03779', N'PIERMONT', N'NH', 43.9758, -72.0724)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111856, N'03780', N'PIKE', N'NH', 44.0015, -72.0028)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111857, N'03781', N'PLAINFIELD', N'NH', 43.5468, -72.2601)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111858, N'03782', N'SUNAPEE', N'NH', 43.3917, -72.0958)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111859, N'03784', N'WEST LEBANON', N'NH', 43.6438, -72.295)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111860, N'03785', N'WOODSVILLE', N'NH', 44.1173, -71.8999)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111861, N'03801', N'PORTSMOUTH', N'NH', 43.0695, -70.8008)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111862, N'03802', N'PORTSMOUTH', N'NH', 43.0719, -70.7632)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111863, N'03803', N'PORTSMOUTH', N'NH', 43.0719, -70.7632)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111864, N'03804', N'PORTSMOUTH', N'NH', 43.0719, -70.7632)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111865, N'03805', N'ROLLINSFORD', N'NH', 43.2364, -70.8206)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111866, N'03809', N'ALTON', N'NH', 43.4683, -71.235)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111867, N'03810', N'ALTON BAY', N'NH', 43.4879, -71.2495)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111868, N'03811', N'ATKINSON', N'NH', 42.8379, -71.1618)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111869, N'03812', N'BARTLETT', N'NH', 44.1032, -71.3046)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111870, N'03813', N'CENTER CONWAY', N'NH', 43.9597, -71.0453)
GO
print 'Processed 1200 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111871, N'03814', N'CENTER OSSIPEE', N'NH', 43.7644, -71.128)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111872, N'03815', N'CENTER STRAFFORD', N'NH', 43.2645, -71.1101)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111873, N'03816', N'CENTER TUFTONBORO', N'NH', 43.7106, -71.2568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111874, N'03817', N'CHOCORUA', N'NH', 43.8897, -71.238)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111875, N'03818', N'CONWAY', N'NH', 43.9735, -71.2576)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111876, N'03819', N'DANVILLE', N'NH', 42.9217, -71.1138)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111877, N'03820', N'DOVER', N'NH', 43.1854, -70.9128)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111878, N'03821', N'DOVER', N'NH', 43.1921, -70.8804)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111879, N'03822', N'DOVER', N'NH', 43.1979, -70.8745)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111880, N'03824', N'DURHAM', N'NH', 43.125, -70.9759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111881, N'03825', N'BARRINGTON', N'NH', 43.2039, -71.0483)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111882, N'03826', N'EAST HAMPSTEAD', N'NH', 42.8884, -71.1292)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111883, N'03827', N'EAST KINGSTON', N'NH', 42.9089, -70.979)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111884, N'03830', N'EAST WAKEFIELD', N'NH', 43.6443, -71.0078)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111885, N'03832', N'EATON CENTER', N'NH', 43.9094, -71.0845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111886, N'03833', N'EXETER', N'NH', 42.9832, -70.9915)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111887, N'03835', N'FARMINGTON', N'NH', 43.3883, -71.062)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111888, N'03836', N'FREEDOM', N'NH', 43.8283, -71.067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111889, N'03837', N'GILMANTON IRON WORKS', N'NH', 43.4321, -71.3396)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111890, N'03838', N'GLEN', N'NH', 44.107, -71.2591)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111891, N'03839', N'ROCHESTER', N'NH', 43.2643, -70.9912)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111892, N'03840', N'GREENLAND', N'NH', 43.0323, -70.8422)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111893, N'03841', N'HAMPSTEAD', N'NH', 42.8817, -71.1752)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111894, N'03842', N'HAMPTON', N'NH', 42.9412, -70.8373)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111895, N'03843', N'HAMPTON', N'NH', 42.9284, -70.8566)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111896, N'03844', N'HAMPTON FALLS', N'NH', 42.9278, -70.888)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111897, N'03845', N'INTERVALE', N'NH', 44.1521, -71.0659)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111898, N'03846', N'JACKSON', N'NH', 44.1988, -71.233)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111899, N'03847', N'KEARSARGE', N'NH', 44.0756, -71.1182)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111900, N'03848', N'KINGSTON', N'NH', 42.9158, -71.0677)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111901, N'03849', N'MADISON', N'NH', 43.9023, -71.102)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111902, N'03850', N'MELVIN VILLAGE', N'NH', 43.6887, -71.3049)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111903, N'03851', N'MILTON', N'NH', 43.4098, -70.9888)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111904, N'03852', N'MILTON MILLS', N'NH', 43.5059, -70.9765)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111905, N'03853', N'MIRROR LAKE', N'NH', 43.6396, -71.2757)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111906, N'03854', N'NEW CASTLE', N'NH', 43.0656, -70.7203)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111907, N'03855', N'NEW DURHAM', N'NH', 43.4642, -71.1426)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111908, N'03856', N'NEWFIELDS', N'NH', 43.0374, -70.9863)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111909, N'03857', N'NEWMARKET', N'NH', 43.0696, -70.9738)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111910, N'03858', N'NEWTON', N'NH', 42.8685, -71.0434)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111911, N'03859', N'NEWTON JUNCTION', N'NH', 42.8672, -71.0666)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111912, N'03860', N'NORTH CONWAY', N'NH', 44.0406, -71.0915)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111913, N'03862', N'NORTH HAMPTON', N'NH', 42.9791, -70.8304)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111914, N'03864', N'OSSIPEE', N'NH', 43.6936, -71.1095)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111915, N'03865', N'PLAISTOW', N'NH', 42.8403, -71.0961)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111916, N'03866', N'ROCHESTER', N'NH', 43.2756, -70.9891)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111917, N'03867', N'ROCHESTER', N'NH', 43.3148, -71.0598)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111918, N'03868', N'ROCHESTER', N'NH', 43.3246, -70.9445)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111919, N'03869', N'ROLLINSFORD', N'NH', 43.2211, -70.8405)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111920, N'03870', N'RYE', N'NH', 43.0126, -70.7631)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111921, N'03871', N'RYE BEACH', N'NH', 42.9768, -70.7664)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111922, N'03872', N'SANBORNVILLE', N'NH', 43.5632, -71.0133)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111923, N'03873', N'SANDOWN', N'NH', 42.9336, -71.1838)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111924, N'03874', N'SEABROOK', N'NH', 42.8873, -70.8685)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111925, N'03875', N'SILVER LAKE', N'NH', 43.8794, -71.1919)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111926, N'03878', N'SOMERSWORTH', N'NH', 43.2536, -70.8856)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111927, N'03882', N'EFFINGHAM', N'NH', 43.72, -71.0034)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111928, N'03883', N'SOUTH TAMWORTH', N'NH', 43.84, -71.3122)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111929, N'03884', N'STRAFFORD', N'NH', 43.264, -71.1712)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111930, N'03885', N'STRATHAM', N'NH', 43.0154, -70.8999)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111931, N'03886', N'TAMWORTH', N'NH', 43.8752, -71.2807)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111932, N'03887', N'UNION', N'NH', 43.4575, -71.038)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111933, N'03890', N'WEST OSSIPEE', N'NH', 43.8361, -71.2005)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111934, N'03894', N'WOLFEBORO', N'NH', 43.6057, -71.1496)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111935, N'03896', N'WOLFEBORO FALLS', N'NH', 43.5919, -71.2062)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111936, N'03897', N'WONALANCET', N'NH', 43.9074, -71.3514)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111937, N'03901', N'BERWICK', N'ME', 43.3005, -70.8434)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111938, N'03902', N'CAPE NEDDICK', N'ME', 43.2219, -70.6402)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111939, N'03903', N'ELIOT', N'ME', 43.1505, -70.7845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111940, N'03904', N'KITTERY', N'ME', 43.1147, -70.73)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111941, N'03905', N'KITTERY POINT', N'ME', 43.0922, -70.6865)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111942, N'03906', N'NORTH BERWICK', N'ME', 43.3315, -70.729)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111943, N'03907', N'OGUNQUIT', N'ME', 43.2322, -70.5899)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111944, N'03908', N'SOUTH BERWICK', N'ME', 43.2392, -70.747)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111945, N'03909', N'YORK', N'ME', 43.1677, -70.6822)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111946, N'03910', N'YORK BEACH', N'ME', 43.1779, -70.6077)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111947, N'03911', N'YORK HARBOR', N'ME', 43.1367, -70.6462)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111948, N'04001', N'ACTON', N'ME', 43.5558, -70.9312)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111949, N'04002', N'ALFRED', N'ME', 43.4908, -70.7071)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111950, N'04003', N'BAILEY ISLAND', N'ME', 43.7308, -69.9966)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111951, N'04004', N'BAR MILLS', N'ME', 43.6133, -70.5506)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111952, N'04005', N'BIDDEFORD', N'ME', 43.4906, -70.5283)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111953, N'04006', N'BIDDEFORD POOL', N'ME', 43.4459, -70.3448)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111954, N'04007', N'BIDDEFORD', N'ME', 43.4927, -70.4537)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111955, N'04008', N'BOWDOINHAM', N'ME', 44.0464, -69.919)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111956, N'04009', N'BRIDGTON', N'ME', 44.0406, -70.7267)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111957, N'04010', N'BROWNFIELD', N'ME', 43.9296, -70.9399)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111958, N'04011', N'BRUNSWICK', N'ME', 43.903, -69.9809)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111959, N'04013', N'BUSTINS ISLAND', N'ME', 43.8, -70.0714)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111960, N'04014', N'CAPE PORPOISE', N'ME', 43.3706, -70.4379)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111961, N'04015', N'CASCO', N'ME', 43.9731, -70.517)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111962, N'04016', N'CENTER LOVELL', N'ME', 44.1738, -70.8731)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111963, N'04017', N'CHEBEAGUE ISLAND', N'ME', 43.7338, -70.1183)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111964, N'04019', N'CLIFF ISLAND', N'ME', 43.6973, -70.1027)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111965, N'04020', N'CORNISH', N'ME', 43.7689, -70.7828)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111966, N'04021', N'CUMBERLAND CENTER', N'ME', 43.7981, -70.2656)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111967, N'04022', N'DENMARK', N'ME', 43.9777, -70.7965)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111968, N'04024', N'EAST BALDWIN', N'ME', 43.8805, -70.6932)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111969, N'04027', N'LEBANON', N'ME', 43.4243, -70.9089)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111970, N'04028', N'EAST PARSONFIELD', N'ME', 43.7336, -70.8483)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111971, N'04029', N'SEBAGO', N'ME', 43.8948, -70.6437)
GO
print 'Processed 1300 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111972, N'04030', N'EAST WATERBORO', N'ME', 43.5962, -70.6949)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111973, N'04032', N'FREEPORT', N'ME', 43.8594, -70.0998)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111974, N'04033', N'FREEPORT', N'ME', 43.8569, -70.1037)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111975, N'04034', N'FREEPORT', N'ME', 43.8569, -70.1037)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111976, N'04037', N'FRYEBURG', N'ME', 44.0478, -70.9547)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111977, N'04038', N'GORHAM', N'ME', 43.6907, -70.4722)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111978, N'04039', N'GRAY', N'ME', 43.8875, -70.3441)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111979, N'04040', N'HARRISON', N'ME', 44.1001, -70.6448)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111980, N'04041', N'HIRAM', N'ME', 43.8708, -70.8482)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111981, N'04042', N'HOLLIS CENTER', N'ME', 43.5987, -70.6163)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111982, N'04043', N'KENNEBUNK', N'ME', 43.3976, -70.5713)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111983, N'04046', N'KENNEBUNKPORT', N'ME', 43.4079, -70.4735)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111984, N'04047', N'PARSONSFIELD', N'ME', 43.7658, -70.9172)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111985, N'04048', N'LIMERICK', N'ME', 43.7002, -70.8015)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111986, N'04049', N'LIMINGTON', N'ME', 43.7248, -70.6785)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111987, N'04050', N'LONG ISLAND', N'ME', 43.6906, -70.1555)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111988, N'04051', N'LOVELL', N'ME', 44.1894, -70.9511)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111989, N'04053', N'MEREPOINT', N'ME', 43.8453, -70.0018)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111990, N'04054', N'MOODY', N'ME', 43.2726, -70.5989)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111991, N'04055', N'NAPLES', N'ME', 43.9692, -70.6135)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111992, N'04056', N'NEWFIELD', N'ME', 43.6484, -70.8489)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111993, N'04057', N'NORTH BRIDGTON', N'ME', 44.0996, -70.6997)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111994, N'04061', N'NORTH WATERBORO', N'ME', 43.6379, -70.7469)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111995, N'04062', N'WINDHAM', N'ME', 43.795, -70.4037)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111996, N'04063', N'OCEAN PARK', N'ME', 43.5007, -70.3971)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111997, N'04064', N'OLD ORCHARD BEACH', N'ME', 43.528, -70.3929)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111998, N'04066', N'ORRS ISLAND', N'ME', 43.7705, -69.9671)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (111999, N'04068', N'PORTER', N'ME', 43.8405, -70.9413)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112000, N'04069', N'POWNAL', N'ME', 43.899, -70.1831)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112001, N'04070', N'SCARBOROUGH', N'ME', 43.5783, -70.3222)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112002, N'04071', N'RAYMOND', N'ME', 43.9379, -70.4425)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112003, N'04072', N'SACO', N'ME', 43.5496, -70.476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112004, N'04073', N'SANFORD', N'ME', 43.4132, -70.7398)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112005, N'04074', N'SCARBOROUGH', N'ME', 43.5917, -70.3693)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112006, N'04075', N'SEBAGO LAKE', N'ME', 43.7705, -70.5689)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112007, N'04076', N'SHAPLEIGH', N'ME', 43.5718, -70.831)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112008, N'04077', N'SOUTH CASCO', N'ME', 43.8731, -70.5138)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112009, N'04078', N'SOUTH FREEPORT', N'ME', 43.8208, -70.1064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112010, N'04079', N'HARPSWELL', N'ME', 43.7958, -69.9869)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112011, N'04081', N'SOUTH WATERFORD', N'ME', 44.1481, -70.8005)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112012, N'04082', N'SOUTH WINDHAM', N'ME', 43.7375, -70.4304)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112013, N'04083', N'SPRINGVALE', N'ME', 43.4829, -70.8287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112014, N'04084', N'STANDISH', N'ME', 43.8159, -70.4792)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112015, N'04085', N'STEEP FALLS', N'ME', 43.7679, -70.6289)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112016, N'04086', N'TOPSHAM', N'ME', 43.9677, -69.9739)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112017, N'04087', N'WATERBORO', N'ME', 43.5719, -70.7527)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112018, N'04088', N'WATERFORD', N'ME', 44.1786, -70.7164)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112019, N'04090', N'WELLS', N'ME', 43.3303, -70.6044)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112020, N'04091', N'WEST BALDWIN', N'ME', 43.8312, -70.7436)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112021, N'04092', N'WESTBROOK', N'ME', 43.7142, -70.3494)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112022, N'04093', N'BUXTON', N'ME', 43.6671, -70.5709)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112023, N'04094', N'WEST KENNEBUNK', N'ME', 43.4065, -70.5804)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112024, N'04095', N'WEST NEWFIELD', N'ME', 43.654, -70.9209)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112025, N'04096', N'YARMOUTH', N'ME', 43.8219, -70.1758)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112026, N'04097', N'NORTH YARMOUTH', N'ME', 43.8397, -70.2474)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112027, N'04098', N'WESTBROOK', N'ME', 43.6769, -70.3714)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112028, N'04101', N'PORTLAND', N'ME', 43.6616, -70.2592)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112029, N'04102', N'PORTLAND', N'ME', 43.6598, -70.3075)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112030, N'04103', N'PORTLAND', N'ME', 43.6954, -70.2921)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112031, N'04104', N'PORTLAND', N'ME', 43.6615, -70.2555)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112032, N'04105', N'FALMOUTH', N'ME', 43.7506, -70.2845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112033, N'04106', N'SOUTH PORTLAND', N'ME', 43.6292, -70.2915)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112034, N'04107', N'CAPE ELIZABETH', N'ME', 43.5903, -70.2379)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112035, N'04108', N'PEAKS ISLAND', N'ME', 43.6609, -70.1885)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112036, N'04109', N'PORTLAND', N'ME', 43.6801, -70.1969)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112037, N'04110', N'CUMBERLAND FORESIDE', N'ME', 43.7628, -70.1955)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112038, N'04112', N'PORTLAND', N'ME', 43.6615, -70.2555)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112039, N'04116', N'SOUTH PORTLAND', N'ME', 43.6615, -70.2555)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112040, N'04122', N'PORTLAND', N'ME', 43.6615, -70.2555)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112041, N'04123', N'PORTLAND', N'ME', 43.6615, -70.2555)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112042, N'04124', N'PORTLAND', N'ME', 43.6615, -70.2555)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112043, N'04210', N'AUBURN', N'ME', 44.0965, -70.2571)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112044, N'04211', N'AUBURN', N'ME', 44.0976, -70.2319)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112045, N'04212', N'AUBURN', N'ME', 44.0976, -70.2319)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112046, N'04216', N'ANDOVER', N'ME', 44.887, -70.9207)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112047, N'04217', N'BETHEL', N'ME', 44.3718, -70.8421)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112048, N'04219', N'BRYANT POND', N'ME', 44.3802, -70.6456)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112049, N'04220', N'BUCKFIELD', N'ME', 44.2833, -70.3688)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112050, N'04221', N'CANTON', N'ME', 44.4022, -70.3258)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112051, N'04222', N'DURHAM', N'ME', 43.9642, -70.1296)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112052, N'04223', N'DANVILLE', N'ME', 44.021, -70.2756)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112053, N'04224', N'DIXFIELD', N'ME', 44.5803, -70.4003)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112054, N'04225', N'DRYDEN', N'ME', 44.6206, -70.2577)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112055, N'04226', N'EAST ANDOVER', N'ME', 44.6039, -70.7278)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112056, N'04227', N'EAST DIXFIELD', N'ME', 44.5744, -70.2996)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112057, N'04228', N'EAST LIVERMORE', N'ME', 44.3996, -70.1271)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112058, N'04230', N'EAST POLAND', N'ME', 44.0701, -70.3286)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112059, N'04231', N'STONEHAM', N'ME', 44.2527, -70.8826)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112060, N'04234', N'EAST WILTON', N'ME', 44.6175, -70.1905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112061, N'04236', N'GREENE', N'ME', 44.1916, -70.1446)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112062, N'04237', N'HANOVER', N'ME', 44.4974, -70.7262)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112063, N'04238', N'HEBRON', N'ME', 44.2116, -70.3796)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112064, N'04239', N'JAY', N'ME', 44.5312, -70.2076)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112065, N'04240', N'LEWISTON', N'ME', 44.0905, -70.1653)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112066, N'04241', N'LEWISTON', N'ME', 44.1004, -70.2155)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112067, N'04243', N'LEWISTON', N'ME', 44.1004, -70.2155)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112068, N'04250', N'LISBON', N'ME', 44.0255, -70.1163)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112069, N'04252', N'LISBON FALLS', N'ME', 44.0258, -70.0595)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112070, N'04253', N'LIVERMORE', N'ME', 44.3845, -70.2474)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112071, N'04254', N'LIVERMORE FALLS', N'ME', 44.4079, -70.2159)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112072, N'04255', N'GREENWOOD', N'ME', 44.4002, -70.7026)
GO
print 'Processed 1400 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112073, N'04256', N'MECHANIC FALLS', N'ME', 44.107, -70.3624)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112074, N'04257', N'MEXICO', N'ME', 44.5737, -70.5136)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112075, N'04258', N'MINOT', N'ME', 44.0872, -70.3187)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112076, N'04259', N'MONMOUTH', N'ME', 44.2158, -70.0255)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112077, N'04260', N'NEW GLOUCESTER', N'ME', 43.9641, -70.2957)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112078, N'04261', N'NEWRY', N'ME', 44.4073, -70.795)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112079, N'04262', N'NORTH JAY', N'ME', 44.5505, -70.2288)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112080, N'04263', N'LEEDS', N'ME', 44.2935, -70.1314)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112081, N'04265', N'NORTH MONMOUTH', N'ME', 44.2728, -70.0544)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112082, N'04266', N'NORTH TURNER', N'ME', 44.331, -70.2557)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112083, N'04267', N'NORTH WATERFORD', N'ME', 44.2079, -70.7158)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112084, N'04268', N'NORWAY', N'ME', 44.2262, -70.6028)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112085, N'04270', N'OXFORD', N'ME', 44.0966, -70.5371)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112086, N'04271', N'PARIS', N'ME', 44.2599, -70.5024)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112087, N'04274', N'POLAND', N'ME', 44.0282, -70.3889)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112088, N'04275', N'ROXBURY', N'ME', 44.7286, -70.6272)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112089, N'04276', N'RUMFORD', N'ME', 44.5488, -70.6285)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112090, N'04278', N'RUMFORD CENTER', N'ME', 44.5133, -70.6163)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112091, N'04280', N'SABATTUS', N'ME', 44.1181, -70.0556)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112092, N'04281', N'SOUTH PARIS', N'ME', 44.2182, -70.476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112093, N'04282', N'TURNER', N'ME', 44.2578, -70.2426)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112094, N'04283', N'TURNER CENTER', N'ME', 44.2698, -70.2181)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112095, N'04284', N'WAYNE', N'ME', 44.3637, -70.0959)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112096, N'04285', N'WELD', N'ME', 44.7072, -70.4553)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112097, N'04286', N'WEST BETHEL', N'ME', 44.4015, -70.8569)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112098, N'04287', N'BOWDOIN', N'ME', 44.0469, -70.0194)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112099, N'04288', N'WEST MINOT', N'ME', 44.1714, -70.3642)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112100, N'04289', N'WEST PARIS', N'ME', 44.3264, -70.6167)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112101, N'04290', N'PERU', N'ME', 44.4733, -70.4504)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112102, N'04291', N'WEST POLAND', N'ME', 44.0513, -70.4533)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112103, N'04292', N'SUMNER', N'ME', 44.3711, -70.4386)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112104, N'04294', N'WILTON', N'ME', 44.5915, -70.2983)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112105, N'04330', N'AUGUSTA', N'ME', 44.3261, -69.698)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112106, N'04332', N'AUGUSTA', N'ME', 44.3108, -69.7803)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112107, N'04333', N'AUGUSTA', N'ME', 44.3108, -69.7803)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112108, N'04336', N'AUGUSTA', N'ME', 44.3108, -69.7803)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112109, N'04338', N'AUGUSTA', N'ME', 44.3108, -69.7803)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112110, N'04341', N'COOPERS MILLS', N'ME', 44.2749, -69.4929)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112111, N'04342', N'DRESDEN', N'ME', 44.0693, -69.7316)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112112, N'04343', N'EAST WINTHROP', N'ME', 44.3226, -69.9006)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112113, N'04344', N'FARMINGDALE', N'ME', 44.2524, -69.8123)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112114, N'04345', N'GARDINER', N'ME', 44.198, -69.7053)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112115, N'04346', N'RANDOLPH', N'ME', 44.2343, -69.7492)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112116, N'04347', N'HALLOWELL', N'ME', 44.2827, -69.8254)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112117, N'04348', N'JEFFERSON', N'ME', 44.1756, -69.5044)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112118, N'04349', N'KENTS HILL', N'ME', 44.4361, -70.0741)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112119, N'04350', N'LITCHFIELD', N'ME', 44.1599, -69.9476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112120, N'04351', N'MANCHESTER', N'ME', 44.301, -69.8726)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112121, N'04352', N'MOUNT VERNON', N'ME', 44.5103, -69.9881)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112122, N'04353', N'WHITEFIELD', N'ME', 44.2049, -69.6131)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112123, N'04354', N'PALERMO', N'ME', 44.3827, -69.4305)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112124, N'04355', N'READFIELD', N'ME', 44.4084, -69.9357)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112125, N'04357', N'RICHMOND', N'ME', 44.1233, -69.8291)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112126, N'04358', N'SOUTH CHINA', N'ME', 44.396, -69.5864)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112127, N'04359', N'SOUTH GARDINER', N'ME', 44.1792, -69.7604)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112128, N'04360', N'VIENNA', N'ME', 44.5357, -69.9947)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112129, N'04363', N'WINDSOR', N'ME', 44.3061, -69.5756)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112130, N'04364', N'WINTHROP', N'ME', 44.3159, -69.9775)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112131, N'04401', N'BANGOR', N'ME', 44.8521, -68.8311)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112132, N'04402', N'BANGOR', N'ME', 44.8012, -68.7783)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112133, N'04406', N'ABBOT', N'ME', 45.3122, -69.5439)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112134, N'04408', N'AURORA', N'ME', 44.9585, -68.271)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112135, N'04410', N'BRADFORD', N'ME', 45.0882, -68.9075)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112136, N'04411', N'BRADLEY', N'ME', 44.8872, -68.5663)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112137, N'04412', N'BREWER', N'ME', 44.7782, -68.725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112138, N'04413', N'BROOKTON', N'ME', 45.5667, -67.6871)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112139, N'04414', N'BROWNVILLE', N'ME', 45.4731, -69.1129)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112140, N'04415', N'BROWNVILLE JUNCTION', N'ME', 45.3503, -69.0529)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112141, N'04416', N'BUCKSPORT', N'ME', 44.6408, -68.7455)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112142, N'04417', N'BURLINGTON', N'ME', 45.1609, -68.3106)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112143, N'04418', N'GREENBUSH', N'ME', 45.0802, -68.5883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112144, N'04419', N'CARMEL', N'ME', 44.8004, -69.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112145, N'04420', N'CASTINE', N'ME', 44.3879, -68.8003)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112146, N'04421', N'CASTINE', N'ME', 44.3879, -68.8003)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112147, N'04422', N'CHARLESTON', N'ME', 45.0695, -69.0854)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112148, N'04423', N'COSTIGAN', N'ME', 45.0138, -68.5061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112149, N'04424', N'DANFORTH', N'ME', 45.6178, -67.9143)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112150, N'04426', N'DOVER FOXCROFT', N'ME', 45.2129, -69.1615)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112151, N'04427', N'CORINTH', N'ME', 44.9804, -69.0109)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112152, N'04428', N'EDDINGTON', N'ME', 44.8119, -68.5528)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112153, N'04429', N'HOLDEN', N'ME', 44.7225, -68.6115)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112154, N'04430', N'EAST MILLINOCKET', N'ME', 45.7457, -68.6437)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112155, N'04431', N'EAST ORLAND', N'ME', 44.5877, -68.6559)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112156, N'04434', N'ETNA', N'ME', 44.7848, -69.1334)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112157, N'04435', N'EXETER', N'ME', 44.9656, -69.1086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112158, N'04438', N'FRANKFORT', N'ME', 44.5964, -68.9266)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112159, N'04441', N'GREENVILLE', N'ME', 45.7313, -69.33)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112160, N'04442', N'GREENVILLE JUNCTION', N'ME', 45.4766, -69.7004)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112161, N'04443', N'GUILFORD', N'ME', 45.2519, -69.3542)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112162, N'04444', N'HAMPDEN', N'ME', 44.7323, -68.9137)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112163, N'04448', N'HOWLAND', N'ME', 45.1976, -68.703)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112164, N'04449', N'HUDSON', N'ME', 44.9982, -68.8852)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112165, N'04450', N'KENDUSKEAG', N'ME', 44.9159, -68.928)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112166, N'04451', N'KINGMAN', N'ME', 45.6117, -68.2294)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112167, N'04453', N'LAGRANGE', N'ME', 45.1871, -68.8153)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112168, N'04454', N'LAMBERT LAKE', N'ME', 45.5465, -67.5323)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112169, N'04455', N'LEE', N'ME', 45.3542, -68.2819)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112170, N'04456', N'LEVANT', N'ME', 44.8855, -69.0075)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112171, N'04457', N'LINCOLN', N'ME', 45.3335, -68.5089)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112172, N'04459', N'MATTAWAMKEAG', N'ME', 45.574, -68.322)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112173, N'04460', N'MEDWAY', N'ME', 45.6638, -68.4498)
GO
print 'Processed 1500 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112174, N'04461', N'MILFORD', N'ME', 44.9537, -68.5698)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112175, N'04462', N'MILLINOCKET', N'ME', 45.8439, -68.8753)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112176, N'04463', N'MILO', N'ME', 45.4158, -68.8178)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112177, N'04464', N'MONSON', N'ME', 45.304, -69.4782)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112178, N'04467', N'OLAMON', N'ME', 45.1222, -68.6105)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112179, N'04468', N'OLD TOWN', N'ME', 45.0236, -68.7394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112180, N'04469', N'ORONO', N'ME', 45.0868, -68.6498)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112181, N'04471', N'ORIENT', N'ME', 45.8952, -67.8479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112182, N'04472', N'ORLAND', N'ME', 44.5367, -68.7212)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112183, N'04473', N'ORONO', N'ME', 44.8847, -68.7231)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112184, N'04474', N'ORRINGTON', N'ME', 44.7151, -68.7788)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112185, N'04475', N'PASSADUMKEAG', N'ME', 45.2058, -68.5852)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112186, N'04476', N'PENOBSCOT', N'ME', 44.4673, -68.7193)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112187, N'04478', N'ROCKWOOD', N'ME', 45.9427, -69.8442)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112188, N'04479', N'SANGERVILLE', N'ME', 45.1306, -69.3081)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112189, N'04481', N'SEBEC', N'ME', 45.3066, -69.0338)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112190, N'04485', N'SHIRLEY MILLS', N'ME', 45.3646, -69.6212)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112191, N'04487', N'SPRINGFIELD', N'ME', 45.3189, -68.0613)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112192, N'04488', N'STETSON', N'ME', 44.8757, -69.1152)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112193, N'04489', N'STILLWATER', N'ME', 44.9086, -68.6869)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112194, N'04490', N'TOPSFIELD', N'ME', 45.4487, -67.718)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112195, N'04491', N'VANCEBORO', N'ME', 45.5574, -67.4697)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112196, N'04492', N'WAITE', N'ME', 45.3759, -67.6018)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112197, N'04493', N'WEST ENFIELD', N'ME', 45.2702, -68.597)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112198, N'04495', N'WINN', N'ME', 45.4539, -68.3308)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112199, N'04496', N'WINTERPORT', N'ME', 44.6584, -68.9151)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112200, N'04497', N'WYTOPITLOCK', N'ME', 45.7877, -68.0764)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112201, N'04530', N'BATH', N'ME', 43.8797, -69.8408)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112202, N'04535', N'ALNA', N'ME', 44.1065, -69.6086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112203, N'04536', N'BAYVILLE', N'ME', 43.8616, -69.6058)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112204, N'04537', N'BOOTHBAY', N'ME', 43.8974, -69.6262)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112205, N'04538', N'BOOTHBAY HARBOR', N'ME', 43.854, -69.611)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112206, N'04539', N'BRISTOL', N'ME', 43.9559, -69.4992)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112207, N'04541', N'CHAMBERLAIN', N'ME', 43.8891, -69.4959)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112208, N'04543', N'DAMARISCOTTA', N'ME', 44.0313, -69.4891)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112209, N'04544', N'EAST BOOTHBAY', N'ME', 43.8225, -69.5946)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112210, N'04547', N'FRIENDSHIP', N'ME', 44.0173, -69.2801)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112211, N'04548', N'GEORGETOWN', N'ME', 43.8074, -69.7472)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112212, N'04549', N'ISLE OF SPRINGS', N'ME', 43.8604, -69.6813)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112213, N'04551', N'BREMEN', N'ME', 43.9998, -69.4047)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112214, N'04552', N'NEWAGEN', N'ME', 43.7897, -69.6577)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112215, N'04553', N'NEWCASTLE', N'ME', 44.0672, -69.5534)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112216, N'04554', N'NEW HARBOR', N'ME', 43.8583, -69.5059)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112217, N'04555', N'NOBLEBORO', N'ME', 44.1053, -69.476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112218, N'04556', N'EDGECOMB', N'ME', 43.9799, -69.6102)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112219, N'04558', N'PEMAQUID', N'ME', 43.8916, -69.5279)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112220, N'04562', N'PHIPPSBURG', N'ME', 43.7691, -69.814)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112221, N'04563', N'CUSHING', N'ME', 43.9835, -69.2657)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112222, N'04564', N'ROUND POND', N'ME', 43.9484, -69.4634)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112223, N'04565', N'SEBASCO ESTATES', N'ME', 43.7796, -69.848)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112224, N'04567', N'SMALL POINT', N'ME', 43.7256, -69.8396)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112225, N'04568', N'SOUTH BRISTOL', N'ME', 43.8821, -69.5644)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112226, N'04570', N'SQUIRREL ISLAND', N'ME', 43.8044, -69.6428)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112227, N'04571', N'TREVETT', N'ME', 43.8985, -69.6751)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112228, N'04572', N'WALDOBORO', N'ME', 44.1147, -69.3702)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112229, N'04573', N'WALPOLE', N'ME', 43.9452, -69.5512)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112230, N'04574', N'WASHINGTON', N'ME', 44.2744, -69.3901)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112231, N'04575', N'WEST BOOTHBAY HARBOR', N'ME', 43.8476, -69.6469)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112232, N'04576', N'SOUTHPORT', N'ME', 43.8194, -69.6655)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112233, N'04578', N'WISCASSET', N'ME', 44.0333, -69.6727)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112234, N'04579', N'WOOLWICH', N'ME', 43.9653, -69.7883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112235, N'04605', N'ELLSWORTH', N'ME', 44.6651, -68.3944)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112236, N'04606', N'ADDISON', N'ME', 44.5797, -67.6973)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112237, N'04607', N'GOULDSBORO', N'ME', 44.4783, -68.0685)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112238, N'04609', N'BAR HARBOR', N'ME', 44.3639, -68.2629)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112239, N'04611', N'BEALS', N'ME', 44.4808, -67.587)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112240, N'04612', N'BERNARD', N'ME', 44.2398, -68.3607)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112241, N'04613', N'BIRCH HARBOR', N'ME', 44.3807, -68.0322)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112242, N'04614', N'BLUE HILL', N'ME', 44.4409, -68.5936)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112243, N'04615', N'BLUE HILL FALLS', N'ME', 44.3828, -68.5955)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112244, N'04616', N'BROOKLIN', N'ME', 44.2926, -68.57)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112245, N'04617', N'BROOKSVILLE', N'ME', 44.3739, -68.731)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112246, N'04619', N'CALAIS', N'ME', 45.1329, -67.2285)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112247, N'04622', N'CHERRYFIELD', N'ME', 44.7916, -68.0073)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112248, N'04623', N'COLUMBIA FALLS', N'ME', 44.7099, -67.7366)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112249, N'04624', N'COREA', N'ME', 44.4194, -67.9898)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112250, N'04625', N'CRANBERRY ISLES', N'ME', 44.2484, -68.2609)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112251, N'04626', N'CUTLER', N'ME', 44.6902, -67.2169)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112252, N'04627', N'DEER ISLE', N'ME', 44.2374, -68.6492)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112253, N'04628', N'DENNYSVILLE', N'ME', 44.864, -67.2838)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112254, N'04629', N'EAST BLUE HILL', N'ME', 44.4175, -68.5233)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112255, N'04630', N'EAST MACHIAS', N'ME', 44.7801, -67.392)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112256, N'04631', N'EASTPORT', N'ME', 44.9219, -67.0153)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112257, N'04634', N'FRANKLIN', N'ME', 44.6471, -68.2282)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112258, N'04635', N'FRENCHBORO', N'ME', 44.1209, -68.3669)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112259, N'04637', N'GRAND LAKE STREAM', N'ME', 45.1795, -67.7751)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112260, N'04640', N'HANCOCK', N'ME', 44.5046, -68.2427)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112261, N'04642', N'HARBORSIDE', N'ME', 44.337, -68.7991)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112262, N'04643', N'HARRINGTON', N'ME', 44.5923, -67.8083)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112263, N'04644', N'HULLS COVE', N'ME', 44.4193, -68.2514)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112264, N'04645', N'ISLE AU HAUT', N'ME', 44.049, -68.6276)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112265, N'04646', N'ISLESFORD', N'ME', 44.2617, -68.2345)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112266, N'04648', N'JONESBORO', N'ME', 44.6666, -67.5882)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112267, N'04649', N'JONESPORT', N'ME', 44.5771, -67.6024)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112268, N'04650', N'LITTLE DEER ISLE', N'ME', 44.289, -68.7134)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112269, N'04652', N'LUBEC', N'ME', 44.7971, -67.1163)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112270, N'04653', N'BASS HARBOR', N'ME', 44.1573, -68.4363)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112271, N'04654', N'MACHIAS', N'ME', 44.8808, -67.668)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112272, N'04655', N'MACHIASPORT', N'ME', 44.6541, -67.405)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112273, N'04656', N'MANSET', N'ME', 44.258, -68.3125)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112274, N'04657', N'MEDDYBEMPS', N'ME', 44.9999, -67.3852)
GO
print 'Processed 1600 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112275, N'04658', N'MILBRIDGE', N'ME', 44.4864, -67.8893)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112276, N'04660', N'MOUNT DESERT', N'ME', 44.3637, -68.3302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112277, N'04662', N'NORTHEAST HARBOR', N'ME', 44.2943, -68.2906)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112278, N'04664', N'SULLIVAN', N'ME', 44.5542, -68.1357)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112279, N'04665', N'OTTER CREEK', N'ME', 44.3186, -68.2084)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112280, N'04666', N'PEMBROKE', N'ME', 44.9808, -67.2405)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112281, N'04667', N'PERRY', N'ME', 44.9831, -67.1057)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112282, N'04668', N'PRINCETON', N'ME', 45.1886, -67.7075)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112283, N'04669', N'PROSPECT HARBOR', N'ME', 44.4338, -68.0333)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112284, N'04671', N'ROBBINSTON', N'ME', 45.0635, -67.1663)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112285, N'04672', N'SALSBURY COVE', N'ME', 44.4307, -68.2843)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112286, N'04673', N'SARGENTVILLE', N'ME', 44.3295, -68.7107)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112287, N'04674', N'SEAL COVE', N'ME', 44.2846, -68.3977)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112288, N'04675', N'SEAL HARBOR', N'ME', 44.3034, -68.2408)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112289, N'04676', N'SEDGWICK', N'ME', 44.3427, -68.6453)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112290, N'04677', N'SORRENTO', N'ME', 44.4928, -68.18)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112291, N'04679', N'SOUTHWEST HARBOR', N'ME', 44.2744, -68.3345)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112292, N'04680', N'STEUBEN', N'ME', 44.5069, -67.9643)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112293, N'04681', N'STONINGTON', N'ME', 44.1827, -68.6747)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112294, N'04683', N'SUNSET', N'ME', 44.2197, -68.7071)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112295, N'04684', N'SURRY', N'ME', 44.4924, -68.5264)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112296, N'04685', N'SWANS ISLAND', N'ME', 44.1451, -68.4525)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112297, N'04686', N'WESLEY', N'ME', 44.7153, -67.4619)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112298, N'04690', N'WEST TREMONT', N'ME', 44.2517, -68.3814)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112299, N'04691', N'WHITING', N'ME', 44.7909, -67.1763)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112300, N'04693', N'WINTER HARBOR', N'ME', 44.3857, -68.0704)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112301, N'04694', N'BAILEYVILLE', N'ME', 45.0659, -67.4987)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112302, N'04730', N'HOULTON', N'ME', 46.1163, -67.9329)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112303, N'04732', N'ASHLAND', N'ME', 46.6213, -68.5555)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112304, N'04733', N'BENEDICTA', N'ME', 45.7972, -68.4112)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112305, N'04734', N'BLAINE', N'ME', 46.5049, -67.8693)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112306, N'04735', N'BRIDGEWATER', N'ME', 46.4162, -67.8609)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112307, N'04736', N'CARIBOU', N'ME', 46.8928, -68.1493)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112308, N'04737', N'CLAYTON LAKE', N'ME', 46.509, -69.6504)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112309, N'04738', N'CROUSEVILLE', N'ME', 46.7552, -68.0968)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112310, N'04739', N'EAGLE LAKE', N'ME', 47.0401, -68.5902)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112311, N'04740', N'EASTON', N'ME', 46.6265, -67.8885)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112312, N'04741', N'ESTCOURT STATION', N'ME', 47.4422, -69.2101)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112313, N'04742', N'FORT FAIRFIELD', N'ME', 46.7219, -67.8585)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112314, N'04743', N'FORT KENT', N'ME', 47.0224, -68.6923)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112315, N'04744', N'FORT KENT MILLS', N'ME', 47.2386, -68.5845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112316, N'04745', N'FRENCHVILLE', N'ME', 47.2794, -68.3812)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112317, N'04746', N'GRAND ISLE', N'ME', 47.2307, -68.1312)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112318, N'04747', N'ISLAND FALLS', N'ME', 46.0051, -68.2487)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112319, N'04750', N'LIMESTONE', N'ME', 46.9626, -67.8576)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112320, N'04751', N'LIMESTONE', N'ME', 46.9544, -67.8918)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112321, N'04756', N'MADAWASKA', N'ME', 47.2791, -68.3145)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112322, N'04757', N'MAPLETON', N'ME', 46.5489, -68.172)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112323, N'04758', N'MARS HILL', N'ME', 46.5413, -67.8411)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112324, N'04759', N'MASARDIS', N'ME', 46.5038, -68.3618)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112325, N'04760', N'MONTICELLO', N'ME', 46.31, -67.8456)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112326, N'04761', N'NEW LIMERICK', N'ME', 46.1261, -67.8406)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112327, N'04762', N'NEW SWEDEN', N'ME', 46.9668, -68.1186)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112328, N'04763', N'OAKFIELD', N'ME', 46.1057, -68.0971)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112329, N'04764', N'OXBOW', N'ME', 46.3687, -68.8957)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112330, N'04765', N'PATTEN', N'ME', 46.0685, -68.6029)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112331, N'04766', N'PERHAM', N'ME', 46.8442, -68.1979)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112332, N'04768', N'PORTAGE', N'ME', 46.7854, -68.6205)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112333, N'04769', N'PRESQUE ISLE', N'ME', 46.6358, -67.9882)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112334, N'04770', N'QUIMBY', N'ME', 46.9623, -68.6086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112335, N'04772', N'SAINT AGATHA', N'ME', 47.231, -68.343)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112336, N'04773', N'SAINT DAVID', N'ME', 47.3188, -68.2238)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112337, N'04774', N'SAINT FRANCIS', N'ME', 47.1951, -69.2728)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112338, N'04775', N'SHERIDAN', N'ME', 46.6572, -68.4057)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112339, N'04776', N'SHERMAN MILLS', N'ME', 45.8047, -68.2984)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112340, N'04777', N'SHERMAN STATION', N'ME', 45.87, -68.5179)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112341, N'04779', N'SINCLAIR', N'ME', 47.1619, -68.2532)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112342, N'04780', N'SMYRNA MILLS', N'ME', 46.2367, -68.3001)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112343, N'04781', N'WALLAGRASS', N'ME', 47.1558, -68.5775)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112344, N'04782', N'STACYVILLE', N'ME', 45.8637, -68.5058)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112345, N'04783', N'STOCKHOLM', N'ME', 47.0545, -68.2943)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112346, N'04785', N'VAN BUREN', N'ME', 47.123, -67.9773)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112347, N'04786', N'WASHBURN', N'ME', 46.806, -68.2216)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112348, N'04787', N'WESTFIELD', N'ME', 46.4995, -67.9694)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112349, N'04788', N'WINTERVILLE', N'ME', 46.9703, -68.5714)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112350, N'04841', N'ROCKLAND', N'ME', 44.1308, -69.1301)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112351, N'04843', N'CAMDEN', N'ME', 44.2288, -69.0887)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112352, N'04846', N'GLEN COVE', N'ME', 44.1363, -69.0957)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112353, N'04847', N'HOPE', N'ME', 44.2567, -69.1464)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112354, N'04848', N'ISLESBORO', N'ME', 44.3238, -68.9015)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112355, N'04849', N'LINCOLNVILLE', N'ME', 44.313, -69.0897)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112356, N'04850', N'LINCOLNVILLE CENTER', N'ME', 44.2989, -69.1047)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112357, N'04851', N'MATINICUS', N'ME', 43.857, -68.8876)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112358, N'04852', N'MONHEGAN', N'ME', 43.7656, -69.3124)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112359, N'04853', N'NORTH HAVEN', N'ME', 44.1539, -68.865)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112360, N'04854', N'OWLS HEAD', N'ME', 44.0696, -69.0926)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112361, N'04855', N'PORT CLYDE', N'ME', 43.9276, -69.2603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112362, N'04856', N'ROCKPORT', N'ME', 44.1792, -69.0943)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112363, N'04857', N'WILEYS CORNER', N'ME', 44.0007, -69.2013)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112364, N'04858', N'SOUTH THOMASTON', N'ME', 44.0462, -69.1459)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112365, N'04859', N'SPRUCE HEAD', N'ME', 44.0146, -69.1736)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112366, N'04860', N'TENANTS HARBOR', N'ME', 43.959, -69.2324)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112367, N'04861', N'THOMASTON', N'ME', 44.1022, -69.1857)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112368, N'04862', N'UNION', N'ME', 44.2596, -69.2573)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112369, N'04863', N'VINALHAVEN', N'ME', 44.0816, -68.843)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112370, N'04864', N'WARREN', N'ME', 44.1308, -69.2483)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112371, N'04865', N'WEST ROCKPORT', N'ME', 44.1907, -69.1472)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112372, N'04901', N'WATERVILLE', N'ME', 44.5354, -69.581)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112373, N'04903', N'WATERVILLE', N'ME', 44.5517, -69.6322)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112374, N'04910', N'ALBION', N'ME', 44.5226, -69.4499)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112375, N'04911', N'ANSON', N'ME', 44.7784, -69.9606)
GO
print 'Processed 1700 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112376, N'04912', N'ATHENS', N'ME', 44.9533, -69.6637)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112377, N'04915', N'BELFAST', N'ME', 44.4453, -69.0334)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112378, N'04917', N'BELGRADE', N'ME', 44.4579, -69.8586)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112379, N'04918', N'BELGRADE LAKES', N'ME', 44.5046, -69.8548)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112380, N'04920', N'BINGHAM', N'ME', 45.1348, -69.8823)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112381, N'04921', N'BROOKS', N'ME', 44.5719, -69.1432)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112382, N'04922', N'BURNHAM', N'ME', 44.6886, -69.3775)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112383, N'04923', N'CAMBRIDGE', N'ME', 45.0544, -69.428)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112384, N'04924', N'CANAAN', N'ME', 44.7427, -69.5366)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112385, N'04925', N'CARATUNK', N'ME', 45.2354, -69.9086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112386, N'04926', N'CHINA VILLAGE', N'ME', 44.4788, -69.5176)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112387, N'04927', N'CLINTON', N'ME', 44.6688, -69.538)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112388, N'04928', N'CORINNA', N'ME', 44.935, -69.2172)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112389, N'04929', N'DETROIT', N'ME', 44.7629, -69.3108)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112390, N'04930', N'DEXTER', N'ME', 45.0196, -69.2829)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112391, N'04932', N'DIXMONT', N'ME', 44.7007, -69.1015)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112392, N'04933', N'EAST NEWPORT', N'ME', 44.8208, -69.2232)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112393, N'04935', N'EAST VASSALBORO', N'ME', 44.4478, -69.6066)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112394, N'04936', N'EUSTIS', N'ME', 45.2635, -70.5567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112395, N'04937', N'FAIRFIELD', N'ME', 44.6391, -69.6765)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112396, N'04938', N'FARMINGTON', N'ME', 44.6583, -70.1012)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112397, N'04939', N'GARLAND', N'ME', 45.0384, -69.1606)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112398, N'04940', N'FARMINGTON FALLS', N'ME', 44.6205, -70.0758)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112399, N'04941', N'FREEDOM', N'ME', 44.4643, -69.3069)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112400, N'04942', N'HARMONY', N'ME', 45.0644, -69.6033)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112401, N'04943', N'HARTLAND', N'ME', 44.867, -69.5267)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112402, N'04944', N'HINCKLEY', N'ME', 44.6859, -69.6332)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112403, N'04945', N'JACKMAN', N'ME', 45.7142, -70.304)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112404, N'04947', N'KINGFIELD', N'ME', 45.0706, -70.2458)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112405, N'04949', N'LIBERTY', N'ME', 44.3671, -69.3404)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112406, N'04950', N'MADISON', N'ME', 44.8319, -69.8044)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112407, N'04951', N'MONROE', N'ME', 44.5924, -69.0434)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112408, N'04952', N'MORRILL', N'ME', 44.4103, -69.1515)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112409, N'04953', N'NEWPORT', N'ME', 44.8367, -69.2586)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112410, N'04954', N'NEW PORTLAND', N'ME', 44.8832, -70.0899)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112411, N'04955', N'NEW SHARON', N'ME', 44.615, -69.987)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112412, N'04956', N'NEW VINEYARD', N'ME', 44.8057, -70.1128)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112413, N'04957', N'NORRIDGEWOCK', N'ME', 44.6623, -69.8656)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112414, N'04958', N'NORTH ANSON', N'ME', 44.9516, -69.9465)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112415, N'04961', N'NEW PORTLAND', N'ME', 45.0341, -70.0886)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112416, N'04962', N'NORTH VASSALBORO', N'ME', 44.4821, -69.5784)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112417, N'04963', N'OAKLAND', N'ME', 44.496, -69.7504)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112418, N'04964', N'OQUOSSOC', N'ME', 44.9653, -70.7711)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112419, N'04965', N'PALMYRA', N'ME', 44.8573, -69.3696)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112420, N'04966', N'PHILLIPS', N'ME', 44.8921, -70.379)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112421, N'04967', N'PITTSFIELD', N'ME', 44.7813, -69.4377)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112422, N'04969', N'PLYMOUTH', N'ME', 44.7664, -69.2296)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112423, N'04970', N'RANGELEY', N'ME', 44.9631, -70.6504)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112424, N'04971', N'SAINT ALBANS', N'ME', 44.9345, -69.3908)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112425, N'04972', N'SANDY POINT', N'ME', 44.5148, -68.8136)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112426, N'04973', N'SEARSMONT', N'ME', 44.3736, -69.2181)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112427, N'04974', N'SEARSPORT', N'ME', 44.4959, -68.931)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112428, N'04975', N'SHAWMUT', N'ME', 44.6205, -69.5881)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112429, N'04976', N'SKOWHEGAN', N'ME', 44.8163, -69.6519)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112430, N'04978', N'SMITHFIELD', N'ME', 44.6345, -69.8002)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112431, N'04979', N'SOLON', N'ME', 44.9806, -69.8036)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112432, N'04981', N'STOCKTON SPRINGS', N'ME', 44.532, -68.8613)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112433, N'04982', N'STRATTON', N'ME', 45.1023, -70.4396)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112434, N'04983', N'STRONG', N'ME', 44.8564, -70.2117)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112435, N'04984', N'TEMPLE', N'ME', 44.6966, -70.2807)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112436, N'04985', N'WEST FORKS', N'ME', 45.3915, -69.9186)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112437, N'04986', N'THORNDIKE', N'ME', 44.5814, -69.2435)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112438, N'04987', N'TROY', N'ME', 44.6791, -69.2522)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112439, N'04988', N'UNITY', N'ME', 44.5885, -69.3433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112440, N'04989', N'VASSALBORO', N'ME', 44.4232, -69.6533)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112441, N'04992', N'WEST FARMINGTON', N'ME', 44.6626, -70.1559)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112442, N'05001', N'WHITE RIVER JUNCTION', N'VT', 43.6542, -72.3994)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112443, N'05009', N'WHITE RIVER JUNCTION', N'VT', 43.6487, -72.3194)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112444, N'05030', N'ASCUTNEY', N'VT', 43.4242, -72.4426)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112445, N'05031', N'BARNARD', N'VT', 43.7287, -72.6197)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112446, N'05032', N'BETHEL', N'VT', 43.8078, -72.6713)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112447, N'05033', N'BRADFORD', N'VT', 44.0089, -72.1564)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112448, N'05034', N'BRIDGEWATER', N'VT', 43.5719, -72.6371)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112449, N'05035', N'BRIDGEWATER CORNERS', N'VT', 43.6109, -72.6823)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112450, N'05036', N'BROOKFIELD', N'VT', 44.0309, -72.5933)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112451, N'05037', N'BROWNSVILLE', N'VT', 43.4593, -72.4919)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112452, N'05038', N'CHELSEA', N'VT', 44.0071, -72.4957)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112453, N'05039', N'CORINTH', N'VT', 44.0361, -72.2949)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112454, N'05040', N'EAST CORINTH', N'VT', 44.0592, -72.2047)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112455, N'05041', N'EAST RANDOLPH', N'VT', 43.9542, -72.5457)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112456, N'05042', N'EAST RYEGATE', N'VT', 44.1959, -72.0788)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112457, N'05043', N'EAST THETFORD', N'VT', 43.8177, -72.199)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112458, N'05045', N'FAIRLEE', N'VT', 43.9127, -72.1951)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112459, N'05046', N'GROTON', N'VT', 44.2342, -72.2619)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112460, N'05047', N'HARTFORD', N'VT', 43.6606, -72.3386)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112461, N'05048', N'HARTLAND', N'VT', 43.5788, -72.4187)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112462, N'05049', N'HARTLAND FOUR CORNERS', N'VT', 43.5466, -72.4252)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112463, N'05050', N'MC INDOE FALLS', N'VT', 44.2588, -72.0585)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112464, N'05051', N'NEWBURY', N'VT', 44.1081, -72.1208)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112465, N'05052', N'NORTH HARTLAND', N'VT', 43.5975, -72.3501)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112466, N'05053', N'NORTH POMFRET', N'VT', 43.7195, -72.4837)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112467, N'05054', N'NORTH THETFORD', N'VT', 43.8432, -72.1863)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112468, N'05055', N'NORWICH', N'VT', 43.7524, -72.318)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112469, N'05056', N'PLYMOUTH', N'VT', 43.5113, -72.7233)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112470, N'05058', N'POST MILLS', N'VT', 43.8922, -72.2669)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112471, N'05059', N'QUECHEE', N'VT', 43.6456, -72.4554)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112472, N'05060', N'RANDOLPH', N'VT', 43.9694, -72.6877)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112473, N'05061', N'RANDOLPH CENTER', N'VT', 43.9336, -72.5899)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112474, N'05062', N'READING', N'VT', 43.4984, -72.5943)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112475, N'05065', N'SHARON', N'VT', 43.78, -72.4059)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112476, N'05067', N'SOUTH POMFRET', N'VT', 43.6849, -72.518)
GO
print 'Processed 1800 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112477, N'05068', N'SOUTH ROYALTON', N'VT', 43.7658, -72.5431)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112478, N'05069', N'SOUTH RYEGATE', N'VT', 44.2289, -72.124)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112479, N'05070', N'SOUTH STRAFFORD', N'VT', 43.8325, -72.3769)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112480, N'05071', N'SOUTH WOODSTOCK', N'VT', 43.5613, -72.5511)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112481, N'05072', N'STRAFFORD', N'VT', 43.8773, -72.3673)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112482, N'05073', N'TAFTSVILLE', N'VT', 43.6289, -72.4608)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112483, N'05074', N'THETFORD', N'VT', 43.8199, -72.2264)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112484, N'05075', N'THETFORD CENTER', N'VT', 43.8204, -72.274)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112485, N'05076', N'EAST CORINTH', N'VT', 44.0639, -72.2226)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112486, N'05077', N'TUNBRIDGE', N'VT', 43.9133, -72.472)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112487, N'05079', N'VERSHIRE', N'VT', 43.9562, -72.3243)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112488, N'05081', N'WELLS RIVER', N'VT', 44.156, -72.0703)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112489, N'05083', N'WEST FAIRLEE', N'VT', 43.9359, -72.2491)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112490, N'05084', N'WEST HARTFORD', N'VT', 43.7148, -72.4146)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112491, N'05085', N'WEST NEWBURY', N'VT', 44.0666, -72.0939)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112492, N'05086', N'WEST TOPSHAM', N'VT', 44.1344, -72.2538)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112493, N'05088', N'WILDER', N'VT', 43.6725, -72.3092)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112494, N'05089', N'WINDSOR', N'VT', 43.4897, -72.4482)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112495, N'05091', N'WOODSTOCK', N'VT', 43.6371, -72.5536)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112496, N'05101', N'BELLOWS FALLS', N'VT', 43.1826, -72.5005)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112497, N'05141', N'CAMBRIDGEPORT', N'VT', 43.1521, -72.5679)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112498, N'05142', N'CAVENDISH', N'VT', 43.3717, -72.6011)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112499, N'05143', N'CHESTER', N'VT', 43.2811, -72.6352)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112500, N'05144', N'CHESTER DEPOT', N'VT', 43.3606, -72.5739)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112501, N'05146', N'GRAFTON', N'VT', 43.1669, -72.6139)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112502, N'05148', N'LONDONDERRY', N'VT', 43.2271, -72.7982)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112503, N'05149', N'LUDLOW', N'VT', 43.3729, -72.7116)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112504, N'05150', N'NORTH SPRINGFIELD', N'VT', 43.3334, -72.5355)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112505, N'05151', N'PERKINSVILLE', N'VT', 43.3938, -72.5025)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112506, N'05152', N'PERU', N'VT', 43.2568, -72.9061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112507, N'05153', N'PROCTORSVILLE', N'VT', 43.4162, -72.6048)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112508, N'05154', N'SAXTONS RIVER', N'VT', 43.1345, -72.5045)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112509, N'05155', N'SOUTH LONDONDERRY', N'VT', 43.1801, -72.7918)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112510, N'05156', N'SPRINGFIELD', N'VT', 43.3096, -72.4675)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112511, N'05158', N'WESTMINSTER', N'VT', 43.0679, -72.4594)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112512, N'05159', N'WESTMINSTER STATION', N'VT', 43.0873, -72.4468)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112513, N'05161', N'WESTON', N'VT', 43.3149, -72.8059)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112514, N'05201', N'BENNINGTON', N'VT', 42.9148, -73.1152)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112515, N'05250', N'ARLINGTON', N'VT', 43.1041, -73.154)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112516, N'05251', N'DORSET', N'VT', 43.2618, -73.0663)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112517, N'05252', N'EAST ARLINGTON', N'VT', 43.0661, -73.1407)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112518, N'05253', N'EAST DORSET', N'VT', 43.2476, -72.9959)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112519, N'05254', N'MANCHESTER', N'VT', 43.1635, -73.0724)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112520, N'05255', N'MANCHESTER CENTER', N'VT', 43.1654, -73.0677)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112521, N'05257', N'NORTH BENNINGTON', N'VT', 42.9246, -73.2476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112522, N'05260', N'NORTH POWNAL', N'VT', 42.8198, -73.2486)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112523, N'05261', N'POWNAL', N'VT', 42.7845, -73.2029)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112524, N'05262', N'SHAFTSBURY', N'VT', 42.9815, -73.2071)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112525, N'05301', N'BRATTLEBORO', N'VT', 42.8513, -72.6568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112526, N'05302', N'BRATTLEBORO', N'VT', 42.8509, -72.5584)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112527, N'05303', N'BRATTLEBORO', N'VT', 42.8509, -72.5584)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112528, N'05304', N'BRATTLEBORO', N'VT', 42.8509, -72.5584)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112529, N'05340', N'BONDVILLE', N'VT', 43.1615, -72.9333)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112530, N'05341', N'EAST DOVER', N'VT', 42.9533, -72.7806)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112531, N'05342', N'JACKSONVILLE', N'VT', 42.7693, -72.7983)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112532, N'05343', N'JAMAICA', N'VT', 43.1008, -72.8076)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112533, N'05344', N'MARLBORO', N'VT', 42.8549, -72.6883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112534, N'05345', N'NEWFANE', N'VT', 42.9702, -72.7007)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112535, N'05346', N'PUTNEY', N'VT', 43.041, -72.534)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112536, N'05350', N'READSBORO', N'VT', 42.7989, -72.9719)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112537, N'05351', N'SOUTH NEWFANE', N'VT', 42.9332, -72.7094)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112538, N'05352', N'STAMFORD', N'VT', 42.788, -73.0785)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112539, N'05353', N'TOWNSHEND', N'VT', 43.0642, -72.6668)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112540, N'05354', N'VERNON', N'VT', 42.7614, -72.5261)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112541, N'05355', N'WARDSBORO', N'VT', 43.0205, -72.8064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112542, N'05356', N'WEST DOVER', N'VT', 42.9652, -72.9074)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112543, N'05357', N'WEST DUMMERSTON', N'VT', 42.9264, -72.6159)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112544, N'05358', N'WEST HALIFAX', N'VT', 42.7575, -72.7347)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112545, N'05359', N'WEST TOWNSHEND', N'VT', 43.1371, -72.7155)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112546, N'05360', N'WEST WARDSBORO', N'VT', 43.0569, -72.9254)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112547, N'05361', N'WHITINGHAM', N'VT', 42.7839, -72.8714)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112548, N'05362', N'WILLIAMSVILLE', N'VT', 42.9481, -72.6584)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112549, N'05363', N'WILMINGTON', N'VT', 42.883, -72.8981)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112550, N'05401', N'BURLINGTON', N'VT', 44.4902, -73.2253)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112551, N'05402', N'BURLINGTON', N'VT', 44.4756, -73.2126)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112552, N'05403', N'SOUTH BURLINGTON', N'VT', 44.446, -73.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112553, N'05404', N'WINOOSKI', N'VT', 44.4955, -73.1839)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112554, N'05405', N'BURLINGTON', N'VT', 44.4756, -73.2126)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112555, N'05406', N'BURLINGTON', N'VT', 44.4756, -73.2126)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112556, N'05407', N'SOUTH BURLINGTON', N'VT', 44.4756, -73.2126)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112557, N'05439', N'COLCHESTER', N'VT', 44.5437, -73.1485)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112558, N'05440', N'ALBURG', N'VT', 44.9593, -73.2797)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112559, N'05441', N'BAKERSFIELD', N'VT', 44.7935, -72.7796)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112560, N'05442', N'BELVIDERE CENTER', N'VT', 44.7502, -72.6885)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112561, N'05443', N'BRISTOL', N'VT', 44.1404, -73.0493)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112562, N'05444', N'CAMBRIDGE', N'VT', 44.6543, -72.8545)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112563, N'05445', N'CHARLOTTE', N'VT', 44.3105, -73.222)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112564, N'05446', N'COLCHESTER', N'VT', 44.5489, -73.1859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112565, N'05447', N'EAST BERKSHIRE', N'VT', 44.9297, -72.7081)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112566, N'05448', N'EAST FAIRFIELD', N'VT', 44.8008, -72.9155)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112567, N'05449', N'COLCHESTER', N'VT', 44.5437, -73.1485)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112568, N'05450', N'ENOSBURG FALLS', N'VT', 44.8764, -72.758)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112569, N'05451', N'ESSEX', N'VT', 44.5215, -73.0608)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112570, N'05452', N'ESSEX JUNCTION', N'VT', 44.5358, -73.0548)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112571, N'05453', N'ESSEX JUNCTION', N'VT', 44.4908, -73.1116)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112572, N'05454', N'FAIRFAX', N'VT', 44.6985, -73.0181)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112573, N'05455', N'FAIRFIELD', N'VT', 44.782, -73.0156)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112574, N'05456', N'FERRISBURG', N'VT', 44.2091, -73.2784)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112575, N'05457', N'FRANKLIN', N'VT', 44.9656, -72.8975)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112576, N'05458', N'GRAND ISLE', N'VT', 44.717, -73.3067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112577, N'05459', N'HIGHGATE CENTER', N'VT', 44.958, -72.9958)
GO
print 'Processed 1900 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112578, N'05460', N'HIGHGATE SPRINGS', N'VT', 44.9766, -73.1054)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112579, N'05461', N'HINESBURG', N'VT', 44.3224, -73.1146)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112580, N'05462', N'HUNTINGTON', N'VT', 44.3099, -72.982)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112581, N'05463', N'ISLE LA MOTTE', N'VT', 44.8696, -73.341)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112582, N'05464', N'JEFFERSONVILLE', N'VT', 44.6639, -72.7787)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112583, N'05465', N'JERICHO', N'VT', 44.4697, -72.9617)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112584, N'05466', N'JONESVILLE', N'VT', 44.3836, -72.9382)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112585, N'05468', N'MILTON', N'VT', 44.6579, -73.1453)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112586, N'05469', N'MONKTON', N'VT', 44.2388, -73.1483)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112587, N'05470', N'MONTGOMERY', N'VT', 44.9025, -72.6386)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112588, N'05471', N'MONTGOMERY CENTER', N'VT', 44.8557, -72.6016)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112589, N'05472', N'NEW HAVEN', N'VT', 44.1133, -73.1748)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112590, N'05473', N'NORTH FERRISBURG', N'VT', 44.2438, -73.1915)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112591, N'05474', N'NORTH HERO', N'VT', 44.841, -73.2779)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112592, N'05476', N'RICHFORD', N'VT', 44.959, -72.6873)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112593, N'05477', N'RICHMOND', N'VT', 44.3856, -73.0087)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112594, N'05478', N'SAINT ALBANS', N'VT', 44.8111, -73.0813)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112595, N'05479', N'SAINT ALBANS', N'VT', 44.8106, -73.0836)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112596, N'05481', N'SAINT ALBANS BAY', N'VT', 44.8073, -73.1398)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112597, N'05482', N'SHELBURNE', N'VT', 44.3848, -73.2103)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112598, N'05483', N'SHELDON', N'VT', 44.8776, -72.9201)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112599, N'05485', N'SHELDON SPRINGS', N'VT', 44.9056, -72.981)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112600, N'05486', N'SOUTH HERO', N'VT', 44.6397, -73.3099)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112601, N'05487', N'STARKSBORO', N'VT', 44.2287, -72.9928)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112602, N'05488', N'SWANTON', N'VT', 44.9002, -73.1493)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112603, N'05489', N'UNDERHILL', N'VT', 44.5378, -72.8938)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112604, N'05490', N'UNDERHILL CENTER', N'VT', 44.5077, -72.9)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112605, N'05491', N'VERGENNES', N'VT', 44.0804, -73.3324)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112606, N'05492', N'WATERVILLE', N'VT', 44.7163, -72.7538)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112607, N'05494', N'WESTFORD', N'VT', 44.6144, -72.9935)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112608, N'05495', N'WILLISTON', N'VT', 44.4289, -73.0926)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112609, N'05501', N'ANDOVER', N'MA', 42.6495, -71.1838)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112610, N'05544', N'ANDOVER', N'MA', 42.6586, -71.1377)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112611, N'05601', N'MONTPELIER', N'VT', 44.2601, -72.5759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112612, N'05602', N'MONTPELIER', N'VT', 44.2861, -72.6004)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112613, N'05603', N'MONTPELIER', N'VT', 44.2601, -72.5759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112614, N'05604', N'MONTPELIER', N'VT', 44.2601, -72.5759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112615, N'05609', N'MONTPELIER', N'VT', 44.2601, -72.5759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112616, N'05620', N'MONTPELIER', N'VT', 44.2601, -72.5759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112617, N'05633', N'MONTPELIER', N'VT', 44.2601, -72.5759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112618, N'05640', N'ADAMANT', N'VT', 44.3574, -72.5081)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112619, N'05641', N'BARRE', N'VT', 44.1738, -72.4252)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112620, N'05647', N'CABOT', N'VT', 44.4018, -72.2973)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112621, N'05648', N'CALAIS', N'VT', 44.3972, -72.4783)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112622, N'05649', N'EAST BARRE', N'VT', 44.1566, -72.4462)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112623, N'05650', N'EAST CALAIS', N'VT', 44.3541, -72.4394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112624, N'05651', N'EAST MONTPELIER', N'VT', 44.2812, -72.4877)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112625, N'05652', N'EDEN', N'VT', 44.7431, -72.6213)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112626, N'05653', N'EDEN MILLS', N'VT', 44.6926, -72.4893)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112627, N'05654', N'GRANITEVILLE', N'VT', 44.1498, -72.4699)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112628, N'05655', N'HYDE PARK', N'VT', 44.6312, -72.5687)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112629, N'05656', N'JOHNSON', N'VT', 44.6472, -72.6854)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112630, N'05657', N'LAKE ELMORE', N'VT', 44.5407, -72.5287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112631, N'05658', N'MARSHFIELD', N'VT', 44.3154, -72.3611)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112632, N'05660', N'MORETOWN', N'VT', 44.2533, -72.7398)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112633, N'05661', N'MORRISVILLE', N'VT', 44.5482, -72.6315)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112634, N'05662', N'MOSCOW', N'VT', 44.4415, -72.7159)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112635, N'05663', N'NORTHFIELD', N'VT', 44.1563, -72.6732)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112636, N'05664', N'NORTHFIELD FALLS', N'VT', 44.1716, -72.6515)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112637, N'05665', N'NORTH HYDE PARK', N'VT', 44.6706, -72.5988)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112638, N'05666', N'NORTH MONTPELIER', N'VT', 44.2504, -72.4954)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112639, N'05667', N'PLAINFIELD', N'VT', 44.2439, -72.4074)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112640, N'05669', N'ROXBURY', N'VT', 44.0701, -72.7276)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112641, N'05670', N'SOUTH BARRE', N'VT', 44.1679, -72.5002)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112642, N'05671', N'WATERBURY', N'VT', 44.3379, -72.7564)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112643, N'05672', N'STOWE', N'VT', 44.4815, -72.7219)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112644, N'05673', N'WAITSFIELD', N'VT', 44.1924, -72.8443)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112645, N'05674', N'WARREN', N'VT', 44.1108, -72.8612)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112646, N'05675', N'WASHINGTON', N'VT', 44.0671, -72.4216)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112647, N'05676', N'WATERBURY', N'VT', 44.3961, -72.808)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112648, N'05677', N'WATERBURY CENTER', N'VT', 44.3956, -72.7135)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112649, N'05678', N'WEBSTERVILLE', N'VT', 44.1967, -72.5027)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112650, N'05679', N'WILLIAMSTOWN', N'VT', 44.1057, -72.542)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112651, N'05680', N'WOLCOTT', N'VT', 44.5359, -72.4842)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112652, N'05681', N'WOODBURY', N'VT', 44.4448, -72.4064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112653, N'05682', N'WORCESTER', N'VT', 44.4125, -72.5732)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112654, N'05701', N'RUTLAND', N'VT', 43.6369, -72.9375)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112655, N'05702', N'RUTLAND', N'VT', 43.6106, -72.9731)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112656, N'05730', N'BELMONT', N'VT', 43.4328, -72.8194)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112657, N'05731', N'BENSON', N'VT', 43.7066, -73.3118)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112658, N'05732', N'BOMOSEEN', N'VT', 43.6297, -73.1988)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112659, N'05733', N'BRANDON', N'VT', 43.8209, -73.0875)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112660, N'05734', N'BRIDPORT', N'VT', 43.9463, -73.353)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112661, N'05735', N'CASTLETON', N'VT', 43.6401, -73.1505)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112662, N'05736', N'CENTER RUTLAND', N'VT', 43.6053, -73.0206)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112663, N'05737', N'CHITTENDEN', N'VT', 43.6989, -72.9221)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112664, N'05738', N'CUTTINGSVILLE', N'VT', 43.5432, -72.8545)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112665, N'05739', N'DANBY', N'VT', 43.3492, -72.9643)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112666, N'05740', N'EAST MIDDLEBURY', N'VT', 43.9734, -73.1064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112667, N'05741', N'EAST POULTNEY', N'VT', 43.5266, -73.2052)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112668, N'05742', N'EAST WALLINGFORD', N'VT', 43.4333, -72.8775)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112669, N'05743', N'FAIR HAVEN', N'VT', 43.6641, -73.2988)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112670, N'05744', N'FLORENCE', N'VT', 43.7085, -73.0893)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112671, N'05745', N'FOREST DALE', N'VT', 43.8284, -73.0546)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112672, N'05746', N'GAYSVILLE', N'VT', 43.7345, -72.7435)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112673, N'05747', N'GRANVILLE', N'VT', 44.0055, -72.8396)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112674, N'05748', N'HANCOCK', N'VT', 43.9181, -72.9185)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112675, N'05750', N'HYDEVILLE', N'VT', 43.6402, -73.2259)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112676, N'05751', N'KILLINGTON', N'VT', 43.6542, -72.7892)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112677, N'05753', N'MIDDLEBURY', N'VT', 43.9961, -73.1846)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112678, N'05757', N'MIDDLETOWN SPRINGS', N'VT', 43.4849, -73.1112)
GO
print 'Processed 2000 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112679, N'05758', N'MOUNT HOLLY', N'VT', 43.437, -72.7883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112680, N'05759', N'NORTH CLARENDON', N'VT', 43.5396, -72.9631)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112681, N'05760', N'ORWELL', N'VT', 43.7849, -73.292)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112682, N'05761', N'PAWLET', N'VT', 43.358, -73.1349)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112683, N'05762', N'PITTSFIELD', N'VT', 43.7707, -72.8983)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112684, N'05763', N'PITTSFORD', N'VT', 43.7419, -73.0064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112685, N'05764', N'POULTNEY', N'VT', 43.5323, -73.1932)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112686, N'05765', N'PROCTOR', N'VT', 43.6518, -73.0368)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112687, N'05766', N'RIPTON', N'VT', 43.997, -72.9858)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112688, N'05767', N'ROCHESTER', N'VT', 43.8653, -72.8298)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112689, N'05768', N'RUPERT', N'VT', 43.2576, -73.2255)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112690, N'05769', N'SALISBURY', N'VT', 43.9003, -73.1021)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112691, N'05770', N'SHOREHAM', N'VT', 43.8808, -73.3057)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112692, N'05772', N'STOCKBRIDGE', N'VT', 43.7709, -72.7867)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112693, N'05773', N'WALLINGFORD', N'VT', 43.4377, -73.0014)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112694, N'05774', N'WELLS', N'VT', 43.4337, -73.1969)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112695, N'05775', N'WEST PAWLET', N'VT', 43.3626, -73.2252)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112696, N'05776', N'WEST RUPERT', N'VT', 43.2636, -73.1905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112697, N'05777', N'WEST RUTLAND', N'VT', 43.5746, -73.0567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112698, N'05778', N'WHITING', N'VT', 43.8779, -73.2144)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112699, N'05819', N'SAINT JOHNSBURY', N'VT', 44.4161, -71.9767)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112700, N'05820', N'ALBANY', N'VT', 44.7339, -72.3378)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112701, N'05821', N'BARNET', N'VT', 44.3148, -72.091)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112702, N'05822', N'BARTON', N'VT', 44.733, -72.1243)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112703, N'05823', N'BEEBE PLAIN', N'VT', 45.0053, -72.1413)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112704, N'05824', N'CONCORD', N'VT', 44.4417, -71.859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112705, N'05825', N'COVENTRY', N'VT', 44.8846, -72.2465)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112706, N'05826', N'CRAFTSBURY', N'VT', 44.6462, -72.3558)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112707, N'05827', N'CRAFTSBURY COMMON', N'VT', 44.6584, -72.4169)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112708, N'05828', N'DANVILLE', N'VT', 44.4387, -72.1135)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112709, N'05829', N'DERBY', N'VT', 44.9371, -72.135)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112710, N'05830', N'DERBY LINE', N'VT', 44.9734, -72.0075)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112711, N'05832', N'EAST BURKE', N'VT', 44.6047, -71.9209)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112712, N'05833', N'EAST CHARLESTON', N'VT', 44.8262, -71.9774)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112713, N'05836', N'EAST HARDWICK', N'VT', 44.5328, -72.302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112714, N'05837', N'EAST HAVEN', N'VT', 44.6554, -71.8229)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112715, N'05838', N'EAST SAINT JOHNSBURY', N'VT', 44.4387, -71.9463)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112716, N'05839', N'GLOVER', N'VT', 44.6914, -72.2162)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112717, N'05840', N'GRANBY', N'VT', 44.5709, -71.7595)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112718, N'05841', N'GREENSBORO', N'VT', 44.6053, -72.2895)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112719, N'05842', N'GREENSBORO BEND', N'VT', 44.542, -72.2145)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112720, N'05843', N'HARDWICK', N'VT', 44.5213, -72.3604)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112721, N'05845', N'IRASBURG', N'VT', 44.8143, -72.284)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112722, N'05846', N'ISLAND POND', N'VT', 44.7725, -71.8101)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112723, N'05847', N'LOWELL', N'VT', 44.7916, -72.4567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112724, N'05848', N'LOWER WATERFORD', N'VT', 44.3547, -71.9077)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112725, N'05849', N'LYNDON', N'VT', 44.5145, -72.0116)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112726, N'05850', N'LYNDON CENTER', N'VT', 44.5583, -72.0479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112727, N'05851', N'LYNDONVILLE', N'VT', 44.5541, -72.0612)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112728, N'05853', N'MORGAN', N'VT', 44.8955, -71.9637)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112729, N'05855', N'NEWPORT', N'VT', 44.9201, -72.2004)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112730, N'05857', N'NEWPORT CENTER', N'VT', 44.9342, -72.3073)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112731, N'05858', N'NORTH CONCORD', N'VT', 44.5627, -71.7775)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112732, N'05859', N'NORTH TROY', N'VT', 44.967, -72.4837)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112733, N'05860', N'ORLEANS', N'VT', 44.7955, -72.0983)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112734, N'05861', N'PASSUMPSIC', N'VT', 44.3801, -72.0925)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112735, N'05862', N'PEACHAM', N'VT', 44.3331, -72.2067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112736, N'05863', N'SAINT JOHNSBURY CENTER', N'VT', 44.457, -72.0073)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112737, N'05866', N'SHEFFIELD', N'VT', 44.6401, -72.1245)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112738, N'05867', N'SUTTON', N'VT', 44.6632, -72.0391)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112739, N'05868', N'TROY', N'VT', 44.9393, -72.3826)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112740, N'05871', N'WEST BURKE', N'VT', 44.6977, -71.9302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112741, N'05872', N'WEST CHARLESTON', N'VT', 44.8666, -72.0503)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112742, N'05873', N'WEST DANVILLE', N'VT', 44.4635, -72.2231)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112743, N'05874', N'WESTFIELD', N'VT', 44.8799, -72.4718)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112744, N'05875', N'WEST GLOVER', N'VT', 44.6943, -72.2668)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112745, N'05901', N'AVERILL', N'VT', 44.9269, -71.6883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112746, N'05902', N'BEECHER FALLS', N'VT', 45.0076, -71.516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112747, N'05903', N'CANAAN', N'VT', 44.9747, -71.584)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112748, N'05904', N'GILMAN', N'VT', 44.4155, -71.7163)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112749, N'05905', N'GUILDHALL', N'VT', 44.7348, -71.6296)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112750, N'05906', N'LUNENBURG', N'VT', 44.4777, -71.7112)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112751, N'05907', N'NORTON', N'VT', 44.9411, -71.8206)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112752, N'06001', N'AVON', N'CT', 41.7904, -72.8686)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112753, N'06002', N'BLOOMFIELD', N'CT', 41.8428, -72.7407)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112754, N'06006', N'WINDSOR', N'CT', 41.8525, -72.6443)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112755, N'06010', N'BRISTOL', N'CT', 41.6812, -72.9401)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112756, N'06011', N'BRISTOL', N'CT', 41.6714, -72.9494)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112757, N'06013', N'BURLINGTON', N'CT', 41.7592, -72.9592)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112758, N'06016', N'BROAD BROOK', N'CT', 41.9042, -72.5445)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112759, N'06018', N'CANAAN', N'CT', 42.0294, -73.3073)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112760, N'06019', N'CANTON', N'CT', 41.848, -72.8944)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112761, N'06020', N'CANTON CENTER', N'CT', 41.8586, -72.9136)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112762, N'06021', N'COLEBROOK', N'CT', 42.0286, -73.1037)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112763, N'06022', N'COLLINSVILLE', N'CT', 41.8662, -72.9338)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112764, N'06023', N'EAST BERLIN', N'CT', 41.6148, -72.7202)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112765, N'06024', N'EAST CANAAN', N'CT', 42.013, -73.2758)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112766, N'06025', N'EAST GLASTONBURY', N'CT', 41.6972, -72.5347)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112767, N'06026', N'EAST GRANBY', N'CT', 41.9426, -72.7409)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112768, N'06027', N'EAST HARTLAND', N'CT', 42.0033, -72.9462)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112769, N'06028', N'EAST WINDSOR HILL', N'CT', 41.8478, -72.5961)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112770, N'06029', N'ELLINGTON', N'CT', 41.915, -72.453)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112771, N'06030', N'FARMINGTON', N'CT', 41.7197, -72.8326)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112772, N'06031', N'FALLS VILLAGE', N'CT', 41.9623, -73.3235)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112773, N'06032', N'FARMINGTON', N'CT', 41.7251, -72.8318)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112774, N'06033', N'GLASTONBURY', N'CT', 41.7043, -72.5377)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112775, N'06034', N'FARMINGTON', N'CT', 41.7197, -72.8326)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112776, N'06035', N'GRANBY', N'CT', 41.9592, -72.801)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112777, N'06037', N'BERLIN', N'CT', 41.611, -72.7774)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112778, N'06039', N'LAKEVILLE', N'CT', 41.9547, -73.4419)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112779, N'06040', N'MANCHESTER', N'CT', 41.7753, -72.5239)
GO
print 'Processed 2100 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112780, N'06041', N'MANCHESTER', N'CT', 41.7759, -72.5219)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112781, N'06043', N'BOLTON', N'CT', 41.7651, -72.4389)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112782, N'06045', N'MANCHESTER', N'CT', 41.7759, -72.5219)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112783, N'06049', N'MELROSE', N'CT', 41.9375, -72.5218)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112784, N'06050', N'NEW BRITAIN', N'CT', 41.6612, -72.7801)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112785, N'06051', N'NEW BRITAIN', N'CT', 41.665, -72.7692)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112786, N'06052', N'NEW BRITAIN', N'CT', 41.6543, -72.806)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112787, N'06053', N'NEW BRITAIN', N'CT', 41.6894, -72.7886)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112788, N'06057', N'NEW HARTFORD', N'CT', 41.8531, -73.0043)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112789, N'06058', N'NORFOLK', N'CT', 41.9787, -73.1959)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112790, N'06059', N'NORTH CANTON', N'CT', 41.9364, -72.9149)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112791, N'06060', N'NORTH GRANBY', N'CT', 42.0124, -72.8462)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112792, N'06061', N'PINE MEADOW', N'CT', 41.8757, -72.9667)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112793, N'06062', N'PLAINVILLE', N'CT', 41.6741, -72.8573)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112794, N'06063', N'BARKHAMSTED', N'CT', 41.9398, -72.9667)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112795, N'06064', N'POQUONOCK', N'CT', 41.9048, -72.6795)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112796, N'06065', N'RIVERTON', N'CT', 41.9527, -73.0051)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112797, N'06066', N'VERNON ROCKVILLE', N'CT', 41.837, -72.4608)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112798, N'06067', N'ROCKY HILL', N'CT', 41.6575, -72.6633)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112799, N'06068', N'SALISBURY', N'CT', 42.0235, -73.417)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112800, N'06069', N'SHARON', N'CT', 41.8554, -73.4421)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112801, N'06070', N'SIMSBURY', N'CT', 41.8901, -72.8259)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112802, N'06071', N'SOMERS', N'CT', 41.9956, -72.451)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112803, N'06072', N'SOMERSVILLE', N'CT', 41.9828, -72.4884)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112804, N'06073', N'SOUTH GLASTONBURY', N'CT', 41.6525, -72.5704)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112805, N'06074', N'SOUTH WINDSOR', N'CT', 41.8353, -72.5722)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112806, N'06075', N'STAFFORD', N'CT', 41.9848, -72.2896)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112807, N'06076', N'STAFFORD SPRINGS', N'CT', 41.9885, -72.2592)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112808, N'06077', N'STAFFORDVILLE', N'CT', 41.9938, -72.2594)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112809, N'06078', N'SUFFIELD', N'CT', 41.9892, -72.6521)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112810, N'06079', N'TACONIC', N'CT', 41.9834, -73.4219)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112811, N'06080', N'SUFFIELD', N'CT', 41.9856, -72.6423)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112812, N'06081', N'TARIFFVILLE', N'CT', 41.9063, -72.7688)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112813, N'06082', N'ENFIELD', N'CT', 41.9843, -72.5534)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112814, N'06083', N'ENFIELD', N'CT', 41.9761, -72.5922)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112815, N'06084', N'TOLLAND', N'CT', 41.8789, -72.3636)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112816, N'06085', N'UNIONVILLE', N'CT', 41.7443, -72.8907)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112817, N'06087', N'UNIONVILLE', N'CT', 41.7576, -72.8869)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112818, N'06088', N'EAST WINDSOR', N'CT', 41.9062, -72.5958)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112819, N'06089', N'WEATOGUE', N'CT', 41.8367, -72.8258)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112820, N'06090', N'WEST GRANBY', N'CT', 41.9557, -72.8584)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112821, N'06091', N'WEST HARTLAND', N'CT', 42.0139, -72.9682)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112822, N'06092', N'WEST SIMSBURY', N'CT', 41.861, -72.8566)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112823, N'06093', N'WEST SUFFIELD', N'CT', 42.0034, -72.7246)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112824, N'06094', N'WINCHESTER CENTER', N'CT', 41.9019, -73.136)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112825, N'06095', N'WINDSOR', N'CT', 41.8596, -72.6791)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112826, N'06096', N'WINDSOR LOCKS', N'CT', 41.9268, -72.6555)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112827, N'06098', N'WINSTED', N'CT', 41.9462, -73.0763)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112828, N'06101', N'HARTFORD', N'CT', 41.7826, -72.6613)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112829, N'06102', N'HARTFORD', N'CT', 41.7569, -72.6855)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112830, N'06103', N'HARTFORD', N'CT', 41.7665, -72.6731)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112831, N'06104', N'HARTFORD', N'CT', 41.7959, -72.6628)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112832, N'06105', N'HARTFORD', N'CT', 41.7741, -72.7035)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112833, N'06106', N'HARTFORD', N'CT', 41.7484, -72.6959)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112834, N'06107', N'WEST HARTFORD', N'CT', 41.7542, -72.7573)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112835, N'06108', N'EAST HARTFORD', N'CT', 41.781, -72.6206)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112836, N'06109', N'WETHERSFIELD', N'CT', 41.7005, -72.6721)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112837, N'06110', N'WEST HARTFORD', N'CT', 41.7325, -72.7334)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112838, N'06111', N'NEWINGTON', N'CT', 41.687, -72.7308)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112839, N'06112', N'HARTFORD', N'CT', 41.7934, -72.6965)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112840, N'06114', N'HARTFORD', N'CT', 41.7391, -72.6703)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112841, N'06115', N'HARTFORD', N'CT', 41.7672, -72.6729)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112842, N'06117', N'WEST HARTFORD', N'CT', 41.7863, -72.7619)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112843, N'06118', N'EAST HARTFORD', N'CT', 41.7491, -72.6088)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112844, N'06119', N'WEST HARTFORD', N'CT', 41.764, -72.7262)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112845, N'06120', N'HARTFORD', N'CT', 41.7893, -72.6669)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112846, N'06123', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112847, N'06126', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112848, N'06127', N'WEST HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112849, N'06128', N'EAST HARTFORD', N'CT', 41.7823, -72.6128)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112850, N'06129', N'WETHERSFIELD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112851, N'06131', N'NEWINGTON', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112852, N'06132', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112853, N'06133', N'WEST HARTFORD', N'CT', 41.7502, -72.705)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112854, N'06134', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112855, N'06137', N'WEST HARTFORD', N'CT', 41.5812, -72.8697)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112856, N'06138', N'EAST HARTFORD', N'CT', 41.7568, -72.6217)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112857, N'06140', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112858, N'06141', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112859, N'06142', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112860, N'06143', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112861, N'06144', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112862, N'06145', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112863, N'06146', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112864, N'06147', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112865, N'06150', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112866, N'06151', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112867, N'06152', N'HARTFORD', N'CT', 41.7666, -72.6825)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112868, N'06153', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112869, N'06154', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112870, N'06155', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112871, N'06156', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112872, N'06160', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112873, N'06161', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112874, N'06167', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112875, N'06176', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112876, N'06180', N'HARTFORD', N'CT', 41.7638, -72.6859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112877, N'06183', N'HARTFORD', N'CT', 41.7639, -72.6798)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112878, N'06199', N'HARTFORD', N'CT', 41.7944, -72.6594)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112879, N'06226', N'WILLIMANTIC', N'CT', 41.7073, -72.2065)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112880, N'06230', N'ABINGTON', N'CT', 41.8608, -72.0072)
GO
print 'Processed 2200 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112881, N'06231', N'AMSTON', N'CT', 41.6237, -72.3706)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112882, N'06232', N'ANDOVER', N'CT', 41.7331, -72.3759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112883, N'06233', N'BALLOUVILLE', N'CT', 41.8767, -71.8618)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112884, N'06234', N'BROOKLYN', N'CT', 41.7858, -71.9619)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112885, N'06235', N'CHAPLIN', N'CT', 41.8141, -72.1272)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112886, N'06237', N'COLUMBIA', N'CT', 41.6943, -72.3073)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112887, N'06238', N'COVENTRY', N'CT', 41.7832, -72.3394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112888, N'06239', N'DANIELSON', N'CT', 41.7938, -71.8615)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112889, N'06241', N'DAYVILLE', N'CT', 41.8579, -71.8498)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112890, N'06242', N'EASTFORD', N'CT', 41.8908, -72.0988)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112891, N'06243', N'EAST KILLINGLY', N'CT', 41.8492, -71.8163)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112892, N'06244', N'EAST WOODSTOCK', N'CT', 41.9874, -71.9754)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112893, N'06245', N'FABYAN', N'CT', 42.0137, -71.9406)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112894, N'06246', N'GROSVENOR DALE', N'CT', 41.9685, -71.8953)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112895, N'06247', N'HAMPTON', N'CT', 41.7686, -72.0636)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112896, N'06248', N'HEBRON', N'CT', 41.6833, -72.404)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112897, N'06249', N'LEBANON', N'CT', 41.6313, -72.24)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112898, N'06250', N'MANSFIELD CENTER', N'CT', 41.7742, -72.196)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112899, N'06251', N'MANSFIELD DEPOT', N'CT', 41.8014, -72.3066)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112900, N'06254', N'NORTH FRANKLIN', N'CT', 41.6187, -72.145)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112901, N'06255', N'NORTH GROSVENORDALE', N'CT', 41.987, -71.9027)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112902, N'06256', N'NORTH WINDHAM', N'CT', 41.7601, -72.123)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112903, N'06258', N'POMFRET', N'CT', 41.8975, -71.9631)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112904, N'06259', N'POMFRET CENTER', N'CT', 41.869, -71.9903)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112905, N'06260', N'PUTNAM', N'CT', 41.91, -71.8739)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112906, N'06262', N'QUINEBAUG', N'CT', 42.0134, -71.9535)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112907, N'06263', N'ROGERS', N'CT', 41.8404, -71.9064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112908, N'06264', N'SCOTLAND', N'CT', 41.6926, -72.0688)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112909, N'06265', N'SOUTH WILLINGTON', N'CT', 41.8564, -72.2998)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112910, N'06266', N'SOUTH WINDHAM', N'CT', 41.6699, -72.1667)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112911, N'06267', N'SOUTH WOODSTOCK', N'CT', 41.9395, -71.9589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112912, N'06268', N'STORRS MANSFIELD', N'CT', 41.8004, -72.2476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112913, N'06269', N'STORRS MANSFIELD', N'CT', 41.8088, -72.2487)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112914, N'06277', N'THOMPSON', N'CT', 41.9712, -71.8342)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112915, N'06278', N'ASHFORD', N'CT', 41.8891, -72.1701)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112916, N'06279', N'WILLINGTON', N'CT', 41.8841, -72.2663)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112917, N'06280', N'WINDHAM', N'CT', 41.697, -72.1375)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112918, N'06281', N'WOODSTOCK', N'CT', 41.9714, -72.0176)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112919, N'06282', N'WOODSTOCK VALLEY', N'CT', 41.9325, -72.091)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112920, N'06320', N'NEW LONDON', N'CT', 41.3514, -72.1063)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112921, N'06330', N'BALTIC', N'CT', 41.6375, -72.0613)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112922, N'06331', N'CANTERBURY', N'CT', 41.697, -71.9998)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112923, N'06332', N'CENTRAL VILLAGE', N'CT', 41.7322, -71.9057)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112924, N'06333', N'EAST LYME', N'CT', 41.3839, -72.2448)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112925, N'06334', N'BOZRAH', N'CT', 41.5453, -72.1744)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112926, N'06335', N'GALES FERRY', N'CT', 41.4317, -72.0593)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112927, N'06336', N'GILMAN', N'CT', 41.5805, -72.1258)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112928, N'06337', N'GLASGO', N'CT', 41.5556, -71.8888)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112929, N'06339', N'LEDYARD', N'CT', 41.4434, -71.9909)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112930, N'06340', N'GROTON', N'CT', 41.3595, -72.0439)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112931, N'06349', N'GROTON', N'CT', 41.3499, -72.0759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112932, N'06350', N'HANOVER', N'CT', 41.6425, -72.0658)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112933, N'06351', N'JEWETT CITY', N'CT', 41.6042, -71.9701)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112934, N'06353', N'MONTVILLE', N'CT', 41.4628, -72.1545)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112935, N'06354', N'MOOSUP', N'CT', 41.7038, -71.8568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112936, N'06355', N'MYSTIC', N'CT', 41.3658, -71.9769)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112937, N'06357', N'NIANTIC', N'CT', 41.3263, -72.2147)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112938, N'06359', N'NORTH STONINGTON', N'CT', 41.4698, -71.8749)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112939, N'06360', N'NORWICH', N'CT', 41.5523, -72.0921)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112940, N'06365', N'PRESTON', N'CT', 41.5117, -72.0176)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112941, N'06370', N'OAKDALE', N'CT', 41.4669, -72.1896)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112942, N'06371', N'OLD LYME', N'CT', 41.3657, -72.322)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112943, N'06372', N'OLD MYSTIC', N'CT', 41.3944, -71.941)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112944, N'06373', N'ONECO', N'CT', 41.6853, -71.8147)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112945, N'06374', N'PLAINFIELD', N'CT', 41.6798, -71.9151)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112946, N'06375', N'QUAKER HILL', N'CT', 41.4047, -72.1261)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112947, N'06376', N'SOUTH LYME', N'CT', 41.2916, -72.2579)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112948, N'06377', N'STERLING', N'CT', 41.732, -71.8171)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112949, N'06378', N'STONINGTON', N'CT', 41.3809, -71.9121)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112950, N'06379', N'PAWCATUCK', N'CT', 41.3689, -71.8603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112951, N'06380', N'TAFTVILLE', N'CT', 41.5633, -72.0536)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112952, N'06382', N'UNCASVILLE', N'CT', 41.4598, -72.125)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112953, N'06383', N'VERSAILLES', N'CT', 41.6017, -72.0379)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112954, N'06384', N'VOLUNTOWN', N'CT', 41.582, -71.8399)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112955, N'06385', N'WATERFORD', N'CT', 41.3583, -72.1558)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112956, N'06386', N'WATERFORD', N'CT', 41.3358, -72.1357)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112957, N'06387', N'WAUREGAN', N'CT', 41.7443, -71.9127)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112958, N'06388', N'WEST MYSTIC', N'CT', 41.3544, -71.9669)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112959, N'06389', N'YANTIC', N'CT', 41.5612, -72.1252)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112960, N'06390', N'FISHERS ISLAND', N'NY', 41.2702, -71.9882)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112961, N'06401', N'ANSONIA', N'CT', 41.3437, -73.0633)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112962, N'06403', N'BEACON FALLS', N'CT', 41.4392, -73.0568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112963, N'06404', N'BOTSFORD', N'CT', 41.3667, -73.2577)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112964, N'06405', N'BRANFORD', N'CT', 41.2857, -72.7978)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112965, N'06408', N'CHESHIRE', N'CT', 41.4989, -72.9011)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112966, N'06409', N'CENTERBROOK', N'CT', 41.3458, -72.4157)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112967, N'06410', N'CHESHIRE', N'CT', 41.5102, -72.9042)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112968, N'06411', N'CHESHIRE', N'CT', 41.4989, -72.9011)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112969, N'06412', N'CHESTER', N'CT', 41.4056, -72.4845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112970, N'06413', N'CLINTON', N'CT', 41.2993, -72.53)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112971, N'06414', N'COBALT', N'CT', 41.5636, -72.5568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112972, N'06415', N'COLCHESTER', N'CT', 41.5568, -72.3499)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112973, N'06416', N'CROMWELL', N'CT', 41.613, -72.6662)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112974, N'06417', N'DEEP RIVER', N'CT', 41.3686, -72.4636)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112975, N'06418', N'DERBY', N'CT', 41.3352, -73.101)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112976, N'06419', N'KILLINGWORTH', N'CT', 41.3791, -72.5783)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112977, N'06420', N'SALEM', N'CT', 41.4849, -72.267)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112978, N'06422', N'DURHAM', N'CT', 41.4623, -72.6829)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112979, N'06423', N'EAST HADDAM', N'CT', 41.466, -72.3865)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112980, N'06424', N'EAST HAMPTON', N'CT', 41.5612, -72.5084)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112981, N'06426', N'ESSEX', N'CT', 41.3525, -72.4022)
GO
print 'Processed 2300 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112982, N'06430', N'FAIRFIELD', N'CT', 41.1753, -73.2812)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112983, N'06431', N'FAIRFIELD', N'CT', 41.1412, -73.2645)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112984, N'06432', N'FAIRFIELD', N'CT', 41.1971, -73.2415)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112985, N'06436', N'GREENS FARMS', N'CT', 41.1211, -73.3176)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112986, N'06437', N'GUILFORD', N'CT', 41.335, -72.7006)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112987, N'06438', N'HADDAM', N'CT', 41.4527, -72.5083)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112988, N'06439', N'HADLYME', N'CT', 41.4216, -72.4194)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112989, N'06440', N'HAWLEYVILLE', N'CT', 41.4276, -73.3558)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112990, N'06441', N'HIGGANUM', N'CT', 41.4675, -72.581)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112991, N'06442', N'IVORYTON', N'CT', 41.3441, -72.4428)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112992, N'06443', N'MADISON', N'CT', 41.3395, -72.6283)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112993, N'06444', N'MARION', N'CT', 41.5625, -72.9343)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112994, N'06447', N'MARLBOROUGH', N'CT', 41.6329, -72.4547)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112995, N'06450', N'MERIDEN', N'CT', 41.533, -72.7742)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112996, N'06451', N'MERIDEN', N'CT', 41.5396, -72.8218)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112997, N'06454', N'MERIDEN', N'CT', 41.5381, -72.8076)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112998, N'06455', N'MIDDLEFIELD', N'CT', 41.5109, -72.7149)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (112999, N'06456', N'MIDDLE HADDAM', N'CT', 41.5568, -72.5548)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113000, N'06457', N'MIDDLETOWN', N'CT', 41.5474, -72.6585)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113001, N'06459', N'MIDDLETOWN', N'CT', 41.5625, -72.6511)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113002, N'06460', N'MILFORD', N'CT', 41.2265, -73.059)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113003, N'06467', N'MILLDALE', N'CT', 41.5655, -72.8922)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113004, N'06468', N'MONROE', N'CT', 41.3375, -73.2254)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113005, N'06469', N'MOODUS', N'CT', 41.5076, -72.4493)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113006, N'06470', N'NEWTOWN', N'CT', 41.3932, -73.3201)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113007, N'06471', N'NORTH BRANFORD', N'CT', 41.3352, -72.7743)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113008, N'06472', N'NORTHFORD', N'CT', 41.3848, -72.7787)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113009, N'06473', N'NORTH HAVEN', N'CT', 41.3808, -72.8559)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113010, N'06474', N'NORTH WESTCHESTER', N'CT', 41.5805, -72.4017)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113011, N'06475', N'OLD SAYBROOK', N'CT', 41.3026, -72.3883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113012, N'06477', N'ORANGE', N'CT', 41.2827, -73.0273)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113013, N'06478', N'OXFORD', N'CT', 41.4324, -73.1345)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113014, N'06479', N'PLANTSVILLE', N'CT', 41.576, -72.9033)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113015, N'06480', N'PORTLAND', N'CT', 41.5959, -72.5891)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113016, N'06481', N'ROCKFALL', N'CT', 41.5357, -72.7011)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113017, N'06482', N'SANDY HOOK', N'CT', 41.406, -73.2462)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113018, N'06483', N'SEYMOUR', N'CT', 41.3811, -73.0868)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113019, N'06484', N'SHELTON', N'CT', 41.3059, -73.1393)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113020, N'06487', N'SOUTH BRITAIN', N'CT', 41.4705, -73.2517)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113021, N'06488', N'SOUTHBURY', N'CT', 41.475, -73.2321)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113022, N'06489', N'SOUTHINGTON', N'CT', 41.6129, -72.8728)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113023, N'06490', N'SOUTHPORT', N'CT', 41.146, -73.2888)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113024, N'06491', N'STEVENSON', N'CT', 41.3833, -73.185)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113025, N'06492', N'WALLINGFORD', N'CT', 41.4588, -72.8041)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113026, N'06493', N'WALLINGFORD', N'CT', 41.4539, -72.8185)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113027, N'06494', N'WALLINGFORD', N'CT', 41.4569, -72.8238)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113028, N'06495', N'WALLINGFORD', N'CT', 41.4588, -72.8041)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113029, N'06497', N'STRATFORD', N'CT', 41.208, -73.1314)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113030, N'06498', N'WESTBROOK', N'CT', 41.3084, -72.4654)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113031, N'06501', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113032, N'06502', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113033, N'06503', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113034, N'06504', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113035, N'06505', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113036, N'06506', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113037, N'06507', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113038, N'06508', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113039, N'06509', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113040, N'06510', N'NEW HAVEN', N'CT', 41.3068, -72.9252)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113041, N'06511', N'NEW HAVEN', N'CT', 41.3183, -72.9264)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113042, N'06512', N'EAST HAVEN', N'CT', 41.2803, -72.8732)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113043, N'06513', N'NEW HAVEN', N'CT', 41.3223, -72.861)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113044, N'06514', N'HAMDEN', N'CT', 41.372, -72.9418)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113045, N'06515', N'NEW HAVEN', N'CT', 41.3258, -72.9705)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113046, N'06516', N'WEST HAVEN', N'CT', 41.2716, -72.9666)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113047, N'06517', N'HAMDEN', N'CT', 41.3475, -72.9054)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113048, N'06518', N'HAMDEN', N'CT', 41.4267, -72.9138)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113049, N'06519', N'NEW HAVEN', N'CT', 41.2953, -72.9349)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113050, N'06520', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113051, N'06521', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113052, N'06524', N'BETHANY', N'CT', 41.4258, -72.9931)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113053, N'06525', N'WOODBRIDGE', N'CT', 41.3563, -73.0104)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113054, N'06530', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113055, N'06531', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113056, N'06532', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113057, N'06533', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113058, N'06534', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113059, N'06535', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113060, N'06536', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113061, N'06537', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113062, N'06538', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113063, N'06540', N'NEW HAVEN', N'CT', 41.3083, -72.9287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113064, N'06601', N'BRIDGEPORT', N'CT', 41.1667, -73.2054)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113065, N'06602', N'BRIDGEPORT', N'CT', 41.1738, -73.1965)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113066, N'06604', N'BRIDGEPORT', N'CT', 41.1766, -73.2)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113067, N'06605', N'BRIDGEPORT', N'CT', 41.1639, -73.2176)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113068, N'06606', N'BRIDGEPORT', N'CT', 41.2119, -73.2091)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113069, N'06607', N'BRIDGEPORT', N'CT', 41.1772, -73.1663)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113070, N'06608', N'BRIDGEPORT', N'CT', 41.1877, -73.1806)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113071, N'06610', N'BRIDGEPORT', N'CT', 41.2047, -73.1693)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113072, N'06611', N'TRUMBULL', N'CT', 41.2599, -73.2099)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113073, N'06612', N'EASTON', N'CT', 41.2661, -73.3023)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113074, N'06614', N'STRATFORD', N'CT', 41.208, -73.1314)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113075, N'06615', N'STRATFORD', N'CT', 41.208, -73.1314)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113076, N'06650', N'BRIDGEPORT', N'CT', 41.1895, -73.1284)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113077, N'06673', N'BRIDGEPORT', N'CT', 41.1667, -73.2054)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113078, N'06699', N'BRIDGEPORT', N'CT', 41.1667, -73.2054)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113079, N'06701', N'WATERBURY', N'CT', 41.5584, -73.0516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113080, N'06702', N'WATERBURY', N'CT', 41.5582, -73.0461)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113081, N'06703', N'WATERBURY', N'CT', 41.5584, -73.0516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113082, N'06704', N'WATERBURY', N'CT', 41.5872, -73.0315)
GO
print 'Processed 2400 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113083, N'06705', N'WATERBURY', N'CT', 41.5488, -72.9932)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113084, N'06706', N'WATERBURY', N'CT', 41.5329, -73.0244)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113085, N'06708', N'WATERBURY', N'CT', 41.5493, -73.0677)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113086, N'06710', N'WATERBURY', N'CT', 41.5688, -73.0468)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113087, N'06712', N'PROSPECT', N'CT', 41.4992, -72.9761)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113088, N'06716', N'WOLCOTT', N'CT', 41.6004, -72.9736)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113089, N'06720', N'WATERBURY', N'CT', 41.5584, -73.0516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113090, N'06721', N'WATERBURY', N'CT', 41.5584, -73.0516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113091, N'06722', N'WATERBURY', N'CT', 41.5584, -73.0516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113092, N'06723', N'WATERBURY', N'CT', 41.5584, -73.0516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113093, N'06724', N'WATERBURY', N'CT', 41.5584, -73.0516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113094, N'06725', N'WATERBURY', N'CT', 41.5584, -73.0516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113095, N'06726', N'WATERBURY', N'CT', 41.5584, -73.0516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113096, N'06749', N'WATERBURY', N'CT', 41.5584, -73.0516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113097, N'06750', N'BANTAM', N'CT', 41.716, -73.258)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113098, N'06751', N'BETHLEHEM', N'CT', 41.6431, -73.2113)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113099, N'06752', N'BRIDGEWATER', N'CT', 41.5211, -73.3597)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113100, N'06753', N'CORNWALL', N'CT', 41.8439, -73.3294)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113101, N'06754', N'CORNWALL BRIDGE', N'CT', 41.7679, -73.3511)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113102, N'06755', N'GAYLORDSVILLE', N'CT', 41.6576, -73.479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113103, N'06756', N'GOSHEN', N'CT', 41.8504, -73.2333)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113104, N'06757', N'KENT', N'CT', 41.7482, -73.4659)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113105, N'06758', N'LAKESIDE', N'CT', 41.6911, -73.2478)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113106, N'06759', N'LITCHFIELD', N'CT', 41.7562, -73.2062)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113107, N'06762', N'MIDDLEBURY', N'CT', 41.5279, -73.1226)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113108, N'06763', N'MORRIS', N'CT', 41.6914, -73.1809)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113109, N'06770', N'NAUGATUCK', N'CT', 41.489, -73.0518)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113110, N'06776', N'NEW MILFORD', N'CT', 41.6202, -73.4053)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113111, N'06777', N'NEW PRESTON MARBLE DALE', N'CT', 41.6879, -73.3378)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113112, N'06778', N'NORTHFIELD', N'CT', 41.7162, -73.1032)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113113, N'06779', N'OAKVILLE', N'CT', 41.5955, -73.0808)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113114, N'06781', N'PEQUABUCK', N'CT', 41.6729, -72.9939)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113115, N'06782', N'PLYMOUTH', N'CT', 41.6514, -73.0444)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113116, N'06783', N'ROXBURY', N'CT', 41.5544, -73.3002)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113117, N'06784', N'SHERMAN', N'CT', 41.5795, -73.4985)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113118, N'06785', N'SOUTH KENT', N'CT', 41.6985, -73.4487)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113119, N'06786', N'TERRYVILLE', N'CT', 41.6729, -73.0143)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113120, N'06787', N'THOMASTON', N'CT', 41.6766, -73.0948)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113121, N'06790', N'TORRINGTON', N'CT', 41.8368, -73.1283)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113122, N'06791', N'HARWINTON', N'CT', 41.7549, -73.0582)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113123, N'06793', N'WASHINGTON', N'CT', 41.6326, -73.2874)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113124, N'06794', N'WASHINGTON DEPOT', N'CT', 41.6507, -73.3243)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113125, N'06795', N'WATERTOWN', N'CT', 41.6188, -73.1229)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113126, N'06796', N'WEST CORNWALL', N'CT', 41.8777, -73.3302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113127, N'06798', N'WOODBURY', N'CT', 41.5631, -73.2084)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113128, N'06801', N'BETHEL', N'CT', 41.3759, -73.3933)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113129, N'06804', N'BROOKFIELD', N'CT', 41.4668, -73.3928)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113130, N'06807', N'COS COB', N'CT', 41.0627, -73.5918)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113131, N'06810', N'DANBURY', N'CT', 41.3768, -73.4601)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113132, N'06811', N'DANBURY', N'CT', 41.4236, -73.4845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113133, N'06812', N'NEW FAIRFIELD', N'CT', 41.4862, -73.4974)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113134, N'06813', N'DANBURY', N'CT', 41.3948, -73.4544)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113135, N'06814', N'DANBURY', N'CT', 41.3948, -73.4544)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113136, N'06816', N'DANBURY', N'CT', 41.3948, -73.4544)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113137, N'06817', N'DANBURY', N'CT', 41.3948, -73.4544)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113138, N'06820', N'DARIEN', N'CT', 41.0804, -73.4823)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113139, N'06824', N'FAIRFIELD', N'CT', 41.1753, -73.2812)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113140, N'06825', N'FAIRFIELD', N'CT', 41.1971, -73.2415)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113141, N'06828', N'FAIRFIELD', N'CT', 41.1412, -73.2645)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113142, N'06829', N'GEORGETOWN', N'CT', 41.2557, -73.4353)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113143, N'06830', N'GREENWICH', N'CT', 41.0502, -73.6235)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113144, N'06831', N'GREENWICH', N'CT', 41.0864, -73.6612)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113145, N'06832', N'GREENWICH', N'CT', 41.0266, -73.6287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113146, N'06836', N'GREENWICH', N'CT', 41.0266, -73.6287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113147, N'06838', N'GREENS FARMS', N'CT', 41.1216, -73.321)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113148, N'06840', N'NEW CANAAN', N'CT', 41.1589, -73.4989)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113149, N'06842', N'NEW CANAAN', N'CT', 41.1464, -73.4953)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113150, N'06850', N'NORWALK', N'CT', 41.1272, -73.4433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113151, N'06851', N'NORWALK', N'CT', 41.1388, -73.4037)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113152, N'06852', N'NORWALK', N'CT', 41.1176, -73.4086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113153, N'06853', N'NORWALK', N'CT', 41.0695, -73.4379)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113154, N'06854', N'NORWALK', N'CT', 41.0941, -73.4328)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113155, N'06855', N'NORWALK', N'CT', 41.1001, -73.3971)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113156, N'06856', N'NORWALK', N'CT', 41.1176, -73.4086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113157, N'06857', N'NORWALK', N'CT', 41.1176, -73.4086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113158, N'06858', N'NORWALK', N'CT', 41.1176, -73.4086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113159, N'06859', N'NORWALK', N'CT', 41.1176, -73.4086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113160, N'06860', N'NORWALK', N'CT', 41.1176, -73.4086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113161, N'06870', N'OLD GREENWICH', N'CT', 41.032, -73.568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113162, N'06875', N'REDDING CENTER', N'CT', 41.3025, -73.3839)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113163, N'06876', N'REDDING RIDGE', N'CT', 41.3136, -73.3505)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113164, N'06877', N'RIDGEFIELD', N'CT', 41.3064, -73.5024)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113165, N'06878', N'RIVERSIDE', N'CT', 41.034, -73.5821)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113166, N'06879', N'RIDGEFIELD', N'CT', 41.2815, -73.4989)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113167, N'06880', N'WESTPORT', N'CT', 41.1454, -73.3462)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113168, N'06881', N'WESTPORT', N'CT', 41.1417, -73.3585)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113169, N'06883', N'WESTON', N'CT', 41.2268, -73.373)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113170, N'06888', N'WESTPORT', N'CT', 41.1417, -73.3585)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113171, N'06889', N'WESTPORT', N'CT', 41.1417, -73.3585)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113172, N'06890', N'SOUTHPORT', N'CT', 41.146, -73.2888)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113173, N'06896', N'REDDING', N'CT', 41.3054, -73.393)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113174, N'06897', N'WILTON', N'CT', 41.207, -73.4401)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113175, N'06901', N'STAMFORD', N'CT', 41.0531, -73.5379)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113176, N'06902', N'STAMFORD', N'CT', 41.061, -73.5493)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113177, N'06903', N'STAMFORD', N'CT', 41.1356, -73.571)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113178, N'06904', N'STAMFORD', N'CT', 41.0535, -73.5394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113179, N'06905', N'STAMFORD', N'CT', 41.0876, -73.5444)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113180, N'06906', N'STAMFORD', N'CT', 41.0697, -73.522)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113181, N'06907', N'STAMFORD', N'CT', 41.1005, -73.521)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113182, N'06910', N'STAMFORD', N'CT', 41.0489, -73.5575)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113183, N'06911', N'STAMFORD', N'CT', 41.0535, -73.5394)
GO
print 'Processed 2500 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113184, N'06912', N'STAMFORD', N'CT', 41.0535, -73.5394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113185, N'06913', N'STAMFORD', N'CT', 41.0535, -73.5394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113186, N'06914', N'STAMFORD', N'CT', 41.0535, -73.5394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113187, N'06920', N'STAMFORD', N'CT', 41.0535, -73.5394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113188, N'06921', N'STAMFORD', N'CT', 41.0535, -73.5394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113189, N'06922', N'STAMFORD', N'CT', 41.0535, -73.5394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113190, N'06925', N'STAMFORD', N'CT', 41.0535, -73.5394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113191, N'06926', N'STAMFORD', N'CT', 41.0535, -73.5394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113192, N'06927', N'STAMFORD', N'CT', 41.0535, -73.5394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113193, N'06928', N'STAMFORD', N'CT', 41.0535, -73.5394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113194, N'07001', N'AVENEL', N'NJ', 40.5832, -74.2709)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113195, N'07002', N'BAYONNE', N'NJ', 40.6645, -74.1108)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113196, N'07003', N'BLOOMFIELD', N'NJ', 40.8099, -74.187)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113197, N'07004', N'FAIRFIELD', N'NJ', 40.8825, -74.3043)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113198, N'07005', N'BOONTON', N'NJ', 40.929, -74.4211)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113199, N'07006', N'CALDWELL', N'NJ', 40.852, -74.2818)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113200, N'07007', N'CALDWELL', N'NJ', 40.8397, -74.2768)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113201, N'07008', N'CARTERET', N'NJ', 40.585, -74.2297)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113202, N'07009', N'CEDAR GROVE', N'NJ', 40.8566, -74.2292)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113203, N'07010', N'CLIFFSIDE PARK', N'NJ', 40.822, -73.988)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113204, N'07011', N'CLIFTON', N'NJ', 40.88, -74.1446)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113205, N'07012', N'CLIFTON', N'NJ', 40.8469, -74.1593)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113206, N'07013', N'CLIFTON', N'NJ', 40.8689, -74.1729)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113207, N'07014', N'CLIFTON', N'NJ', 40.8318, -74.1362)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113208, N'07015', N'CLIFTON', N'NJ', 40.8583, -74.1642)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113209, N'07016', N'CRANFORD', N'NJ', 40.6566, -74.3039)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113210, N'07017', N'EAST ORANGE', N'NJ', 40.7716, -74.2073)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113211, N'07018', N'EAST ORANGE', N'NJ', 40.7556, -74.2185)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113212, N'07019', N'EAST ORANGE', N'NJ', 40.7672, -74.2054)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113213, N'07020', N'EDGEWATER', N'NJ', 40.8215, -73.9795)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113214, N'07021', N'ESSEX FELLS', N'NJ', 40.8269, -74.2797)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113215, N'07022', N'FAIRVIEW', N'NJ', 40.8181, -74.0027)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113216, N'07023', N'FANWOOD', N'NJ', 40.6417, -74.3857)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113217, N'07024', N'FORT LEE', N'NJ', 40.8502, -73.9734)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113218, N'07026', N'GARFIELD', N'NJ', 40.8788, -74.1075)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113219, N'07027', N'GARWOOD', N'NJ', 40.6511, -74.3234)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113220, N'07028', N'GLEN RIDGE', N'NJ', 40.804, -74.2044)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113221, N'07029', N'HARRISON', N'NJ', 40.7442, -74.1517)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113222, N'07030', N'HOBOKEN', N'NJ', 40.7453, -74.032)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113223, N'07031', N'NORTH ARLINGTON', N'NJ', 40.7871, -74.1265)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113224, N'07032', N'KEARNY', N'NJ', 40.7563, -74.1217)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113225, N'07033', N'KENILWORTH', N'NJ', 40.678, -74.2888)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113226, N'07034', N'LAKE HIAWATHA', N'NJ', 40.8818, -74.3827)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113227, N'07035', N'LINCOLN PARK', N'NJ', 40.9238, -74.3037)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113228, N'07036', N'LINDEN', N'NJ', 40.6259, -74.2395)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113229, N'07039', N'LIVINGSTON', N'NJ', 40.7857, -74.3293)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113230, N'07040', N'MAPLEWOOD', N'NJ', 40.7338, -74.2761)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113231, N'07041', N'MILLBURN', N'NJ', 40.7229, -74.3006)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113232, N'07042', N'MONTCLAIR', N'NJ', 40.8138, -74.2179)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113233, N'07043', N'MONTCLAIR', N'NJ', 40.8433, -74.2009)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113234, N'07044', N'VERONA', N'NJ', 40.833, -74.2435)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113235, N'07045', N'MONTVILLE', N'NJ', 40.915, -74.3686)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113236, N'07046', N'MOUNTAIN LAKES', N'NJ', 40.8904, -74.4407)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113237, N'07047', N'NORTH BERGEN', N'NJ', 40.7933, -74.0263)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113238, N'07050', N'ORANGE', N'NJ', 40.7682, -74.235)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113239, N'07051', N'ORANGE', N'NJ', 40.7708, -74.2333)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113240, N'07052', N'WEST ORANGE', N'NJ', 40.7895, -74.2629)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113241, N'07054', N'PARSIPPANY', N'NJ', 40.8553, -74.3996)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113242, N'07055', N'PASSAIC', N'NJ', 40.8575, -74.1285)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113243, N'07057', N'WALLINGTON', N'NJ', 40.8534, -74.1065)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113244, N'07058', N'PINE BROOK', N'NJ', 40.8673, -74.3427)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113245, N'07059', N'WARREN', N'NJ', 40.6309, -74.5141)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113246, N'07060', N'PLAINFIELD', N'NJ', 40.631, -74.4312)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113247, N'07061', N'PLAINFIELD', N'NJ', 40.6339, -74.4076)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113248, N'07062', N'PLAINFIELD', N'NJ', 40.6317, -74.4043)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113249, N'07063', N'PLAINFIELD', N'NJ', 40.6048, -74.4466)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113250, N'07064', N'PORT READING', N'NJ', 40.5682, -74.2483)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113251, N'07065', N'RAHWAY', N'NJ', 40.6077, -74.2804)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113252, N'07066', N'CLARK', N'NJ', 40.6209, -74.3117)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113253, N'07067', N'COLONIA', N'NJ', 40.5928, -74.3153)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113254, N'07068', N'ROSELAND', N'NJ', 40.8207, -74.3087)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113255, N'07069', N'WATCHUNG', N'NJ', 40.6265, -74.4552)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113256, N'07070', N'RUTHERFORD', N'NJ', 40.8259, -74.1096)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113257, N'07071', N'LYNDHURST', N'NJ', 40.7971, -74.1109)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113258, N'07072', N'CARLSTADT', N'NJ', 40.8256, -74.0623)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113259, N'07073', N'EAST RUTHERFORD', N'NJ', 40.8124, -74.0763)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113260, N'07074', N'MOONACHIE', N'NJ', 40.8433, -74.0581)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113261, N'07075', N'WOOD RIDGE', N'NJ', 40.8481, -74.0878)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113262, N'07076', N'SCOTCH PLAINS', N'NJ', 40.6176, -74.3695)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113263, N'07077', N'SEWAREN', N'NJ', 40.5541, -74.2561)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113264, N'07078', N'SHORT HILLS', N'NJ', 40.7427, -74.3317)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113265, N'07079', N'SOUTH ORANGE', N'NJ', 40.749, -74.2606)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113266, N'07080', N'SOUTH PLAINFIELD', N'NJ', 40.5745, -74.4149)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113267, N'07081', N'SPRINGFIELD', N'NJ', 40.6988, -74.3248)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113268, N'07082', N'TOWACO', N'NJ', 40.9288, -74.3455)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113269, N'07083', N'UNION', N'NJ', 40.6941, -74.2694)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113270, N'07086', N'WEEHAWKEN', N'NJ', 40.7689, -74.0212)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113271, N'07087', N'UNION CITY', N'NJ', 40.7678, -74.0275)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113272, N'07088', N'VAUXHALL', N'NJ', 40.7176, -74.2849)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113273, N'07090', N'WESTFIELD', N'NJ', 40.6486, -74.3455)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113274, N'07091', N'WESTFIELD', N'NJ', 40.6589, -74.3479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113275, N'07092', N'MOUNTAINSIDE', N'NJ', 40.681, -74.36)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113276, N'07093', N'WEST NEW YORK', N'NJ', 40.7879, -74.0112)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113277, N'07094', N'SECAUCUS', N'NJ', 40.7808, -74.0651)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113278, N'07095', N'WOODBRIDGE', N'NJ', 40.5539, -74.2861)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113279, N'07096', N'SECAUCUS', N'NJ', 40.7931, -74.0579)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113280, N'07097', N'JERSEY CITY', N'NJ', 40.7286, -74.0775)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113281, N'07099', N'KEARNY', N'NJ', 40.7683, -74.1443)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113282, N'07101', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113283, N'07102', N'NEWARK', N'NJ', 40.7357, -74.1735)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113284, N'07103', N'NEWARK', N'NJ', 40.739, -74.1953)
GO
print 'Processed 2600 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113285, N'07104', N'NEWARK', N'NJ', 40.7676, -74.1695)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113286, N'07105', N'NEWARK', N'NJ', 40.7236, -74.1407)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113287, N'07106', N'NEWARK', N'NJ', 40.742, -74.23)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113288, N'07107', N'NEWARK', N'NJ', 40.7608, -74.1881)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113289, N'07108', N'NEWARK', N'NJ', 40.723, -74.2005)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113290, N'07109', N'BELLEVILLE', N'NJ', 40.7949, -74.1623)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113291, N'07110', N'NUTLEY', N'NJ', 40.8192, -74.1574)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113292, N'07111', N'IRVINGTON', N'NJ', 40.7242, -74.2319)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113293, N'07112', N'NEWARK', N'NJ', 40.7108, -74.2114)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113294, N'07114', N'NEWARK', N'NJ', 40.7021, -74.1704)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113295, N'07175', N'NEWARK', N'NJ', 40.7325, -74.1732)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113296, N'07182', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113297, N'07184', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113298, N'07188', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113299, N'07189', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113300, N'07191', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113301, N'07192', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113302, N'07193', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113303, N'07194', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113304, N'07195', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113305, N'07197', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113306, N'07198', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113307, N'07199', N'NEWARK', N'NJ', 40.7357, -74.1725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113308, N'07201', N'ELIZABETH', N'NJ', 40.6709, -74.179)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113309, N'07202', N'ELIZABETH', N'NJ', 40.6531, -74.2169)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113310, N'07203', N'ROSELLE', N'NJ', 40.6527, -74.2601)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113311, N'07204', N'ROSELLE PARK', N'NJ', 40.6653, -74.2666)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113312, N'07205', N'HILLSIDE', N'NJ', 40.6961, -74.2294)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113313, N'07206', N'ELIZABETH', N'NJ', 40.6522, -74.1905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113314, N'07207', N'ELIZABETH', N'NJ', 40.6639, -74.2111)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113315, N'07208', N'ELIZABETH', N'NJ', 40.6752, -74.2247)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113316, N'07302', N'JERSEY CITY', N'NJ', 40.7208, -74.0459)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113317, N'07303', N'JERSEY CITY', N'NJ', 40.7282, -74.0784)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113318, N'07304', N'JERSEY CITY', N'NJ', 40.7142, -74.0692)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113319, N'07305', N'JERSEY CITY', N'NJ', 40.696, -74.0853)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113320, N'07306', N'JERSEY CITY', N'NJ', 40.7351, -74.0685)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113321, N'07307', N'JERSEY CITY', N'NJ', 40.7523, -74.0563)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113322, N'07308', N'JERSEY CITY', N'NJ', 40.7285, -74.0725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113323, N'07309', N'JERSEY CITY', N'NJ', 40.7235, -74.0768)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113324, N'07310', N'JERSEY CITY', N'NJ', 40.7322, -74.0389)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113325, N'07311', N'JERSEY CITY', N'NJ', 40.7246, -74.0599)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113326, N'07399', N'JERSEY CITY', N'NJ', 40.7282, -74.0784)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113327, N'07401', N'ALLENDALE', N'NJ', 41.033, -74.1332)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113328, N'07403', N'BLOOMINGDALE', N'NJ', 41.0209, -74.3329)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113329, N'07405', N'BUTLER', N'NJ', 40.9863, -74.383)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113330, N'07407', N'ELMWOOD PARK', N'NJ', 40.9049, -74.1196)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113331, N'07410', N'FAIR LAWN', N'NJ', 40.9359, -74.1174)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113332, N'07416', N'FRANKLIN', N'NJ', 41.1177, -74.5998)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113333, N'07417', N'FRANKLIN LAKES', N'NJ', 41.0086, -74.2082)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113334, N'07418', N'GLENWOOD', N'NJ', 41.2491, -74.4898)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113335, N'07419', N'HAMBURG', N'NJ', 41.1518, -74.5855)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113336, N'07420', N'HASKELL', N'NJ', 41.0301, -74.3021)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113337, N'07421', N'HEWITT', N'NJ', 41.1652, -74.3769)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113338, N'07422', N'HIGHLAND LAKES', N'NJ', 41.189, -74.4273)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113339, N'07423', N'HO HO KUS', N'NJ', 40.9998, -74.0971)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113340, N'07424', N'LITTLE FALLS', N'NJ', 40.8835, -74.2057)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113341, N'07428', N'MC AFEE', N'NJ', 41.1906, -74.5437)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113342, N'07430', N'MAHWAH', N'NJ', 41.0818, -74.1862)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113343, N'07432', N'MIDLAND PARK', N'NJ', 40.9951, -74.1409)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113344, N'07435', N'NEWFOUNDLAND', N'NJ', 41.058, -74.4257)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113345, N'07436', N'OAKLAND', N'NJ', 41.0312, -74.241)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113346, N'07438', N'OAK RIDGE', N'NJ', 41.0321, -74.5162)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113347, N'07439', N'OGDENSBURG', N'NJ', 41.0773, -74.5975)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113348, N'07440', N'PEQUANNOCK', N'NJ', 40.9469, -74.2936)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113349, N'07442', N'POMPTON LAKES', N'NJ', 41.0029, -74.2865)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113350, N'07444', N'POMPTON PLAINS', N'NJ', 40.9679, -74.3076)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113351, N'07446', N'RAMSEY', N'NJ', 41.0594, -74.1457)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113352, N'07450', N'RIDGEWOOD', N'NJ', 40.982, -74.1124)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113353, N'07451', N'RIDGEWOOD', N'NJ', 40.9792, -74.1168)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113354, N'07452', N'GLEN ROCK', N'NJ', 40.9601, -74.1244)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113355, N'07456', N'RINGWOOD', N'NJ', 41.1036, -74.2801)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113356, N'07457', N'RIVERDALE', N'NJ', 40.992, -74.3123)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113357, N'07458', N'SADDLE RIVER', N'NJ', 41.0459, -74.097)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113358, N'07460', N'STOCKHOLM', N'NJ', 41.1122, -74.4998)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113359, N'07461', N'SUSSEX', N'NJ', 41.2395, -74.6087)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113360, N'07462', N'VERNON', N'NJ', 41.1872, -74.4961)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113361, N'07463', N'WALDWICK', N'NJ', 41.0131, -74.1259)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113362, N'07465', N'WANAQUE', N'NJ', 41.0474, -74.2758)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113363, N'07470', N'WAYNE', N'NJ', 40.9484, -74.2449)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113364, N'07474', N'WAYNE', N'NJ', 40.9255, -74.2766)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113365, N'07477', N'WAYNE', N'NJ', 40.9255, -74.2766)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113366, N'07480', N'WEST MILFORD', N'NJ', 41.0879, -74.3771)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113367, N'07481', N'WYCKOFF', N'NJ', 40.9987, -74.1673)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113368, N'07495', N'MAHWAH', N'NJ', 41.0944, -74.1504)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113369, N'07498', N'MAHWAH', N'NJ', 41.0887, -74.1443)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113370, N'07501', N'PATERSON', N'NJ', 40.9126, -74.171)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113371, N'07502', N'PATERSON', N'NJ', 40.9187, -74.1942)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113372, N'07503', N'PATERSON', N'NJ', 40.8977, -74.1545)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113373, N'07504', N'PATERSON', N'NJ', 40.9122, -74.1418)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113374, N'07505', N'PATERSON', N'NJ', 40.9164, -74.1716)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113375, N'07506', N'HAWTHORNE', N'NJ', 40.9579, -74.1582)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113376, N'07507', N'HAWTHORNE', N'NJ', 40.9493, -74.1543)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113377, N'07508', N'HALEDON', N'NJ', 40.9543, -74.1846)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113378, N'07509', N'PATERSON', N'NJ', 40.9169, -74.1723)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113379, N'07510', N'PATERSON', N'NJ', 40.9169, -74.1723)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113380, N'07511', N'TOTOWA', N'NJ', 40.9169, -74.1723)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113381, N'07512', N'TOTOWA', N'NJ', 40.904, -74.2218)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113382, N'07513', N'PATERSON', N'NJ', 40.9055, -74.149)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113383, N'07514', N'PATERSON', N'NJ', 40.9261, -74.145)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113384, N'07522', N'PATERSON', N'NJ', 40.9253, -74.1785)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113385, N'07524', N'PATERSON', N'NJ', 40.9319, -74.1569)
GO
print 'Processed 2700 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113386, N'07533', N'PATERSON', N'NJ', 40.9169, -74.1723)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113387, N'07538', N'HALEDON', N'NJ', 40.9358, -74.1867)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113388, N'07543', N'PATERSON', N'NJ', 40.9169, -74.1723)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113389, N'07544', N'PATERSON', N'NJ', 40.9169, -74.1723)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113390, N'07601', N'HACKENSACK', N'NJ', 40.8892, -74.0466)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113391, N'07602', N'HACKENSACK', N'NJ', 40.8859, -74.0439)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113392, N'07603', N'BOGOTA', N'NJ', 40.875, -74.0289)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113393, N'07604', N'HASBROUCK HEIGHTS', N'NJ', 40.8615, -74.073)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113394, N'07605', N'LEONIA', N'NJ', 40.8638, -73.9889)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113395, N'07606', N'SOUTH HACKENSACK', N'NJ', 40.8647, -74.0508)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113396, N'07607', N'MAYWOOD', N'NJ', 40.9024, -74.0631)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113397, N'07608', N'TETERBORO', N'NJ', 40.8463, -74.0611)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113398, N'07620', N'ALPINE', N'NJ', 40.9645, -73.924)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113399, N'07621', N'BERGENFIELD', N'NJ', 40.9234, -73.9981)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113400, N'07624', N'CLOSTER', N'NJ', 40.9732, -73.9591)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113401, N'07626', N'CRESSKILL', N'NJ', 40.9402, -73.9589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113402, N'07627', N'DEMAREST', N'NJ', 40.9549, -73.9568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113403, N'07628', N'DUMONT', N'NJ', 40.9451, -73.9922)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113404, N'07630', N'EMERSON', N'NJ', 40.9739, -74.0268)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113405, N'07631', N'ENGLEWOOD', N'NJ', 40.8918, -73.9736)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113406, N'07632', N'ENGLEWOOD CLIFFS', N'NJ', 40.8837, -73.9506)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113407, N'07640', N'HARRINGTON PARK', N'NJ', 40.9921, -73.9781)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113408, N'07641', N'HAWORTH', N'NJ', 40.9616, -73.9946)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113409, N'07642', N'HILLSDALE', N'NJ', 41.0075, -74.0439)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113410, N'07643', N'LITTLE FERRY', N'NJ', 40.8469, -74.0394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113411, N'07644', N'LODI', N'NJ', 40.8785, -74.0813)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113412, N'07645', N'MONTVALE', N'NJ', 41.053, -74.0497)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113413, N'07646', N'NEW MILFORD', N'NJ', 40.9338, -74.0194)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113414, N'07647', N'NORTHVALE', N'NJ', 41.0068, -73.9431)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113415, N'07648', N'NORWOOD', N'NJ', 40.9933, -73.9511)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113416, N'07649', N'ORADELL', N'NJ', 40.9548, -74.0328)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113417, N'07650', N'PALISADES PARK', N'NJ', 40.8468, -73.9958)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113418, N'07652', N'PARAMUS', N'NJ', 40.9453, -74.0713)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113419, N'07653', N'PARAMUS', N'NJ', 40.9447, -74.0758)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113420, N'07656', N'PARK RIDGE', N'NJ', 41.0353, -74.0423)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113421, N'07657', N'RIDGEFIELD', N'NJ', 40.8313, -74.0134)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113422, N'07660', N'RIDGEFIELD PARK', N'NJ', 40.8547, -74.0203)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113423, N'07661', N'RIVER EDGE', N'NJ', 40.9267, -74.0388)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113424, N'07662', N'ROCHELLE PARK', N'NJ', 40.907, -74.0791)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113425, N'07663', N'SADDLE BROOK', N'NJ', 40.9035, -74.0953)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113426, N'07666', N'TEANECK', N'NJ', 40.8902, -74.0104)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113427, N'07670', N'TENAFLY', N'NJ', 40.9188, -73.9562)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113428, N'07675', N'WESTWOOD', N'NJ', 41.003, -74.0191)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113429, N'07676', N'TOWNSHIP OF WASHINGTON', N'NJ', 41.003, -74.0191)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113430, N'07677', N'WOODCLIFF LAKE', N'NJ', 41.003, -74.0191)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113431, N'07701', N'RED BANK', N'NJ', 40.3609, -74.079)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113432, N'07702', N'SHREWSBURY', N'NJ', 40.3253, -74.0595)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113433, N'07703', N'FORT MONMOUTH', N'NJ', 40.3335, -74.0565)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113434, N'07704', N'FAIR HAVEN', N'NJ', 40.3597, -74.0381)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113435, N'07709', N'ALLENHURST', N'NJ', 40.2362, -74.0013)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113436, N'07710', N'ADELPHIA', N'NJ', 40.2183, -74.2569)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113437, N'07711', N'ALLENHURST', N'NJ', 40.2354, -74.001)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113438, N'07712', N'ASBURY PARK', N'NJ', 40.2492, -74.0521)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113439, N'07715', N'BELMAR', N'NJ', 40.1783, -74.0222)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113440, N'07716', N'ATLANTIC HIGHLANDS', N'NJ', 40.4046, -74.0304)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113441, N'07717', N'AVON BY THE SEA', N'NJ', 40.1917, -74.0159)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113442, N'07718', N'BELFORD', N'NJ', 40.42, -74.0847)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113443, N'07719', N'BELMAR', N'NJ', 40.1681, -74.0774)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113444, N'07720', N'BRADLEY BEACH', N'NJ', 40.2019, -74.0124)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113445, N'07721', N'CLIFFWOOD', N'NJ', 40.436, -74.2355)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113446, N'07722', N'COLTS NECK', N'NJ', 40.2834, -74.169)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113447, N'07723', N'DEAL', N'NJ', 40.2504, -74.0014)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113448, N'07724', N'EATONTOWN', N'NJ', 40.2996, -74.074)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113449, N'07726', N'ENGLISHTOWN', N'NJ', 40.2769, -74.3692)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113450, N'07727', N'FARMINGDALE', N'NJ', 40.2012, -74.168)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113451, N'07728', N'FREEHOLD', N'NJ', 40.2229, -74.3007)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113452, N'07730', N'HAZLET', N'NJ', 40.4244, -74.1742)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113453, N'07731', N'HOWELL', N'NJ', 40.1478, -74.2133)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113454, N'07732', N'HIGHLANDS', N'NJ', 40.4012, -73.9902)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113455, N'07733', N'HOLMDEL', N'NJ', 40.3764, -74.1727)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113456, N'07734', N'KEANSBURG', N'NJ', 40.4416, -74.1294)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113457, N'07735', N'KEYPORT', N'NJ', 40.4398, -74.1836)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113458, N'07737', N'LEONARDO', N'NJ', 40.4095, -74.0643)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113459, N'07738', N'LINCROFT', N'NJ', 40.3391, -74.1276)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113460, N'07739', N'LITTLE SILVER', N'NJ', 40.3363, -74.0381)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113461, N'07740', N'LONG BRANCH', N'NJ', 40.2954, -73.9914)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113462, N'07746', N'MARLBORO', N'NJ', 40.3194, -74.2497)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113463, N'07747', N'MATAWAN', N'NJ', 40.4118, -74.2499)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113464, N'07748', N'MIDDLETOWN', N'NJ', 40.3908, -74.1116)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113465, N'07750', N'MONMOUTH BEACH', N'NJ', 40.3329, -73.9816)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113466, N'07751', N'MORGANVILLE', N'NJ', 40.3616, -74.263)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113467, N'07752', N'NAVESINK', N'NJ', 40.3994, -74.0355)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113468, N'07753', N'NEPTUNE', N'NJ', 40.2205, -74.0818)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113469, N'07754', N'NEPTUNE', N'NJ', 40.2017, -74.0306)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113470, N'07755', N'OAKHURST', N'NJ', 40.2647, -74.022)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113471, N'07756', N'OCEAN GROVE', N'NJ', 40.2121, -74.0079)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113472, N'07757', N'OCEANPORT', N'NJ', 40.3143, -74.0217)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113473, N'07758', N'PORT MONMOUTH', N'NJ', 40.431, -74.1031)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113474, N'07760', N'RUMSON', N'NJ', 40.3613, -74.0061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113475, N'07762', N'SPRING LAKE', N'NJ', 40.1528, -74.0364)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113476, N'07763', N'TENNENT', N'NJ', 40.2797, -74.3349)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113477, N'07764', N'WEST LONG BRANCH', N'NJ', 40.2883, -74.0183)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113478, N'07765', N'WICKATUNK', N'NJ', 40.3502, -74.2483)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113479, N'07777', N'HOLMDEL', N'NJ', 40.3452, -74.1846)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113480, N'07799', N'EATONTOWN', N'NJ', 40.3764, -74.0888)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113481, N'07801', N'DOVER', N'NJ', 40.9293, -74.5472)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113482, N'07802', N'DOVER', N'NJ', 40.8838, -74.5625)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113483, N'07803', N'MINE HILL', N'NJ', 40.8782, -74.6008)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113484, N'07806', N'PICATINNY ARSENAL', N'NJ', 40.8866, -74.5807)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113485, N'07820', N'ALLAMUCHY', N'NJ', 40.9219, -74.8106)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113486, N'07821', N'ANDOVER', N'NJ', 40.9465, -74.8027)
GO
print 'Processed 2800 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113487, N'07822', N'AUGUSTA', N'NJ', 41.1448, -74.6851)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113488, N'07823', N'BELVIDERE', N'NJ', 40.8345, -75.0376)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113489, N'07825', N'BLAIRSTOWN', N'NJ', 40.9812, -74.9611)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113490, N'07826', N'BRANCHVILLE', N'NJ', 41.192, -74.754)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113491, N'07827', N'MONTAGUE', N'NJ', 41.2928, -74.7397)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113492, N'07828', N'BUDD LAKE', N'NJ', 40.8835, -74.7506)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113493, N'07829', N'BUTTZVILLE', N'NJ', 40.8324, -75.0068)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113494, N'07830', N'CALIFON', N'NJ', 40.7173, -74.8003)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113495, N'07831', N'CHANGEWATER', N'NJ', 40.7383, -74.9447)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113496, N'07832', N'COLUMBIA', N'NJ', 40.9578, -75.0663)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113497, N'07833', N'DELAWARE', N'NJ', 40.8928, -75.0652)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113498, N'07834', N'DENVILLE', N'NJ', 40.8897, -74.4855)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113499, N'07836', N'FLANDERS', N'NJ', 40.8455, -74.7097)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113500, N'07837', N'GLASSER', N'NJ', 40.9901, -74.6205)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113501, N'07838', N'GREAT MEADOWS', N'NJ', 40.8481, -74.9417)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113502, N'07839', N'GREENDELL', N'NJ', 40.9737, -74.8217)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113503, N'07840', N'HACKETTSTOWN', N'NJ', 40.8661, -74.8361)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113504, N'07842', N'HIBERNIA', N'NJ', 40.9436, -74.4931)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113505, N'07843', N'HOPATCONG', N'NJ', 40.9441, -74.6668)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113506, N'07844', N'HOPE', N'NJ', 40.9112, -74.9679)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113507, N'07845', N'IRONIA', N'NJ', 40.8225, -74.6264)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113508, N'07846', N'JOHNSONBURG', N'NJ', 40.9646, -74.8787)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113509, N'07847', N'KENVIL', N'NJ', 40.8874, -74.6233)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113510, N'07848', N'LAFAYETTE', N'NJ', 41.0994, -74.6815)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113511, N'07849', N'LAKE HOPATCONG', N'NJ', 40.9699, -74.6225)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113512, N'07850', N'LANDING', N'NJ', 40.9033, -74.6603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113513, N'07851', N'LAYTON', N'NJ', 41.2025, -74.8332)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113514, N'07852', N'LEDGEWOOD', N'NJ', 40.8749, -74.6666)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113515, N'07853', N'LONG VALLEY', N'NJ', 40.7842, -74.79)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113516, N'07855', N'MIDDLEVILLE', N'NJ', 41.0555, -74.8633)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113517, N'07856', N'MOUNT ARLINGTON', N'NJ', 40.9294, -74.6337)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113518, N'07857', N'NETCONG', N'NJ', 40.897, -74.7002)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113519, N'07860', N'NEWTON', N'NJ', 41.0621, -74.8033)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113520, N'07863', N'OXFORD', N'NJ', 40.813, -75.0047)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113521, N'07865', N'PORT MURRAY', N'NJ', 40.7953, -74.9091)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113522, N'07866', N'ROCKAWAY', N'NJ', 40.9655, -74.485)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113523, N'07869', N'RANDOLPH', N'NJ', 40.8481, -74.5726)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113524, N'07870', N'SCHOOLEYS MOUNTAIN', N'NJ', 40.7994, -74.8142)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113525, N'07871', N'SPARTA', N'NJ', 41.0447, -74.6279)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113526, N'07874', N'STANHOPE', N'NJ', 40.9272, -74.7032)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113527, N'07875', N'STILLWATER', N'NJ', 41.0359, -74.8787)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113528, N'07876', N'SUCCASUNNA', N'NJ', 40.8542, -74.6547)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113529, N'07877', N'SWARTSWOOD', N'NJ', 41.0868, -74.8276)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113530, N'07878', N'MOUNT TABOR', N'NJ', 40.8657, -74.4804)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113531, N'07879', N'TRANQUILITY', N'NJ', 40.9564, -74.8086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113532, N'07880', N'VIENNA', N'NJ', 40.8688, -74.8896)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113533, N'07881', N'WALLPACK CENTER', N'NJ', 41.1254, -74.9101)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113534, N'07882', N'WASHINGTON', N'NJ', 40.7557, -75.0041)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113535, N'07885', N'WHARTON', N'NJ', 40.9412, -74.5867)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113536, N'07890', N'BRANCHVILLE', N'NJ', 41.1464, -74.7528)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113537, N'07901', N'SUMMIT', N'NJ', 40.7142, -74.3649)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113538, N'07902', N'SUMMIT', N'NJ', 40.7169, -74.3609)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113539, N'07920', N'BASKING RIDGE', N'NJ', 40.6763, -74.5643)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113540, N'07921', N'BEDMINSTER', N'NJ', 40.6595, -74.6788)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113541, N'07922', N'BERKELEY HEIGHTS', N'NJ', 40.6751, -74.4292)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113542, N'07924', N'BERNARDSVILLE', N'NJ', 40.7273, -74.5913)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113543, N'07926', N'BROOKSIDE', N'NJ', 40.7945, -74.5685)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113544, N'07927', N'CEDAR KNOLLS', N'NJ', 40.8249, -74.4554)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113545, N'07928', N'CHATHAM', N'NJ', 40.7265, -74.4156)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113546, N'07930', N'CHESTER', N'NJ', 40.7783, -74.6854)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113547, N'07931', N'FAR HILLS', N'NJ', 40.7043, -74.6287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113548, N'07932', N'FLORHAM PARK', N'NJ', 40.7773, -74.3938)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113549, N'07933', N'GILLETTE', N'NJ', 40.703, -74.48)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113550, N'07934', N'GLADSTONE', N'NJ', 40.7167, -74.6659)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113551, N'07935', N'GREEN VILLAGE', N'NJ', 40.7432, -74.4575)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113552, N'07936', N'EAST HANOVER', N'NJ', 40.8189, -74.3642)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113553, N'07938', N'LIBERTY CORNER', N'NJ', 40.6644, -74.5775)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113554, N'07939', N'LYONS', N'NJ', 40.7061, -74.5494)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113555, N'07940', N'MADISON', N'NJ', 40.7602, -74.4213)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113556, N'07945', N'MENDHAM', N'NJ', 40.7794, -74.5981)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113557, N'07946', N'MILLINGTON', N'NJ', 40.6749, -74.5125)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113558, N'07950', N'MORRIS PLAINS', N'NJ', 40.8475, -74.4826)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113559, N'07960', N'MORRISTOWN', N'NJ', 40.7857, -74.4992)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113560, N'07961', N'MORRISTOWN', N'NJ', 40.7782, -74.4415)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113561, N'07962', N'MORRISTOWN', N'NJ', 40.7968, -74.4816)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113562, N'07963', N'MORRISTOWN', N'NJ', 40.7968, -74.4816)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113563, N'07970', N'MOUNT FREEDOM', N'NJ', 40.8263, -74.5707)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113564, N'07974', N'NEW PROVIDENCE', N'NJ', 40.6968, -74.4034)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113565, N'07976', N'NEW VERNON', N'NJ', 40.7314, -74.488)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113566, N'07977', N'PEAPACK', N'NJ', 40.7167, -74.6568)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113567, N'07978', N'PLUCKEMIN', N'NJ', 40.6457, -74.6396)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113568, N'07979', N'POTTERSVILLE', N'NJ', 40.7109, -74.7297)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113569, N'07980', N'STIRLING', N'NJ', 40.673, -74.4925)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113570, N'07981', N'WHIPPANY', N'NJ', 40.8211, -74.4194)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113571, N'07983', N'WHIPPANY', N'NJ', 40.8214, -74.4205)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113572, N'07999', N'WHIPPANY', N'NJ', 40.7146, -74.3615)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113573, N'08001', N'ALLOWAY', N'NJ', 39.5605, -75.3625)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113574, N'08002', N'CHERRY HILL', N'NJ', 39.9312, -75.0244)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113575, N'08003', N'CHERRY HILL', N'NJ', 39.883, -74.9719)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113576, N'08004', N'ATCO', N'NJ', 39.7733, -74.8547)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113577, N'08005', N'BARNEGAT', N'NJ', 39.7838, -74.3306)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113578, N'08006', N'BARNEGAT LIGHT', N'NJ', 39.755, -74.1143)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113579, N'08007', N'BARRINGTON', N'NJ', 39.8641, -75.0536)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113580, N'08008', N'BEACH HAVEN', N'NJ', 39.623, -74.1974)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113581, N'08009', N'BERLIN', N'NJ', 39.7587, -74.9349)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113582, N'08010', N'BEVERLY', N'NJ', 40.0506, -74.9181)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113583, N'08011', N'BIRMINGHAM', N'NJ', 39.9753, -74.7133)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113584, N'08012', N'BLACKWOOD', N'NJ', 39.778, -75.0552)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113585, N'08014', N'BRIDGEPORT', N'NJ', 39.805, -75.3409)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113586, N'08015', N'BROWNS MILLS', N'NJ', 39.9516, -74.5548)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113587, N'08016', N'BURLINGTON', N'NJ', 40.0691, -74.8276)
GO
print 'Processed 2900 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113588, N'08018', N'CEDAR BROOK', N'NJ', 39.7154, -74.9011)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113589, N'08019', N'CHATSWORTH', N'NJ', 39.7617, -74.4705)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113590, N'08020', N'CLARKSBORO', N'NJ', 39.7997, -75.2201)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113591, N'08021', N'CLEMENTON', N'NJ', 39.8055, -74.9997)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113592, N'08022', N'COLUMBUS', N'NJ', 40.0614, -74.695)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113593, N'08023', N'DEEPWATER', N'NJ', 39.683, -75.4919)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113594, N'08025', N'EWAN', N'NJ', 39.6987, -75.1864)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113595, N'08026', N'GIBBSBORO', N'NJ', 39.8329, -74.9656)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113596, N'08027', N'GIBBSTOWN', N'NJ', 39.8255, -75.2836)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113597, N'08028', N'GLASSBORO', N'NJ', 39.6996, -75.1187)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113598, N'08029', N'GLENDORA', N'NJ', 39.8399, -75.0683)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113599, N'08030', N'GLOUCESTER CITY', N'NJ', 39.8885, -75.1173)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113600, N'08031', N'BELLMAWR', N'NJ', 39.8669, -75.093)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113601, N'08032', N'GRENLOCH', N'NJ', 39.7821, -75.0622)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113602, N'08033', N'HADDONFIELD', N'NJ', 39.8934, -75.0387)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113603, N'08034', N'CHERRY HILL', N'NJ', 39.9056, -74.9993)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113604, N'08035', N'HADDON HEIGHTS', N'NJ', 39.8789, -75.0646)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113605, N'08036', N'HAINESPORT', N'NJ', 39.9913, -74.8408)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113606, N'08037', N'HAMMONTON', N'NJ', 39.637, -74.7602)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113607, N'08038', N'HANCOCKS BRIDGE', N'NJ', 39.4956, -75.4733)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113608, N'08039', N'HARRISONVILLE', N'NJ', 39.685, -75.2666)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113609, N'08041', N'JOBSTOWN', N'NJ', 40.0394, -74.6834)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113610, N'08042', N'JULIUSTOWN', N'NJ', 40.0134, -74.6693)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113611, N'08043', N'VOORHEES', N'NJ', 39.8445, -74.9532)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113612, N'08045', N'LAWNSIDE', N'NJ', 39.8671, -75.0296)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113613, N'08046', N'WILLINGBORO', N'NJ', 40.0278, -74.8825)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113614, N'08048', N'LUMBERTON', N'NJ', 39.9559, -74.8135)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113615, N'08049', N'MAGNOLIA', N'NJ', 39.8541, -75.0384)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113616, N'08050', N'MANAHAWKIN', N'NJ', 39.7102, -74.2577)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113617, N'08051', N'MANTUA', N'NJ', 39.7857, -75.1843)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113618, N'08052', N'MAPLE SHADE', N'NJ', 39.9516, -74.9946)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113619, N'08053', N'MARLTON', N'NJ', 39.8786, -74.8969)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113620, N'08054', N'MOUNT LAUREL', N'NJ', 39.948, -74.9047)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113621, N'08055', N'MEDFORD', N'NJ', 39.8708, -74.8182)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113622, N'08056', N'MICKLETON', N'NJ', 39.7839, -75.2503)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113623, N'08057', N'MOORESTOWN', N'NJ', 39.9782, -74.9415)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113624, N'08059', N'MOUNT EPHRAIM', N'NJ', 39.8811, -75.0919)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113625, N'08060', N'MOUNT HOLLY', N'NJ', 39.9896, -74.8021)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113626, N'08061', N'MOUNT ROYAL', N'NJ', 39.811, -75.2081)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113627, N'08062', N'MULLICA HILL', N'NJ', 39.7176, -75.2231)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113628, N'08063', N'NATIONAL PARK', N'NJ', 39.8649, -75.1823)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113629, N'08064', N'NEW LISBON', N'NJ', 39.9583, -74.6284)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113630, N'08065', N'PALMYRA', N'NJ', 40.0017, -75.033)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113631, N'08066', N'PAULSBORO', N'NJ', 39.8326, -75.2069)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113632, N'08067', N'PEDRICKTOWN', N'NJ', 39.7294, -75.4068)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113633, N'08068', N'PEMBERTON', N'NJ', 39.9555, -74.6626)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113634, N'08069', N'PENNS GROVE', N'NJ', 39.6981, -75.4502)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113635, N'08070', N'PENNSVILLE', N'NJ', 39.6375, -75.5059)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113636, N'08071', N'PITMAN', N'NJ', 39.7363, -75.1333)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113637, N'08072', N'QUINTON', N'NJ', 39.5455, -75.4125)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113638, N'08073', N'RANCOCAS', N'NJ', 40.0097, -74.8661)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113639, N'08074', N'RICHWOOD', N'NJ', 39.7227, -75.1659)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113640, N'08075', N'RIVERSIDE', N'NJ', 40.0192, -74.9489)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113641, N'08076', N'RIVERTON', N'NJ', 40.0122, -75.0154)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113642, N'08077', N'RIVERTON', N'NJ', 40.0002, -74.9938)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113643, N'08078', N'RUNNEMEDE', N'NJ', 39.8519, -75.0768)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113644, N'08079', N'SALEM', N'NJ', 39.5115, -75.4437)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113645, N'08080', N'SEWELL', N'NJ', 39.7561, -75.1094)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113646, N'08081', N'SICKLERVILLE', N'NJ', 39.7334, -74.9786)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113647, N'08083', N'SOMERDALE', N'NJ', 39.841, -75.0314)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113648, N'08084', N'STRATFORD', N'NJ', 39.8287, -75.0156)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113649, N'08085', N'SWEDESBORO', N'NJ', 39.757, -75.3338)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113650, N'08086', N'THOROFARE', N'NJ', 39.8546, -75.1873)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113651, N'08087', N'TUCKERTON', N'NJ', 39.6187, -74.3847)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113652, N'08088', N'VINCENTOWN', N'NJ', 39.7955, -74.6301)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113653, N'08089', N'WATERFORD WORKS', N'NJ', 39.719, -74.8185)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113654, N'08090', N'WENONAH', N'NJ', 39.7966, -75.1429)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113655, N'08091', N'WEST BERLIN', N'NJ', 39.8119, -74.9426)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113656, N'08092', N'WEST CREEK', N'NJ', 39.6605, -74.2864)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113657, N'08093', N'WESTVILLE', N'NJ', 39.8615, -75.1346)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113658, N'08094', N'WILLIAMSTOWN', N'NJ', 39.6478, -74.9514)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113659, N'08095', N'WINSLOW', N'NJ', 39.6572, -74.8628)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113660, N'08096', N'WOODBURY', N'NJ', 39.8266, -75.1276)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113661, N'08097', N'WOODBURY HEIGHTS', N'NJ', 39.8147, -75.1504)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113662, N'08098', N'WOODSTOWN', N'NJ', 39.6335, -75.3233)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113663, N'08099', N'BELLMAWR', N'NJ', 39.8676, -75.095)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113664, N'08101', N'CAMDEN', N'NJ', 39.9258, -75.12)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113665, N'08102', N'CAMDEN', N'NJ', 39.9504, -75.1197)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113666, N'08103', N'CAMDEN', N'NJ', 39.9351, -75.1099)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113667, N'08104', N'CAMDEN', N'NJ', 39.9206, -75.1123)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113668, N'08105', N'CAMDEN', N'NJ', 39.9508, -75.0881)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113669, N'08106', N'AUDUBON', N'NJ', 39.891, -75.0738)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113670, N'08107', N'OAKLYN', N'NJ', 39.9079, -75.0838)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113671, N'08108', N'COLLINGSWOOD', N'NJ', 39.9152, -75.0615)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113672, N'08109', N'MERCHANTVILLE', N'NJ', 39.95, -75.0501)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113673, N'08110', N'PENNSAUKEN', N'NJ', 39.975, -75.0476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113674, N'08201', N'ABSECON', N'NJ', 39.4748, -74.4723)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113675, N'08202', N'AVALON', N'NJ', 39.0915, -74.7279)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113676, N'08203', N'BRIGANTINE', N'NJ', 39.4065, -74.3772)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113677, N'08204', N'CAPE MAY', N'NJ', 38.9876, -74.9167)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113678, N'08205', N'ABSECON', N'NJ', 39.473, -74.4957)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113679, N'08210', N'CAPE MAY COURT HOUSE', N'NJ', 39.1108, -74.8241)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113680, N'08212', N'CAPE MAY POINT', N'NJ', 38.9376, -74.9635)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113681, N'08213', N'COLOGNE', N'NJ', 39.5015, -74.6063)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113682, N'08214', N'DENNISVILLE', N'NJ', 39.1932, -74.8256)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113683, N'08215', N'EGG HARBOR CITY', N'NJ', 39.5436, -74.5919)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113684, N'08217', N'ELWOOD', N'NJ', 39.5764, -74.7173)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113685, N'08218', N'GOSHEN', N'NJ', 39.1517, -74.871)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113686, N'08219', N'GREEN CREEK', N'NJ', 39.0461, -74.9014)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113687, N'08220', N'LEEDS POINT', N'NJ', 39.4917, -74.4295)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113688, N'08221', N'LINWOOD', N'NJ', 39.3476, -74.5794)
GO
print 'Processed 3000 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113689, N'08223', N'MARMORA', N'NJ', 39.2675, -74.6627)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113690, N'08224', N'NEW GRETNA', N'NJ', 39.5923, -74.4517)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113691, N'08225', N'NORTHFIELD', N'NJ', 39.3699, -74.549)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113692, N'08226', N'OCEAN CITY', N'NJ', 39.2561, -74.6071)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113693, N'08230', N'OCEAN VIEW', N'NJ', 39.2089, -74.7111)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113694, N'08231', N'OCEANVILLE', N'NJ', 39.4713, -74.4606)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113695, N'08232', N'PLEASANTVILLE', N'NJ', 39.4151, -74.5845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113696, N'08234', N'EGG HARBOR TOWNSHIP', N'NJ', 39.365, -74.6283)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113697, N'08240', N'POMONA', N'NJ', 39.4704, -74.5793)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113698, N'08241', N'PORT REPUBLIC', N'NJ', 39.5294, -74.4857)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113699, N'08242', N'RIO GRANDE', N'NJ', 39.0203, -74.8749)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113700, N'08243', N'SEA ISLE CITY', N'NJ', 39.1517, -74.697)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113701, N'08244', N'SOMERS POINT', N'NJ', 39.3201, -74.6047)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113702, N'08245', N'SOUTH DENNIS', N'NJ', 39.1786, -74.8203)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113703, N'08246', N'SOUTH SEAVILLE', N'NJ', 39.1789, -74.7605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113704, N'08247', N'STONE HARBOR', N'NJ', 39.0449, -74.7662)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113705, N'08248', N'STRATHMERE', N'NJ', 39.1946, -74.6605)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113706, N'08250', N'TUCKAHOE', N'NJ', 39.2898, -74.7405)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113707, N'08251', N'VILLAS', N'NJ', 39.0306, -74.9246)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113708, N'08252', N'WHITESBORO', N'NJ', 39.0367, -74.8617)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113709, N'08260', N'WILDWOOD', N'NJ', 38.9808, -74.8281)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113710, N'08270', N'WOODBINE', N'NJ', 39.2589, -74.8124)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113711, N'08302', N'BRIDGETON', N'NJ', 39.4433, -75.2554)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113712, N'08310', N'BUENA', N'NJ', 39.531, -74.8918)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113713, N'08311', N'CEDARVILLE', N'NJ', 39.3244, -75.2085)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113714, N'08312', N'CLAYTON', N'NJ', 39.6652, -75.0892)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113715, N'08313', N'DEERFIELD STREET', N'NJ', 39.5314, -75.2331)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113716, N'08314', N'DELMONT', N'NJ', 39.2229, -74.9493)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113717, N'08315', N'DIVIDING CREEK', N'NJ', 39.2743, -75.1114)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113718, N'08316', N'DORCHESTER', N'NJ', 39.2726, -74.9772)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113719, N'08317', N'DOROTHY', N'NJ', 39.4051, -74.8297)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113720, N'08318', N'ELMER', N'NJ', 39.5646, -75.1874)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113721, N'08319', N'ESTELL MANOR', N'NJ', 39.3801, -74.8047)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113722, N'08320', N'FAIRTON', N'NJ', 39.3818, -75.2206)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113723, N'08321', N'FORTESCUE', N'NJ', 39.2377, -75.1719)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113724, N'08322', N'FRANKLINVILLE', N'NJ', 39.6117, -75.0208)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113725, N'08323', N'GREENWICH', N'NJ', 39.386, -75.3403)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113726, N'08324', N'HEISLERVILLE', N'NJ', 39.2484, -74.9941)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113727, N'08326', N'LANDISVILLE', N'NJ', 39.5287, -74.9368)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113728, N'08327', N'LEESBURG', N'NJ', 39.2568, -74.9884)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113729, N'08328', N'MALAGA', N'NJ', 39.5797, -75.0618)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113730, N'08329', N'MAURICETOWN', N'NJ', 39.2859, -74.9938)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113731, N'08330', N'MAYS LANDING', N'NJ', 39.4502, -74.7366)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113732, N'08332', N'MILLVILLE', N'NJ', 39.3323, -74.9928)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113733, N'08340', N'MILMAY', N'NJ', 39.4478, -74.8649)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113734, N'08341', N'MINOTOLA', N'NJ', 39.5218, -74.9573)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113735, N'08342', N'MIZPAH', N'NJ', 39.4914, -74.8328)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113736, N'08343', N'MONROEVILLE', N'NJ', 39.6406, -75.1666)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113737, N'08344', N'NEWFIELD', N'NJ', 39.564, -75.0467)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113738, N'08345', N'NEWPORT', N'NJ', 39.2857, -75.1626)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113739, N'08346', N'NEWTONVILLE', N'NJ', 39.5652, -74.8507)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113740, N'08347', N'NORMA', N'NJ', 39.4963, -75.0886)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113741, N'08348', N'PORT ELIZABETH', N'NJ', 39.3136, -74.9816)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113742, N'08349', N'PORT NORRIS', N'NJ', 39.2511, -75.0885)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113743, N'08350', N'RICHLAND', N'NJ', 39.4775, -74.8633)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113744, N'08352', N'ROSENHAYN', N'NJ', 39.4758, -75.1284)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113745, N'08353', N'SHILOH', N'NJ', 39.4604, -75.2972)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113746, N'08360', N'VINELAND', N'NJ', 39.5016, -75.0264)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113747, N'08361', N'VINELAND', N'NJ', 39.4525, -74.9671)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113748, N'08362', N'VINELAND', N'NJ', 39.4811, -75.0095)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113749, N'08401', N'ATLANTIC CITY', N'NJ', 39.3648, -74.4342)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113750, N'08402', N'MARGATE CITY', N'NJ', 39.3305, -74.5064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113751, N'08403', N'LONGPORT', N'NJ', 39.3167, -74.5455)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113752, N'08404', N'ATLANTIC CITY', N'NJ', 39.3645, -74.4236)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113753, N'08405', N'ATLANTIC CITY', N'NJ', 39.3645, -74.4236)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113754, N'08406', N'VENTNOR CITY', N'NJ', 39.3406, -74.4859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113755, N'08501', N'ALLENTOWN', N'NJ', 40.1432, -74.5751)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113756, N'08502', N'BELLE MEAD', N'NJ', 40.464, -74.6439)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113757, N'08504', N'BLAWENBURG', N'NJ', 40.4076, -74.7032)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113758, N'08505', N'BORDENTOWN', N'NJ', 40.1281, -74.7174)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113759, N'08510', N'CLARKSBURG', N'NJ', 40.1821, -74.4301)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113760, N'08511', N'COOKSTOWN', N'NJ', 40.0438, -74.5574)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113761, N'08512', N'CRANBURY', N'NJ', 40.3132, -74.5206)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113762, N'08514', N'CREAM RIDGE', N'NJ', 40.1405, -74.4965)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113763, N'08515', N'CROSSWICKS', N'NJ', 40.144, -74.6589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113764, N'08518', N'FLORENCE', N'NJ', 40.1168, -74.8068)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113765, N'08520', N'HIGHTSTOWN', N'NJ', 40.252, -74.5126)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113766, N'08525', N'HOPEWELL', N'NJ', 40.3975, -74.7746)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113767, N'08526', N'IMLAYSTOWN', N'NJ', 40.1665, -74.5138)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113768, N'08527', N'JACKSON', N'NJ', 40.1058, -74.3545)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113769, N'08528', N'KINGSTON', N'NJ', 40.3759, -74.6153)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113770, N'08530', N'LAMBERTVILLE', N'NJ', 40.3766, -74.9002)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113771, N'08533', N'NEW EGYPT', N'NJ', 40.0688, -74.4961)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113772, N'08534', N'PENNINGTON', N'NJ', 40.3436, -74.8091)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113773, N'08535', N'PERRINEVILLE', N'NJ', 40.2114, -74.4365)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113774, N'08536', N'PLAINSBORO', N'NJ', 40.3338, -74.5836)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113775, N'08540', N'PRINCETON', N'NJ', 40.3679, -74.6543)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113776, N'08541', N'PRINCETON', N'NJ', 40.3486, -74.6597)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113777, N'08542', N'PRINCETON', N'NJ', 40.3524, -74.6595)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113778, N'08543', N'PRINCETON', N'NJ', 40.3486, -74.6597)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113779, N'08544', N'PRINCETON', N'NJ', 40.3486, -74.6597)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113780, N'08550', N'PRINCETON JUNCTION', N'NJ', 40.2948, -74.6122)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113781, N'08551', N'RINGOES', N'NJ', 40.4412, -74.8354)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113782, N'08553', N'ROCKY HILL', N'NJ', 40.4004, -74.6407)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113783, N'08554', N'ROEBLING', N'NJ', 40.1111, -74.7802)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113784, N'08555', N'ROOSEVELT', N'NJ', 40.2184, -74.4737)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113785, N'08556', N'ROSEMONT', N'NJ', 40.428, -74.981)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113786, N'08557', N'SERGEANTSVILLE', N'NJ', 40.4458, -74.9437)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113787, N'08558', N'SKILLMAN', N'NJ', 40.4188, -74.7009)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113788, N'08559', N'STOCKTON', N'NJ', 40.4365, -74.9753)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113789, N'08560', N'TITUSVILLE', N'NJ', 40.3134, -74.8615)
GO
print 'Processed 3100 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113790, N'08561', N'WINDSOR', N'NJ', 40.2367, -74.5876)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113791, N'08562', N'WRIGHTSTOWN', N'NJ', 40.0733, -74.5866)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113792, N'08570', N'CRANBURY', N'NJ', 40.3163, -74.5144)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113793, N'08601', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113794, N'08602', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113795, N'08603', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113796, N'08604', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113797, N'08605', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113798, N'08606', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113799, N'08607', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113800, N'08608', N'TRENTON', N'NJ', 40.2197, -74.7669)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113801, N'08609', N'TRENTON', N'NJ', 40.2267, -74.7402)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113802, N'08610', N'TRENTON', N'NJ', 40.1953, -74.7126)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113803, N'08611', N'TRENTON', N'NJ', 40.1951, -74.7448)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113804, N'08618', N'TRENTON', N'NJ', 40.2464, -74.7879)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113805, N'08619', N'TRENTON', N'NJ', 40.2417, -74.6936)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113806, N'08620', N'TRENTON', N'NJ', 40.1542, -74.6404)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113807, N'08625', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113808, N'08628', N'TRENTON', N'NJ', 40.272, -74.8191)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113809, N'08629', N'TRENTON', N'NJ', 40.2204, -74.7306)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113810, N'08638', N'TRENTON', N'NJ', 40.2732, -74.764)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113811, N'08640', N'TRENTON', N'NJ', 40.0063, -74.517)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113812, N'08641', N'TRENTON', N'NJ', 40.0288, -74.5883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113813, N'08645', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113814, N'08646', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113815, N'08647', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113816, N'08648', N'TRENTON', N'NJ', 40.2832, -74.7089)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113817, N'08650', N'TRENTON', N'NJ', 40.2241, -74.7648)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113818, N'08666', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113819, N'08677', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113820, N'08690', N'TRENTON', N'NJ', 40.2318, -74.6526)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113821, N'08691', N'TRENTON', N'NJ', 40.2135, -74.5716)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113822, N'08695', N'TRENTON', N'NJ', 40.2167, -74.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113823, N'08701', N'LAKEWOOD', N'NJ', 40.0765, -74.2021)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113824, N'08720', N'ALLENWOOD', N'NJ', 40.1417, -74.1006)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113825, N'08721', N'BAYVILLE', N'NJ', 39.9119, -74.2096)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113826, N'08722', N'BEACHWOOD', N'NJ', 39.9278, -74.202)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113827, N'08723', N'BRICK', N'NJ', 40.0399, -74.1255)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113828, N'08724', N'BRICK', N'NJ', 40.0859, -74.1164)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113829, N'08730', N'BRIELLE', N'NJ', 40.1068, -74.0644)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113830, N'08731', N'FORKED RIVER', N'NJ', 39.8591, -74.2817)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113831, N'08732', N'ISLAND HEIGHTS', N'NJ', 39.9425, -74.143)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113832, N'08733', N'LAKEHURST', N'NJ', 40.0103, -74.337)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113833, N'08734', N'LANOKA HARBOR', N'NJ', 39.8632, -74.1748)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113834, N'08735', N'LAVALLETTE', N'NJ', 39.9788, -74.0691)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113835, N'08736', N'MANASQUAN', N'NJ', 40.1257, -74.0759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113836, N'08738', N'MANTOLOKING', N'NJ', 40.0268, -74.0551)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113837, N'08739', N'NORMANDY BEACH', N'NJ', 40.0025, -74.0609)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113838, N'08740', N'OCEAN GATE', N'NJ', 39.9259, -74.1352)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113839, N'08741', N'PINE BEACH', N'NJ', 39.9337, -74.1681)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113840, N'08742', N'POINT PLEASANT BEACH', N'NJ', 40.0839, -74.0496)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113841, N'08750', N'SEA GIRT', N'NJ', 40.1333, -74.0422)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113842, N'08751', N'SEASIDE HEIGHTS', N'NJ', 39.9485, -74.0761)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113843, N'08752', N'SEASIDE PARK', N'NJ', 39.8448, -74.0905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113844, N'08753', N'TOMS RIVER', N'NJ', 39.9821, -74.1609)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113845, N'08754', N'TOMS RIVER', N'NJ', 39.9539, -74.1985)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113846, N'08755', N'TOMS RIVER', N'NJ', 40.0075, -74.2231)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113847, N'08756', N'TOMS RIVER', N'NJ', 39.9539, -74.1985)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113848, N'08757', N'TOMS RIVER', N'NJ', 39.9559, -74.2574)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113849, N'08758', N'WARETOWN', N'NJ', 39.7955, -74.257)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113850, N'08759', N'MANCHESTER TOWNSHIP', N'NJ', 39.9235, -74.4092)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113851, N'08801', N'ANNANDALE', N'NJ', 40.633, -74.8807)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113852, N'08802', N'ASBURY', N'NJ', 40.6731, -75.029)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113853, N'08803', N'BAPTISTOWN', N'NJ', 40.5217, -75.0066)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113854, N'08804', N'BLOOMSBURY', N'NJ', 40.6416, -75.0989)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113855, N'08805', N'BOUND BROOK', N'NJ', 40.5659, -74.5449)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113856, N'08807', N'BRIDGEWATER', N'NJ', 40.5945, -74.6244)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113857, N'08808', N'BROADWAY', N'NJ', 40.7318, -75.0516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113858, N'08809', N'CLINTON', N'NJ', 40.644, -74.9202)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113859, N'08810', N'DAYTON', N'NJ', 40.3793, -74.4959)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113860, N'08812', N'DUNELLEN', N'NJ', 40.6011, -74.4794)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113861, N'08816', N'EAST BRUNSWICK', N'NJ', 40.4299, -74.4181)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113862, N'08817', N'EDISON', N'NJ', 40.5175, -74.3955)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113863, N'08818', N'EDISON', N'NJ', 40.5248, -74.3827)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113864, N'08820', N'EDISON', N'NJ', 40.5776, -74.3653)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113865, N'08821', N'FLAGTOWN', N'NJ', 40.5205, -74.6873)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113866, N'08822', N'FLEMINGTON', N'NJ', 40.5207, -74.8671)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113867, N'08823', N'FRANKLIN PARK', N'NJ', 40.4471, -74.5435)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113868, N'08824', N'KENDALL PARK', N'NJ', 40.42, -74.5527)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113869, N'08825', N'FRENCHTOWN', N'NJ', 40.5139, -75.0269)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113870, N'08826', N'GLEN GARDNER', N'NJ', 40.729, -74.9025)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113871, N'08827', N'HAMPTON', N'NJ', 40.6673, -74.9637)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113872, N'08828', N'HELMETTA', N'NJ', 40.3772, -74.4235)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113873, N'08829', N'HIGH BRIDGE', N'NJ', 40.6684, -74.894)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113874, N'08830', N'ISELIN', N'NJ', 40.571, -74.3169)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113875, N'08831', N'MONROE TOWNSHIP', N'NJ', 40.3458, -74.4247)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113876, N'08832', N'KEASBEY', N'NJ', 40.5142, -74.3145)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113877, N'08833', N'LEBANON', N'NJ', 40.6482, -74.817)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113878, N'08834', N'LITTLE YORK', N'NJ', 40.6111, -75.0764)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113879, N'08835', N'MANVILLE', N'NJ', 40.542, -74.5894)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113880, N'08836', N'MARTINSVILLE', N'NJ', 40.5996, -74.5578)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113881, N'08837', N'EDISON', N'NJ', 40.5139, -74.3474)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113882, N'08840', N'METUCHEN', N'NJ', 40.5419, -74.3626)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113883, N'08844', N'HILLSBOROUGH', N'NJ', 40.4995, -74.629)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113884, N'08846', N'MIDDLESEX', N'NJ', 40.5739, -74.5008)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113885, N'08848', N'MILFORD', N'NJ', 40.5938, -75.0967)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113886, N'08850', N'MILLTOWN', N'NJ', 40.4484, -74.4408)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113887, N'08852', N'MONMOUTH JUNCTION', N'NJ', 40.3897, -74.5487)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113888, N'08853', N'NESHANIC STATION', N'NJ', 40.4972, -74.7324)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113889, N'08854', N'PISCATAWAY', N'NJ', 40.5465, -74.4629)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113890, N'08855', N'PISCATAWAY', N'NJ', 40.4992, -74.3996)
GO
print 'Processed 3200 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113891, N'08857', N'OLD BRIDGE', N'NJ', 40.3948, -74.3294)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113892, N'08858', N'OLDWICK', N'NJ', 40.6728, -74.7476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113893, N'08859', N'PARLIN', N'NJ', 40.4576, -74.306)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113894, N'08861', N'PERTH AMBOY', N'NJ', 40.5225, -74.2746)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113895, N'08862', N'PERTH AMBOY', N'NJ', 40.5067, -74.2655)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113896, N'08863', N'FORDS', N'NJ', 40.5421, -74.3112)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113897, N'08865', N'PHILLIPSBURG', N'NJ', 40.7083, -75.1472)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113898, N'08867', N'PITTSTOWN', N'NJ', 40.5753, -74.9659)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113899, N'08868', N'QUAKERTOWN', N'NJ', 40.5658, -74.9418)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113900, N'08869', N'RARITAN', N'NJ', 40.5726, -74.6423)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113901, N'08870', N'READINGTON', N'NJ', 40.5688, -74.7383)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113902, N'08871', N'SAYREVILLE', N'NJ', 40.4595, -74.3616)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113903, N'08872', N'SAYREVILLE', N'NJ', 40.4618, -74.3449)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113904, N'08873', N'SOMERSET', N'NJ', 40.5013, -74.5325)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113905, N'08875', N'SOMERSET', N'NJ', 40.5014, -74.5814)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113906, N'08876', N'SOMERVILLE', N'NJ', 40.5554, -74.6608)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113907, N'08877', N'SOUTH RIVER', N'NJ', 40.4467, -74.3865)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113908, N'08878', N'SOUTH AMBOY', N'NJ', 40.4776, -74.2913)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113909, N'08879', N'SOUTH AMBOY', N'NJ', 40.4806, -74.2888)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113910, N'08880', N'SOUTH BOUND BROOK', N'NJ', 40.5535, -74.528)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113911, N'08882', N'SOUTH RIVER', N'NJ', 40.4445, -74.378)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113912, N'08884', N'SPOTSWOOD', N'NJ', 40.3791, -74.3924)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113913, N'08885', N'STANTON', N'NJ', 40.5751, -74.8382)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113914, N'08886', N'STEWARTSVILLE', N'NJ', 40.6886, -75.104)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113915, N'08887', N'THREE BRIDGES', N'NJ', 40.5212, -74.8045)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113916, N'08888', N'WHITEHOUSE', N'NJ', 40.6184, -74.7444)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113917, N'08889', N'WHITEHOUSE STATION', N'NJ', 40.6076, -74.7594)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113918, N'08890', N'ZAREPHATH', N'NJ', 40.5366, -74.5752)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113919, N'08896', N'RARITAN', N'NJ', 40.5715, -74.6383)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113920, N'08899', N'EDISON', N'NJ', 40.5247, -74.3806)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113921, N'08901', N'NEW BRUNSWICK', N'NJ', 40.4861, -74.4473)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113922, N'08902', N'NORTH BRUNSWICK', N'NJ', 40.4497, -74.482)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113923, N'08903', N'NEW BRUNSWICK', N'NJ', 40.4863, -74.4525)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113924, N'08904', N'HIGHLAND PARK', N'NJ', 40.5001, -74.4284)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113925, N'08905', N'NEW BRUNSWICK', N'NJ', 40.4863, -74.4525)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113926, N'08906', N'NEW BRUNSWICK', N'NJ', 40.4894, -74.4494)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113927, N'08922', N'NEW BRUNSWICK', N'NJ', 40.4863, -74.4525)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113928, N'08933', N'NEW BRUNSWICK', N'NJ', 40.4863, -74.4525)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113929, N'08988', N'NEW BRUNSWICK', N'NJ', 40.4863, -74.4525)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113930, N'08989', N'NEW BRUNSWICK', N'NJ', 40.4863, -74.4525)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113931, N'09007', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113932, N'09009', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113933, N'09012', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113934, N'09013', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113935, N'09014', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113936, N'09021', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113937, N'09028', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113938, N'09029', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113939, N'09031', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113940, N'09033', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113941, N'09034', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113942, N'09036', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113943, N'09037', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113944, N'09042', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113945, N'09045', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113946, N'09046', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113947, N'09050', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113948, N'09053', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113949, N'09054', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113950, N'09056', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113951, N'09058', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113952, N'09059', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113953, N'09060', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113954, N'09063', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113955, N'09067', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113956, N'09069', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113957, N'09072', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113958, N'09074', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113959, N'09076', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113960, N'09080', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113961, N'09081', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113962, N'09086', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113963, N'09089', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113964, N'09090', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113965, N'09094', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113966, N'09095', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113967, N'09096', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113968, N'09098', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113969, N'09099', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113970, N'09100', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113971, N'09102', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113972, N'09103', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113973, N'09104', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113974, N'09106', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113975, N'09107', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113976, N'09110', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113977, N'09111', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113978, N'09112', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113979, N'09114', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113980, N'09123', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113981, N'09126', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113982, N'09128', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113983, N'09131', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113984, N'09136', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113985, N'09137', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113986, N'09138', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113987, N'09139', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113988, N'09140', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113989, N'09142', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113990, N'09143', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113991, N'09154', N'APO', N'AE', 0, 0)
GO
print 'Processed 3300 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113992, N'09157', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113993, N'09164', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113994, N'09165', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113995, N'09166', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113996, N'09169', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113997, N'09172', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113998, N'09173', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (113999, N'09175', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114000, N'09177', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114001, N'09178', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114002, N'09180', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114003, N'09182', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114004, N'09183', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114005, N'09185', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114006, N'09186', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114007, N'09189', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114008, N'09211', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114009, N'09212', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114010, N'09213', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114011, N'09214', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114012, N'09220', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114013, N'09222', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114014, N'09225', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114015, N'09226', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114016, N'09227', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114017, N'09229', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114018, N'09234', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114019, N'09237', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114020, N'09239', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114021, N'09244', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114022, N'09245', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114023, N'09250', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114024, N'09252', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114025, N'09262', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114026, N'09263', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114027, N'09264', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114028, N'09265', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114029, N'09266', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114030, N'09267', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114031, N'09269', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114032, N'09275', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114033, N'09302', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114034, N'09303', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114035, N'09304', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114036, N'09305', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114037, N'09309', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114038, N'09310', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114039, N'09311', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114040, N'09314', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114041, N'09315', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114042, N'09316', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114043, N'09317', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114044, N'09318', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114045, N'09320', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114046, N'09340', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114047, N'09345', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114048, N'09350', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114049, N'09351', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114050, N'09352', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114051, N'09353', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114052, N'09354', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114053, N'09355', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114054, N'09356', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114055, N'09360', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114056, N'09361', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114057, N'09364', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114058, N'09395', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114059, N'09396', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114060, N'09409', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114061, N'09419', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114062, N'09420', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114063, N'09421', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114064, N'09447', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114065, N'09448', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114066, N'09449', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114067, N'09454', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114068, N'09456', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114069, N'09459', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114070, N'09461', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114071, N'09463', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114072, N'09464', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114073, N'09468', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114074, N'09469', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114075, N'09470', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114076, N'09494', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114077, N'09496', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114078, N'09498', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114079, N'09499', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114080, N'09501', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114081, N'09502', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114082, N'09503', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114083, N'09504', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114084, N'09505', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114085, N'09506', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114086, N'09507', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114087, N'09508', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114088, N'09509', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114089, N'09510', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114090, N'09511', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114091, N'09517', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114092, N'09521', N'FPO', N'AE', 0, 0)
GO
print 'Processed 3400 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114093, N'09524', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114094, N'09532', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114095, N'09534', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114096, N'09543', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114097, N'09544', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114098, N'09545', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114099, N'09549', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114100, N'09550', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114101, N'09551', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114102, N'09554', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114103, N'09556', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114104, N'09557', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114105, N'09564', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114106, N'09565', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114107, N'09566', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114108, N'09567', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114109, N'09568', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114110, N'09569', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114111, N'09570', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114112, N'09573', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114113, N'09574', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114114, N'09575', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114115, N'09576', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114116, N'09577', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114117, N'09578', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114118, N'09579', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114119, N'09581', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114120, N'09582', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114121, N'09586', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114122, N'09587', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114123, N'09588', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114124, N'09589', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114125, N'09590', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114126, N'09591', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114127, N'09593', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114128, N'09594', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114129, N'09595', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114130, N'09596', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114131, N'09599', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114132, N'09601', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114133, N'09603', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114134, N'09604', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114135, N'09609', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114136, N'09610', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114137, N'09612', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114138, N'09613', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114139, N'09617', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114140, N'09618', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114141, N'09619', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114142, N'09620', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114143, N'09621', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114144, N'09622', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114145, N'09623', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114146, N'09624', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114147, N'09625', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114148, N'09626', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114149, N'09627', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114150, N'09628', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114151, N'09630', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114152, N'09631', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114153, N'09636', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114154, N'09638', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114155, N'09642', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114156, N'09643', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114157, N'09644', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114158, N'09645', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114159, N'09647', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114160, N'09649', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114161, N'09703', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114162, N'09704', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114163, N'09705', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114164, N'09706', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114165, N'09707', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114166, N'09708', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114167, N'09709', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114168, N'09710', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114169, N'09711', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114170, N'09713', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114171, N'09714', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114172, N'09715', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114173, N'09716', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114174, N'09717', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114175, N'09718', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114176, N'09720', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114177, N'09721', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114178, N'09722', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114179, N'09723', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114180, N'09724', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114181, N'09725', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114182, N'09726', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114183, N'09727', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114184, N'09728', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114185, N'09729', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114186, N'09730', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114187, N'09731', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114188, N'09732', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114189, N'09733', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114190, N'09734', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114191, N'09735', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114192, N'09777', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114193, N'09779', N'APO', N'AE', 0, 0)
GO
print 'Processed 3500 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114194, N'09780', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114195, N'09782', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114196, N'09783', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114197, N'09784', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114198, N'09789', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114199, N'09790', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114200, N'09791', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114201, N'09792', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114202, N'09793', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114203, N'09797', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114204, N'09802', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114205, N'09803', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114206, N'09804', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114207, N'09805', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114208, N'09808', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114209, N'09809', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114210, N'09810', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114211, N'09811', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114212, N'09812', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114213, N'09813', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114214, N'09814', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114215, N'09815', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114216, N'09816', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114217, N'09819', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114218, N'09821', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114219, N'09822', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114220, N'09823', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114221, N'09824', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114222, N'09825', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114223, N'09826', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114224, N'09827', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114225, N'09828', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114226, N'09829', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114227, N'09830', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114228, N'09831', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114229, N'09832', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114230, N'09833', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114231, N'09834', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114232, N'09835', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114233, N'09836', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114234, N'09837', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114235, N'09838', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114236, N'09839', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114237, N'09841', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114238, N'09842', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114239, N'09843', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114240, N'09844', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114241, N'09852', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114242, N'09853', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114243, N'09854', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114244, N'09855', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114245, N'09858', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114246, N'09865', N'FPO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114247, N'09866', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114248, N'09868', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114249, N'09871', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114250, N'09880', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114251, N'09882', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114252, N'09888', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114253, N'09889', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114254, N'09890', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114255, N'09892', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114256, N'09894', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114257, N'09898', N'APO', N'AE', 0, 0)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114258, N'10001', N'NEW YORK', N'NY', 40.75, -73.9967)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114259, N'10002', N'NEW YORK', N'NY', 40.7153, -73.9866)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114260, N'10003', N'NEW YORK', N'NY', 40.7316, -73.9891)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114261, N'10004', N'NEW YORK', N'NY', 40.7034, -74.0132)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114262, N'10005', N'NEW YORK', N'NY', 40.7059, -74.0086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114263, N'10006', N'NEW YORK', N'NY', 40.7092, -74.0128)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114264, N'10007', N'NEW YORK', N'NY', 40.7144, -74.0094)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114265, N'10008', N'NEW YORK', N'NY', 40.7144, -74.0065)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114266, N'10009', N'NEW YORK', N'NY', 40.7255, -73.9785)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114267, N'10010', N'NEW YORK', N'NY', 40.7386, -73.9826)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114268, N'10011', N'NEW YORK', N'NY', 40.7409, -73.9997)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114269, N'10012', N'NEW YORK', N'NY', 40.7253, -73.9979)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114270, N'10013', N'NEW YORK', N'NY', 40.7201, -74.0047)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114271, N'10014', N'NEW YORK', N'NY', 40.733, -74.0071)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114272, N'10015', N'NEW YORK', N'NY', 40.7156, -73.9896)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114273, N'10016', N'NEW YORK', N'NY', 40.7445, -73.9782)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114274, N'10017', N'NEW YORK', N'NY', 40.7519, -73.9728)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114275, N'10018', N'NEW YORK', N'NY', 40.7557, -73.9967)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114276, N'10019', N'NEW YORK', N'NY', 40.7652, -73.9853)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114277, N'10020', N'NEW YORK', N'NY', 40.7586, -73.9789)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114278, N'10021', N'NEW YORK', N'NY', 40.768, -73.9597)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114279, N'10022', N'NEW YORK', N'NY', 40.7582, -73.9679)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114280, N'10023', N'NEW YORK', N'NY', 40.7761, -73.9841)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114281, N'10024', N'NEW YORK', N'NY', 40.786, -73.9758)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114282, N'10025', N'NEW YORK', N'NY', 40.7894, -73.9672)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114283, N'10026', N'NEW YORK', N'NY', 40.8031, -73.9536)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114284, N'10027', N'NEW YORK', N'NY', 40.8113, -73.9538)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114285, N'10028', N'NEW YORK', N'NY', 40.7764, -73.9527)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114286, N'10029', N'NEW YORK', N'NY', 40.7917, -73.9439)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114287, N'10030', N'NEW YORK', N'NY', 40.8179, -73.944)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114288, N'10031', N'NEW YORK', N'NY', 40.8343, -73.9468)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114289, N'10032', N'NEW YORK', N'NY', 40.839, -73.9425)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114290, N'10033', N'NEW YORK', N'NY', 40.8486, -73.9354)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114291, N'10034', N'NEW YORK', N'NY', 40.8677, -73.9207)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114292, N'10035', N'NEW YORK', N'NY', 40.8022, -73.9368)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114293, N'10036', N'NEW YORK', N'NY', 40.7593, -73.9902)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114294, N'10037', N'NEW YORK', N'NY', 40.8135, -73.9374)
GO
print 'Processed 3600 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114295, N'10038', N'NEW YORK', N'NY', 40.7088, -74.0029)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114296, N'10039', N'NEW YORK', N'NY', 40.8274, -73.9372)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114297, N'10040', N'NEW YORK', N'NY', 40.8585, -73.9293)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114298, N'10041', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114299, N'10043', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114300, N'10044', N'NEW YORK', N'NY', 40.7621, -73.9496)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114301, N'10045', N'NEW YORK', N'NY', 40.7106, -74.0156)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114302, N'10046', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114303, N'10047', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114304, N'10048', N'NEW YORK', N'NY', 40.7128, -74.0092)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114305, N'10055', N'NEW YORK', N'NY', 40.7579, -73.9743)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114306, N'10060', N'NEW YORK', N'NY', 40.7431, -73.9915)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114307, N'10069', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114308, N'10072', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114309, N'10079', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114310, N'10080', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114311, N'10081', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114312, N'10082', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114313, N'10087', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114314, N'10090', N'NEW YORK', N'NY', 40.7108, -74.0001)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114315, N'10094', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114316, N'10095', N'NEW YORK', N'NY', 40.7288, -73.9998)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114317, N'10096', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114318, N'10098', N'NEW YORK', N'NY', 40.7416, -73.9925)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114319, N'10099', N'NEW YORK', N'NY', 40.7447, -73.9913)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114320, N'10101', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114321, N'10102', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114322, N'10103', N'NEW YORK', N'NY', 40.7577, -73.9752)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114323, N'10104', N'NEW YORK', N'NY', 40.7611, -73.9777)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114324, N'10105', N'NEW YORK', N'NY', 40.7644, -73.978)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114325, N'10106', N'NEW YORK', N'NY', 40.7668, -73.9822)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114326, N'10107', N'NEW YORK', N'NY', 40.7659, -73.9814)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114327, N'10108', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114328, N'10109', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114329, N'10110', N'NEW YORK', N'NY', 40.7414, -73.9903)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114330, N'10111', N'NEW YORK', N'NY', 40.7585, -73.9785)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114331, N'10112', N'NEW YORK', N'NY', 40.7595, -73.9797)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114332, N'10113', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114333, N'10114', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114334, N'10115', N'NEW YORK', N'NY', 40.8128, -73.9647)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114335, N'10116', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114336, N'10117', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114337, N'10118', N'NEW YORK', N'NY', 40.7486, -73.9904)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114338, N'10119', N'NEW YORK', N'NY', 40.7511, -73.9933)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114339, N'10120', N'NEW YORK', N'NY', 40.7487, -73.9862)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114340, N'10121', N'NEW YORK', N'NY', 40.7509, -73.9935)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114341, N'10122', N'NEW YORK', N'NY', 40.749, -73.9885)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114342, N'10123', N'NEW YORK', N'NY', 40.7516, -73.9899)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114343, N'10124', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114344, N'10125', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114345, N'10126', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114346, N'10128', N'NEW YORK', N'NY', 40.7819, -73.9507)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114347, N'10129', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114348, N'10130', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114349, N'10131', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114350, N'10132', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114351, N'10133', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114352, N'10138', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114353, N'10149', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114354, N'10150', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114355, N'10151', N'NEW YORK', N'NY', 40.7644, -73.9754)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114356, N'10152', N'NEW YORK', N'NY', 40.7622, -73.9726)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114357, N'10153', N'NEW YORK', N'NY', 40.7439, -73.9755)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114358, N'10154', N'NEW YORK', N'NY', 40.7495, -73.9791)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114359, N'10155', N'NEW YORK', N'NY', 40.7629, -73.9695)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114360, N'10156', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114361, N'10157', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114362, N'10158', N'NEW YORK', N'NY', 40.7193, -73.9759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114363, N'10159', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114364, N'10160', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114365, N'10161', N'NEW YORK', N'NY', 40.7457, -73.9937)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114366, N'10162', N'NEW YORK', N'NY', 40.7695, -73.9512)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114367, N'10163', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114368, N'10164', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114369, N'10165', N'NEW YORK', N'NY', 40.7536, -73.9823)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114370, N'10166', N'NEW YORK', N'NY', 40.7545, -73.9757)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114371, N'10167', N'NEW YORK', N'NY', 40.7552, -73.9734)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114372, N'10168', N'NEW YORK', N'NY', 40.7524, -73.983)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114373, N'10169', N'NEW YORK', N'NY', 40.7547, -73.9773)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114374, N'10170', N'NEW YORK', N'NY', 40.7512, -73.9779)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114375, N'10171', N'NEW YORK', N'NY', 40.7588, -73.9762)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114376, N'10172', N'NEW YORK', N'NY', 40.7546, -73.9736)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114377, N'10173', N'NEW YORK', N'NY', 40.7515, -73.9785)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114378, N'10174', N'NEW YORK', N'NY', 40.7519, -73.9778)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114379, N'10175', N'NEW YORK', N'NY', 40.7564, -73.9827)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114380, N'10176', N'NEW YORK', N'NY', 40.7525, -73.9792)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114381, N'10177', N'NEW YORK', N'NY', 40.7548, -73.9776)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114382, N'10178', N'NEW YORK', N'NY', 40.7479, -73.9793)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114383, N'10179', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114384, N'10184', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114385, N'10185', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114386, N'10196', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114387, N'10197', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114388, N'10199', N'NEW YORK', N'NY', 40.7427, -73.9934)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114389, N'10203', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114390, N'10211', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114391, N'10212', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114392, N'10213', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114393, N'10242', N'NEW YORK', N'NY', 40.7417, -73.9935)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114394, N'10249', N'NEW YORK', N'NY', 40.7407, -73.9949)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114395, N'10256', N'NEW YORK', N'NY', 40.7143, -74.0067)
GO
print 'Processed 3700 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114396, N'10257', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114397, N'10258', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114398, N'10259', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114399, N'10260', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114400, N'10261', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114401, N'10265', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114402, N'10268', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114403, N'10269', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114404, N'10270', N'NEW YORK', N'NY', 40.7053, -74.0068)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114405, N'10271', N'NEW YORK', N'NY', 40.7073, -74.0111)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114406, N'10272', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114407, N'10273', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114408, N'10274', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114409, N'10275', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114410, N'10276', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114411, N'10277', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114412, N'10278', N'NEW YORK', N'NY', 40.7144, -74.0046)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114413, N'10279', N'NEW YORK', N'NY', 40.7099, -74.0097)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114414, N'10280', N'NEW YORK', N'NY', 40.7089, -74.0165)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114415, N'10281', N'NEW YORK', N'NY', 40.7058, -74.0186)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114416, N'10282', N'NEW YORK', N'NY', 40.7035, -74.0146)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114417, N'10285', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114418, N'10286', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114419, N'10292', N'NEW YORK', N'NY', 40.7143, -74.0067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114420, N'10301', N'STATEN ISLAND', N'NY', 40.6308, -74.0923)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114421, N'10302', N'STATEN ISLAND', N'NY', 40.6314, -74.1369)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114422, N'10303', N'STATEN ISLAND', N'NY', 40.6311, -74.1722)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114423, N'10304', N'STATEN ISLAND', N'NY', 40.6059, -74.0942)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114424, N'10305', N'STATEN ISLAND', N'NY', 40.595, -74.0754)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114425, N'10306', N'STATEN ISLAND', N'NY', 40.5682, -74.1247)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114426, N'10307', N'STATEN ISLAND', N'NY', 40.5087, -74.2422)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114427, N'10308', N'STATEN ISLAND', N'NY', 40.5509, -74.1507)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114428, N'10309', N'STATEN ISLAND', N'NY', 40.5313, -74.2184)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114429, N'10310', N'STATEN ISLAND', N'NY', 40.6319, -74.1169)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114430, N'10311', N'STATEN ISLAND', N'NY', 40.6151, -74.1727)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114431, N'10312', N'STATEN ISLAND', N'NY', 40.5446, -74.1795)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114432, N'10313', N'STATEN ISLAND', N'NY', 40.6172, -74.1221)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114433, N'10314', N'STATEN ISLAND', N'NY', 40.6, -74.1607)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114434, N'10451', N'BRONX', N'NY', 40.8208, -73.9235)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114435, N'10452', N'BRONX', N'NY', 40.8376, -73.9236)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114436, N'10453', N'BRONX', N'NY', 40.8528, -73.9133)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114437, N'10454', N'BRONX', N'NY', 40.8055, -73.9167)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114438, N'10455', N'BRONX', N'NY', 40.8147, -73.9084)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114439, N'10456', N'BRONX', N'NY', 40.8304, -73.9079)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114440, N'10457', N'BRONX', N'NY', 40.8466, -73.8986)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114441, N'10458', N'BRONX', N'NY', 40.8627, -73.888)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114442, N'10459', N'BRONX', N'NY', 40.8256, -73.8935)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114443, N'10460', N'BRONX', N'NY', 40.8446, -73.88)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114444, N'10461', N'BRONX', N'NY', 40.8469, -73.8398)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114445, N'10462', N'BRONX', N'NY', 40.8428, -73.8593)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114446, N'10463', N'BRONX', N'NY', 40.8822, -73.9053)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114447, N'10464', N'BRONX', N'NY', 40.8719, -73.8039)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114448, N'10465', N'BRONX', N'NY', 40.8263, -73.8227)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114449, N'10466', N'BRONX', N'NY', 40.8905, -73.8471)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114450, N'10467', N'BRONX', N'NY', 40.8778, -73.8721)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114451, N'10468', N'BRONX', N'NY', 40.8702, -73.8979)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114452, N'10469', N'BRONX', N'NY', 40.8683, -73.8469)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114453, N'10470', N'BRONX', N'NY', 40.9009, -73.8642)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114454, N'10471', N'BRONX', N'NY', 40.8999, -73.9028)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114455, N'10472', N'BRONX', N'NY', 40.8295, -73.8705)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114456, N'10473', N'BRONX', N'NY', 40.8182, -73.8589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114457, N'10474', N'BRONX', N'NY', 40.8106, -73.8845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114458, N'10475', N'BRONX', N'NY', 40.8737, -73.8278)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114459, N'10499', N'BRONX', N'NY', 40.8207, -73.9223)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114460, N'10501', N'AMAWALK', N'NY', 41.2957, -73.7594)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114461, N'10502', N'ARDSLEY', N'NY', 41.0065, -73.8443)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114462, N'10503', N'ARDSLEY ON HUDSON', N'NY', 41.0268, -73.8758)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114463, N'10504', N'ARMONK', N'NY', 41.1347, -73.7005)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114464, N'10505', N'BALDWIN PLACE', N'NY', 41.3444, -73.7489)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114465, N'10506', N'BEDFORD', N'NY', 41.191, -73.6333)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114466, N'10507', N'BEDFORD HILLS', N'NY', 41.2288, -73.6918)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114467, N'10509', N'BREWSTER', N'NY', 41.4102, -73.5929)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114468, N'10510', N'BRIARCLIFF MANOR', N'NY', 41.1414, -73.8338)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114469, N'10511', N'BUCHANAN', N'NY', 41.2634, -73.9445)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114470, N'10512', N'CARMEL', N'NY', 41.447, -73.7115)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114471, N'10514', N'CHAPPAQUA', N'NY', 41.1744, -73.769)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114472, N'10516', N'COLD SPRING', N'NY', 41.4593, -73.8985)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114473, N'10517', N'CROMPOND', N'NY', 41.2976, -73.8672)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114474, N'10518', N'CROSS RIVER', N'NY', 41.2662, -73.5925)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114475, N'10519', N'CROTON FALLS', N'NY', 41.3472, -73.6616)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114476, N'10520', N'CROTON ON HUDSON', N'NY', 41.2219, -73.887)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114477, N'10521', N'CROTON ON HUDSON', N'NY', 41.2358, -73.9298)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114478, N'10522', N'DOBBS FERRY', N'NY', 41.0122, -73.8651)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114479, N'10523', N'ELMSFORD', N'NY', 41.0597, -73.817)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114480, N'10524', N'GARRISON', N'NY', 41.3758, -73.9222)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114481, N'10526', N'GOLDENS BRIDGE', N'NY', 41.2988, -73.667)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114482, N'10527', N'GRANITE SPRINGS', N'NY', 41.3129, -73.755)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114483, N'10528', N'HARRISON', N'NY', 40.9782, -73.7236)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114484, N'10530', N'HARTSDALE', N'NY', 41.0201, -73.808)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114485, N'10532', N'HAWTHORNE', N'NY', 41.0942, -73.8027)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114486, N'10533', N'IRVINGTON', N'NY', 41.0402, -73.8532)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114487, N'10535', N'JEFFERSON VALLEY', N'NY', 41.3361, -73.7999)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114488, N'10536', N'KATONAH', N'NY', 41.2685, -73.6548)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114489, N'10537', N'LAKE PEEKSKILL', N'NY', 41.3474, -73.8821)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114490, N'10538', N'LARCHMONT', N'NY', 40.9369, -73.7565)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114491, N'10540', N'LINCOLNDALE', N'NY', 41.3293, -73.7275)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114492, N'10541', N'MAHOPAC', N'NY', 41.3759, -73.7482)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114493, N'10542', N'MAHOPAC FALLS', N'NY', 41.3716, -73.7622)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114494, N'10543', N'MAMARONECK', N'NY', 40.9533, -73.7381)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114495, N'10545', N'MARYKNOLL', N'NY', 41.1605, -73.8672)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114496, N'10546', N'MILLWOOD', N'NY', 41.2019, -73.7927)
GO
print 'Processed 3800 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114497, N'10547', N'MOHEGAN LAKE', N'NY', 41.3106, -73.8477)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114498, N'10548', N'MONTROSE', N'NY', 41.2491, -73.9453)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114499, N'10549', N'MOUNT KISCO', N'NY', 41.1974, -73.7198)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114500, N'10550', N'MOUNT VERNON', N'NY', 40.9061, -73.8353)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114501, N'10551', N'MOUNT VERNON', N'NY', 40.9127, -73.8378)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114502, N'10552', N'MOUNT VERNON', N'NY', 40.9243, -73.8256)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114503, N'10553', N'MOUNT VERNON', N'NY', 40.909, -73.8213)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114504, N'10557', N'MOUNT VERNON', N'NY', 40.9127, -73.8378)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114505, N'10558', N'MOUNT VERNON', N'NY', 40.9127, -73.8378)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114506, N'10560', N'NORTH SALEM', N'NY', 41.3372, -73.5887)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114507, N'10562', N'OSSINING', N'NY', 41.1949, -73.8307)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114508, N'10566', N'PEEKSKILL', N'NY', 41.2893, -73.9009)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114509, N'10567', N'CORTLANDT MANOR', N'NY', 41.2893, -73.9009)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114510, N'10570', N'PLEASANTVILLE', N'NY', 41.1279, -73.7929)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114511, N'10571', N'PLEASANTVILLE', N'NY', 41.1329, -73.7933)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114512, N'10572', N'PLEASANTVILLE', N'NY', 41.1329, -73.7933)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114513, N'10573', N'PORT CHESTER', N'NY', 41.0136, -73.6759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114514, N'10576', N'POUND RIDGE', N'NY', 41.2116, -73.5748)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114515, N'10577', N'PURCHASE', N'NY', 41.0397, -73.7118)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114516, N'10578', N'PURDYS', N'NY', 41.3178, -73.6377)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114517, N'10579', N'PUTNAM VALLEY', N'NY', 41.3969, -73.8382)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114518, N'10580', N'RYE', N'NY', 40.9798, -73.6956)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114519, N'10583', N'SCARSDALE', N'NY', 40.989, -73.793)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114520, N'10587', N'SHENOROCK', N'NY', 41.3201, -73.7371)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114521, N'10588', N'SHRUB OAK', N'NY', 41.3255, -73.8293)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114522, N'10589', N'SOMERS', N'NY', 41.3294, -73.6903)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114523, N'10590', N'SOUTH SALEM', N'NY', 41.2554, -73.5385)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114524, N'10591', N'TARRYTOWN', N'NY', 41.0851, -73.846)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114525, N'10594', N'THORNWOOD', N'NY', 41.1153, -73.7693)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114526, N'10595', N'VALHALLA', N'NY', 41.0861, -73.7807)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114527, N'10596', N'VERPLANCK', N'NY', 41.2528, -73.9606)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114528, N'10597', N'WACCABUC', N'NY', 41.2894, -73.5983)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114529, N'10598', N'YORKTOWN HEIGHTS', N'NY', 41.2859, -73.7948)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114530, N'10601', N'WHITE PLAINS', N'NY', 41.0328, -73.7651)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114531, N'10602', N'WHITE PLAINS', N'NY', 41.0337, -73.7635)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114532, N'10603', N'WHITE PLAINS', N'NY', 41.0597, -73.7747)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114533, N'10604', N'WEST HARRISON', N'NY', 41.0555, -73.7433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114534, N'10605', N'WHITE PLAINS', N'NY', 41.0104, -73.7454)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114535, N'10606', N'WHITE PLAINS', N'NY', 41.0211, -73.776)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114536, N'10607', N'WHITE PLAINS', N'NY', 41.0404, -73.8014)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114537, N'10610', N'WHITE PLAINS', N'NY', 41.0342, -73.7632)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114538, N'10650', N'WHITE PLAINS', N'NY', 41.0337, -73.7635)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114539, N'10701', N'YONKERS', N'NY', 40.9431, -73.8809)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114540, N'10702', N'YONKERS', N'NY', 40.9311, -73.8995)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114541, N'10703', N'YONKERS', N'NY', 40.96, -73.8806)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114542, N'10704', N'YONKERS', N'NY', 40.9195, -73.8617)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114543, N'10705', N'YONKERS', N'NY', 40.9161, -73.8905)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114544, N'10706', N'HASTINGS ON HUDSON', N'NY', 40.9894, -73.8713)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114545, N'10707', N'TUCKAHOE', N'NY', 40.9558, -73.8189)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114546, N'10708', N'BRONXVILLE', N'NY', 40.9389, -73.8308)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114547, N'10709', N'EASTCHESTER', N'NY', 40.9537, -73.8076)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114548, N'10710', N'YONKERS', N'NY', 40.9677, -73.8468)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114549, N'10801', N'NEW ROCHELLE', N'NY', 40.9182, -73.785)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114550, N'10802', N'NEW ROCHELLE', N'NY', 40.9116, -73.7826)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114551, N'10803', N'PELHAM', N'NY', 40.9001, -73.8065)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114552, N'10804', N'NEW ROCHELLE', N'NY', 40.9494, -73.7855)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114553, N'10805', N'NEW ROCHELLE', N'NY', 40.8989, -73.7809)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114554, N'10901', N'SUFFERN', N'NY', 41.1483, -74.1189)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114555, N'10910', N'ARDEN', N'NY', 41.2746, -74.1536)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114556, N'10911', N'BEAR MOUNTAIN', N'NY', 41.3132, -73.9887)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114557, N'10912', N'BELLVALE', N'NY', 41.2506, -74.3113)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114558, N'10913', N'BLAUVELT', N'NY', 41.0686, -73.9545)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114559, N'10914', N'BLOOMING GROVE', N'NY', 41.4121, -74.1914)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114560, N'10915', N'BULLVILLE', N'NY', 41.5443, -74.3618)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114561, N'10916', N'CAMPBELL HALL', N'NY', 41.4474, -74.2523)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114562, N'10917', N'CENTRAL VALLEY', N'NY', 41.326, -74.1185)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114563, N'10918', N'CHESTER', N'NY', 41.3499, -74.2608)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114564, N'10919', N'CIRCLEVILLE', N'NY', 41.5243, -74.374)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114565, N'10920', N'CONGERS', N'NY', 41.1552, -73.9399)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114566, N'10921', N'FLORIDA', N'NY', 41.3273, -74.3528)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114567, N'10922', N'FORT MONTGOMERY', N'NY', 41.3335, -73.9942)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114568, N'10923', N'GARNERVILLE', N'NY', 41.2015, -74.0043)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114569, N'10924', N'GOSHEN', N'NY', 41.3906, -74.3406)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114570, N'10925', N'GREENWOOD LAKE', N'NY', 41.2015, -74.2829)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114571, N'10926', N'HARRIMAN', N'NY', 41.2503, -74.1403)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114572, N'10927', N'HAVERSTRAW', N'NY', 41.1924, -73.9672)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114573, N'10928', N'HIGHLAND FALLS', N'NY', 41.3282, -74.0421)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114574, N'10930', N'HIGHLAND MILLS', N'NY', 41.3601, -74.109)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114575, N'10931', N'HILLBURN', N'NY', 41.1268, -74.1705)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114576, N'10932', N'HOWELLS', N'NY', 41.4797, -74.4659)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114577, N'10933', N'JOHNSON', N'NY', 41.3663, -74.5067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114578, N'10940', N'MIDDLETOWN', N'NY', 41.4631, -74.4262)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114579, N'10941', N'MIDDLETOWN', N'NY', 41.45, -74.41)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114580, N'10943', N'MIDDLETOWN', N'NY', 41.4455, -74.4234)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114581, N'10950', N'MONROE', N'NY', 41.3086, -74.1993)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114582, N'10952', N'MONSEY', N'NY', 41.1112, -74.0777)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114583, N'10953', N'MOUNTAINVILLE', N'NY', 41.4009, -74.0789)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114584, N'10954', N'NANUET', N'NY', 41.0984, -74.0095)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114585, N'10956', N'NEW CITY', N'NY', 41.156, -73.9936)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114586, N'10958', N'NEW HAMPTON', N'NY', 41.345, -74.4509)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114587, N'10959', N'NEW MILFORD', N'NY', 41.2345, -74.4144)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114588, N'10960', N'NYACK', N'NY', 41.0938, -73.9254)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114589, N'10962', N'ORANGEBURG', N'NY', 41.0462, -73.9535)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114590, N'10963', N'OTISVILLE', N'NY', 41.4679, -74.5458)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114591, N'10964', N'PALISADES', N'NY', 41.017, -73.9139)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114592, N'10965', N'PEARL RIVER', N'NY', 41.0618, -74.0139)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114593, N'10968', N'PIERMONT', N'NY', 41.0383, -73.9183)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114594, N'10969', N'PINE ISLAND', N'NY', 41.2879, -74.5349)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114595, N'10970', N'POMONA', N'NY', 41.1968, -74.0696)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114596, N'10973', N'SLATE HILL', N'NY', 41.3724, -74.4898)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114597, N'10974', N'SLOATSBURG', N'NY', 41.159, -74.1861)
GO
print 'Processed 3900 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114598, N'10975', N'SOUTHFIELDS', N'NY', 41.2448, -74.1755)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114599, N'10976', N'SPARKILL', N'NY', 41.0206, -73.9231)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114600, N'10977', N'SPRING VALLEY', N'NY', 41.1194, -74.0479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114601, N'10979', N'STERLING FOREST', N'NY', 41.1828, -74.3192)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114602, N'10980', N'STONY POINT', N'NY', 41.2394, -74.039)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114603, N'10981', N'SUGAR LOAF', N'NY', 41.3208, -74.2859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114604, N'10982', N'TALLMAN', N'NY', 41.1111, -74.1003)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114605, N'10983', N'TAPPAN', N'NY', 41.0285, -73.9474)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114606, N'10984', N'THIELLS', N'NY', 41.206, -74.0179)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114607, N'10985', N'THOMPSON RIDGE', N'NY', 41.5829, -74.3791)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114608, N'10986', N'TOMKINS COVE', N'NY', 41.2819, -73.9937)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114609, N'10987', N'TUXEDO PARK', N'NY', 41.1969, -74.224)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114610, N'10988', N'UNIONVILLE', N'NY', 41.3016, -74.5617)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114611, N'10989', N'VALLEY COTTAGE', N'NY', 41.124, -73.9363)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114612, N'10990', N'WARWICK', N'NY', 41.2642, -74.3694)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114613, N'10992', N'WASHINGTONVILLE', N'NY', 41.4209, -74.1653)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114614, N'10993', N'WEST HAVERSTRAW', N'NY', 41.2083, -73.9777)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114615, N'10994', N'WEST NYACK', N'NY', 41.0961, -73.9721)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114616, N'10996', N'WEST POINT', N'NY', 41.3927, -73.9741)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114617, N'10997', N'WEST POINT', N'NY', 41.3932, -73.9585)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114618, N'10998', N'WESTTOWN', N'NY', 41.3234, -74.5457)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114619, N'11001', N'FLORAL PARK', N'NY', 40.7233, -73.7034)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114620, N'11002', N'FLORAL PARK', N'NY', 40.7251, -73.7068)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114621, N'11003', N'ELMONT', N'NY', 40.7013, -73.7074)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114622, N'11004', N'GLEN OAKS', N'NY', 40.7487, -73.7114)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114623, N'11005', N'FLORAL PARK', N'NY', 40.7583, -73.7194)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114624, N'11010', N'FRANKLIN SQUARE', N'NY', 40.7003, -73.675)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114625, N'11020', N'GREAT NECK', N'NY', 40.7702, -73.7108)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114626, N'11021', N'GREAT NECK', N'NY', 40.786, -73.7291)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114627, N'11022', N'GREAT NECK', N'NY', 40.7913, -73.7412)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114628, N'11023', N'GREAT NECK', N'NY', 40.7988, -73.7332)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114629, N'11024', N'GREAT NECK', N'NY', 40.8162, -73.7413)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114630, N'11025', N'GREAT NECK', N'NY', 40.8007, -73.7288)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114631, N'11026', N'GREAT NECK', N'NY', 40.7751, -73.7196)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114632, N'11027', N'GREAT NECK', N'NY', 40.8007, -73.7288)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114633, N'11030', N'MANHASSET', N'NY', 40.7935, -73.6884)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114634, N'11040', N'NEW HYDE PARK', N'NY', 40.7459, -73.6798)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114635, N'11041', N'NEW HYDE PARK', N'NY', 40.7351, -73.6885)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114636, N'11042', N'NEW HYDE PARK', N'NY', 40.7597, -73.6903)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114637, N'11043', N'NEW HYDE PARK', N'NY', 40.7351, -73.6885)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114638, N'11044', N'NEW HYDE PARK', N'NY', 40.7351, -73.6885)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114639, N'11050', N'PORT WASHINGTON', N'NY', 40.8387, -73.6912)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114640, N'11051', N'PORT WASHINGTON', N'NY', 40.8257, -73.6986)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114641, N'11052', N'PORT WASHINGTON', N'NY', 40.8257, -73.6986)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114642, N'11053', N'PORT WASHINGTON', N'NY', 40.8257, -73.6986)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114643, N'11054', N'PORT WASHINGTON', N'NY', 40.8257, -73.6986)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114644, N'11055', N'PORT WASHINGTON', N'NY', 40.8257, -73.6986)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114645, N'11096', N'INWOOD', N'NY', 40.6204, -73.762)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114646, N'11099', N'NEW HYDE PARK', N'NY', 40.7351, -73.6885)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114647, N'11101', N'LONG ISLAND CITY', N'NY', 40.7457, -73.9381)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114648, N'11102', N'ASTORIA', N'NY', 40.7715, -73.926)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114649, N'11103', N'ASTORIA', N'NY', 40.7628, -73.9103)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114650, N'11104', N'SUNNYSIDE', N'NY', 40.7442, -73.9205)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114651, N'11105', N'ASTORIA', N'NY', 40.7788, -73.9074)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114652, N'11106', N'ASTORIA', N'NY', 40.7614, -73.9315)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114653, N'11109', N'LONG ISLAND CITY', N'NY', 40.7457, -73.9381)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114654, N'11120', N'LONG ISLAND CITY', N'NY', 40.7448, -73.9494)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114655, N'11201', N'BROOKLYN', N'NY', 40.6944, -73.9902)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114656, N'11202', N'BROOKLYN', N'NY', 40.6957, -73.9936)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114657, N'11203', N'BROOKLYN', N'NY', 40.6498, -73.934)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114658, N'11204', N'BROOKLYN', N'NY', 40.6189, -73.9847)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114659, N'11205', N'BROOKLYN', N'NY', 40.694, -73.9642)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114660, N'11206', N'BROOKLYN', N'NY', 40.7018, -73.9424)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114661, N'11207', N'BROOKLYN', N'NY', 40.6699, -73.894)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114662, N'11208', N'BROOKLYN', N'NY', 40.6718, -73.8723)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114663, N'11209', N'BROOKLYN', N'NY', 40.6254, -74.0312)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114664, N'11210', N'BROOKLYN', N'NY', 40.6276, -73.9463)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114665, N'11211', N'BROOKLYN', N'NY', 40.7111, -73.9565)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114666, N'11212', N'BROOKLYN', N'NY', 40.6629, -73.9131)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114667, N'11213', N'BROOKLYN', N'NY', 40.6708, -73.9366)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114668, N'11214', N'BROOKLYN', N'NY', 40.5992, -73.9962)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114669, N'11215', N'BROOKLYN', N'NY', 40.6678, -73.985)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114670, N'11216', N'BROOKLYN', N'NY', 40.6806, -73.9492)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114671, N'11217', N'BROOKLYN', N'NY', 40.6825, -73.9794)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114672, N'11218', N'BROOKLYN', N'NY', 40.6432, -73.976)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114673, N'11219', N'BROOKLYN', N'NY', 40.6327, -73.9967)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114674, N'11220', N'BROOKLYN', N'NY', 40.641, -74.0161)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114675, N'11221', N'BROOKLYN', N'NY', 40.6912, -73.9275)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114676, N'11222', N'BROOKLYN', N'NY', 40.7272, -73.9456)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114677, N'11223', N'BROOKLYN', N'NY', 40.597, -73.9734)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114678, N'11224', N'BROOKLYN', N'NY', 40.5767, -73.9884)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114679, N'11225', N'BROOKLYN', N'NY', 40.6627, -73.9618)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114680, N'11226', N'BROOKLYN', N'NY', 40.6463, -73.9564)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114681, N'11228', N'BROOKLYN', N'NY', 40.615, -74.0156)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114682, N'11229', N'BROOKLYN', N'NY', 40.6014, -73.9444)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114683, N'11230', N'BROOKLYN', N'NY', 40.622, -73.9652)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114684, N'11231', N'BROOKLYN', N'NY', 40.6775, -74.0047)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114685, N'11232', N'BROOKLYN', N'NY', 40.6542, -74.0015)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114686, N'11233', N'BROOKLYN', N'NY', 40.6783, -73.9203)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114687, N'11234', N'BROOKLYN', N'NY', 40.6068, -73.9096)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114688, N'11235', N'BROOKLYN', N'NY', 40.5844, -73.9466)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114689, N'11236', N'BROOKLYN', N'NY', 40.6398, -73.901)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114690, N'11237', N'BROOKLYN', N'NY', 40.7044, -73.9212)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114691, N'11238', N'BROOKLYN', N'NY', 40.6804, -73.9638)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114692, N'11239', N'BROOKLYN', N'NY', 40.6444, -73.8777)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114693, N'11240', N'BROOKLYN', N'NY', 40.6974, -73.9904)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114694, N'11241', N'BROOKLYN', N'NY', 40.6932, -73.9912)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114695, N'11242', N'BROOKLYN', N'NY', 40.6963, -73.9899)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114696, N'11243', N'BROOKLYN', N'NY', 40.6955, -73.9904)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114697, N'11244', N'BROOKLYN', N'NY', 40.6898, -73.9908)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114698, N'11245', N'BROOKLYN', N'NY', 40.6874, -73.9899)
GO
print 'Processed 4000 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114699, N'11247', N'BROOKLYN', N'NY', 40.7053, -73.9195)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114700, N'11248', N'BROOKLYN', N'NY', 40.6994, -73.9929)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114701, N'11249', N'BROOKLYN', N'NY', 40.6933, -73.9925)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114702, N'11251', N'BROOKLYN', N'NY', 40.6955, -73.9923)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114703, N'11252', N'BROOKLYN', N'NY', 40.6061, -74.0291)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114704, N'11254', N'BROOKLYN', N'NY', 40.6985, -73.9917)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114705, N'11255', N'BROOKLYN', N'NY', 40.6958, -73.992)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114706, N'11256', N'BROOKLYN', N'NY', 40.6949, -73.9884)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114707, N'11351', N'FLUSHING', N'NY', 40.7553, -73.8268)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114708, N'11352', N'FLUSHING', N'NY', 40.7613, -73.8233)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114709, N'11354', N'FLUSHING', N'NY', 40.7686, -73.8271)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114710, N'11355', N'FLUSHING', N'NY', 40.7505, -73.8197)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114711, N'11356', N'COLLEGE POINT', N'NY', 40.7847, -73.8412)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114712, N'11357', N'WHITESTONE', N'NY', 40.7862, -73.811)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114713, N'11358', N'FLUSHING', N'NY', 40.7605, -73.7962)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114714, N'11359', N'BAYSIDE', N'NY', 40.7918, -73.7759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114715, N'11360', N'BAYSIDE', N'NY', 40.7825, -73.7809)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114716, N'11361', N'BAYSIDE', N'NY', 40.7645, -73.7727)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114717, N'11362', N'LITTLE NECK', N'NY', 40.7592, -73.7349)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114718, N'11363', N'LITTLE NECK', N'NY', 40.7726, -73.7467)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114719, N'11364', N'OAKLAND GARDENS', N'NY', 40.7457, -73.7574)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114720, N'11365', N'FRESH MEADOWS', N'NY', 40.7391, -73.7931)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114721, N'11366', N'FRESH MEADOWS', N'NY', 40.7279, -73.7922)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114722, N'11367', N'FLUSHING', N'NY', 40.7291, -73.8237)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114723, N'11368', N'CORONA', N'NY', 40.7493, -73.8531)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114724, N'11369', N'EAST ELMHURST', N'NY', 40.763, -73.8708)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114725, N'11370', N'EAST ELMHURST', N'NY', 40.7696, -73.8809)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114726, N'11371', N'FLUSHING', N'NY', 40.7753, -73.8738)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114727, N'11372', N'JACKSON HEIGHTS', N'NY', 40.7514, -73.8836)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114728, N'11373', N'ELMHURST', N'NY', 40.7372, -73.8787)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114729, N'11374', N'REGO PARK', N'NY', 40.7254, -73.8614)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114730, N'11375', N'FOREST HILLS', N'NY', 40.7228, -73.845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114731, N'11377', N'WOODSIDE', N'NY', 40.7439, -73.9053)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114732, N'11378', N'MASPETH', N'NY', 40.724, -73.9071)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114733, N'11379', N'MIDDLE VILLAGE', N'NY', 40.7154, -73.8794)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114734, N'11380', N'ELMHURST', N'NY', 40.7898, -73.8247)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114735, N'11381', N'FLUSHING', N'NY', 40.7653, -73.8179)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114736, N'11385', N'RIDGEWOOD', N'NY', 40.7008, -73.8892)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114737, N'11386', N'RIDGEWOOD', N'NY', 40.7653, -73.8179)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114738, N'11390', N'FLUSHING', N'NY', 40.7653, -73.8179)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114739, N'11405', N'JAMAICA', N'NY', 40.6917, -73.8061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114740, N'11411', N'CAMBRIA HEIGHTS', N'NY', 40.6944, -73.7359)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114741, N'11412', N'SAINT ALBANS', N'NY', 40.6978, -73.759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114742, N'11413', N'SPRINGFIELD GARDENS', N'NY', 40.6722, -73.7509)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114743, N'11414', N'HOWARD BEACH', N'NY', 40.6579, -73.8447)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114744, N'11415', N'KEW GARDENS', N'NY', 40.7079, -73.8302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114745, N'11416', N'OZONE PARK', N'NY', 40.6844, -73.8499)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114746, N'11417', N'OZONE PARK', N'NY', 40.6759, -73.8451)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114747, N'11418', N'RICHMOND HILL', N'NY', 40.7002, -73.8348)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114748, N'11419', N'SOUTH RICHMOND HILL', N'NY', 40.6884, -73.8234)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114749, N'11420', N'SOUTH OZONE PARK', N'NY', 40.673, -73.8173)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114750, N'11421', N'WOODHAVEN', N'NY', 40.6933, -73.8588)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114751, N'11422', N'ROSEDALE', N'NY', 40.6593, -73.7384)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114752, N'11423', N'HOLLIS', N'NY', 40.7171, -73.7686)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114753, N'11424', N'JAMAICA', N'NY', 40.7157, -73.8267)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114754, N'11425', N'JAMAICA', N'NY', 40.6917, -73.8061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114755, N'11426', N'BELLEROSE', N'NY', 40.7366, -73.7227)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114756, N'11427', N'QUEENS VILLAGE', N'NY', 40.7303, -73.748)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114757, N'11428', N'QUEENS VILLAGE', N'NY', 40.7212, -73.7418)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114758, N'11429', N'QUEENS VILLAGE', N'NY', 40.7097, -73.7382)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114759, N'11430', N'JAMAICA', N'NY', 40.6453, -73.7858)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114760, N'11431', N'JAMAICA', N'NY', 40.6998, -73.8022)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114761, N'11432', N'JAMAICA', N'NY', 40.7153, -73.7933)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114762, N'11433', N'JAMAICA', N'NY', 40.6981, -73.7876)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114763, N'11434', N'JAMAICA', N'NY', 40.6565, -73.7829)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114764, N'11435', N'JAMAICA', N'NY', 40.7006, -73.8099)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114765, N'11436', N'JAMAICA', N'NY', 40.675, -73.7962)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114766, N'11439', N'JAMAICA', N'NY', 40.6917, -73.8061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114767, N'11451', N'JAMAICA', N'NY', 40.6917, -73.8061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114768, N'11484', N'JAMAICA', N'NY', 40.6917, -73.8061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114769, N'11499', N'JAMAICA', N'NY', 40.6917, -73.8061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114770, N'11501', N'MINEOLA', N'NY', 40.7469, -73.6388)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114771, N'11507', N'ALBERTSON', N'NY', 40.7711, -73.653)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114772, N'11509', N'ATLANTIC BEACH', N'NY', 40.588, -73.7299)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114773, N'11510', N'BALDWIN', N'NY', 40.6539, -73.609)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114774, N'11514', N'CARLE PLACE', N'NY', 40.7502, -73.6119)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114775, N'11516', N'CEDARHURST', N'NY', 40.6289, -73.7282)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114776, N'11518', N'EAST ROCKAWAY', N'NY', 40.6388, -73.6664)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114777, N'11520', N'FREEPORT', N'NY', 40.6517, -73.5837)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114778, N'11530', N'GARDEN CITY', N'NY', 40.727, -73.6328)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114779, N'11531', N'GARDEN CITY', N'NY', 40.7256, -73.6474)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114780, N'11535', N'GARDEN CITY', N'NY', 40.7264, -73.6347)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114781, N'11536', N'GARDEN CITY', N'NY', 40.7264, -73.6347)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114782, N'11542', N'GLEN COVE', N'NY', 40.8688, -73.6275)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114783, N'11545', N'GLEN HEAD', N'NY', 40.8263, -73.5843)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114784, N'11547', N'GLENWOOD LANDING', N'NY', 40.8267, -73.6445)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114785, N'11548', N'GREENVALE', N'NY', 40.8159, -73.6224)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114786, N'11549', N'HEMPSTEAD', N'NY', 40.7141, -73.6003)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114787, N'11550', N'HEMPSTEAD', N'NY', 40.7032, -73.6188)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114788, N'11551', N'HEMPSTEAD', N'NY', 40.7064, -73.6192)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114789, N'11552', N'WEST HEMPSTEAD', N'NY', 40.6918, -73.6506)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114790, N'11553', N'UNIONDALE', N'NY', 40.7016, -73.591)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114791, N'11554', N'EAST MEADOW', N'NY', 40.7206, -73.5614)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114792, N'11555', N'UNIONDALE', N'NY', 40.7004, -73.5934)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114793, N'11556', N'UNIONDALE', N'NY', 40.7004, -73.5934)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114794, N'11557', N'HEWLETT', N'NY', 40.637, -73.6912)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114795, N'11558', N'ISLAND PARK', N'NY', 40.6062, -73.6508)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114796, N'11559', N'LAWRENCE', N'NY', 40.6066, -73.712)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114797, N'11560', N'LOCUST VALLEY', N'NY', 40.8809, -73.5895)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114798, N'11561', N'LONG BEACH', N'NY', 40.5892, -73.6427)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114799, N'11563', N'LYNBROOK', N'NY', 40.6573, -73.674)
GO
print 'Processed 4100 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114800, N'11564', N'LYNBROOK', N'NY', 40.6548, -73.6722)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114801, N'11565', N'MALVERNE', N'NY', 40.6749, -73.672)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114802, N'11566', N'MERRICK', N'NY', 40.6667, -73.5562)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114803, N'11568', N'OLD WESTBURY', N'NY', 40.7854, -73.596)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114804, N'11569', N'POINT LOOKOUT', N'NY', 40.5908, -73.5795)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114805, N'11570', N'ROCKVILLE CENTRE', N'NY', 40.6657, -73.6385)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114806, N'11571', N'ROCKVILLE CENTRE', N'NY', 40.6644, -73.6384)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114807, N'11572', N'OCEANSIDE', N'NY', 40.6332, -73.6369)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114808, N'11575', N'ROOSEVELT', N'NY', 40.6809, -73.5852)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114809, N'11576', N'ROSLYN', N'NY', 40.8044, -73.641)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114810, N'11577', N'ROSLYN HEIGHTS', N'NY', 40.783, -73.639)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114811, N'11579', N'SEA CLIFF', N'NY', 40.8441, -73.6438)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114812, N'11580', N'VALLEY STREAM', N'NY', 40.6745, -73.7041)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114813, N'11581', N'VALLEY STREAM', N'NY', 40.6532, -73.7131)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114814, N'11582', N'VALLEY STREAM', N'NY', 40.6644, -73.7087)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114815, N'11583', N'VALLEY STREAM', N'NY', 40.6644, -73.7087)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114816, N'11588', N'UNIONDALE', N'NY', 40.7003, -73.5935)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114817, N'11590', N'WESTBURY', N'NY', 40.756, -73.5739)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114818, N'11592', N'ROCKVILLE CENTRE', N'NY', 40.6649, -73.6369)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114819, N'11593', N'WESTBURY', N'NY', 40.7559, -73.5883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114820, N'11594', N'WESTBURY', N'NY', 40.7557, -73.5746)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114821, N'11595', N'WESTBURY', N'NY', 40.7559, -73.5883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114822, N'11596', N'WILLISTON PARK', N'NY', 40.7596, -73.6421)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114823, N'11597', N'WESTBURY', N'NY', 40.7557, -73.5746)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114824, N'11598', N'WOODMERE', N'NY', 40.632, -73.7113)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114825, N'11599', N'GARDEN CITY', N'NY', 40.7314, -73.6127)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114826, N'11690', N'FAR ROCKAWAY', N'NY', 40.5963, -73.7684)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114827, N'11691', N'FAR ROCKAWAY', N'NY', 40.6011, -73.7624)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114828, N'11692', N'ARVERNE', N'NY', 40.5936, -73.7956)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114829, N'11693', N'FAR ROCKAWAY', N'NY', 40.6184, -73.8256)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114830, N'11694', N'ROCKAWAY PARK', N'NY', 40.5756, -73.8506)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114831, N'11695', N'FAR ROCKAWAY', N'NY', 40.5647, -73.8835)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114832, N'11697', N'BREEZY POINT', N'NY', 40.5583, -73.9133)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114833, N'11701', N'AMITYVILLE', N'NY', 40.6858, -73.4152)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114834, N'11702', N'BABYLON', N'NY', 40.6311, -73.3431)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114835, N'11703', N'NORTH BABYLON', N'NY', 40.7325, -73.3254)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114836, N'11704', N'WEST BABYLON', N'NY', 40.7189, -73.3625)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114837, N'11705', N'BAYPORT', N'NY', 40.746, -73.0539)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114838, N'11706', N'BAY SHORE', N'NY', 40.7379, -73.2632)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114839, N'11707', N'WEST BABYLON', N'NY', 40.6959, -73.3264)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114840, N'11708', N'AMITYVILLE', N'NY', 40.6874, -73.4119)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114841, N'11709', N'BAYVILLE', N'NY', 40.9013, -73.537)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114842, N'11710', N'BELLMORE', N'NY', 40.6759, -73.534)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114843, N'11713', N'BELLPORT', N'NY', 40.7754, -72.9417)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114844, N'11714', N'BETHPAGE', N'NY', 40.7426, -73.4861)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114845, N'11715', N'BLUE POINT', N'NY', 40.75, -73.0352)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114846, N'11716', N'BOHEMIA', N'NY', 40.7711, -73.1274)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114847, N'11717', N'BRENTWOOD', N'NY', 40.7837, -73.252)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114848, N'11718', N'BRIGHTWATERS', N'NY', 40.7191, -73.2643)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114849, N'11719', N'BROOKHAVEN', N'NY', 40.7835, -72.9087)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114850, N'11720', N'CENTEREACH', N'NY', 40.8699, -73.0833)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114851, N'11721', N'CENTERPORT', N'NY', 40.8931, -73.3717)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114852, N'11722', N'CENTRAL ISLIP', N'NY', 40.7853, -73.1929)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114853, N'11724', N'COLD SPRING HARBOR', N'NY', 40.8609, -73.4509)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114854, N'11725', N'COMMACK', N'NY', 40.8411, -73.2805)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114855, N'11726', N'COPIAGUE', N'NY', 40.6814, -73.3965)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114856, N'11727', N'CORAM', N'NY', 40.8776, -73.0024)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114857, N'11729', N'DEER PARK', N'NY', 40.7623, -73.3217)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114858, N'11730', N'EAST ISLIP', N'NY', 40.7208, -73.1785)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114859, N'11731', N'EAST NORTHPORT', N'NY', 40.8618, -73.3178)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114860, N'11732', N'EAST NORWICH', N'NY', 40.8471, -73.5334)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114861, N'11733', N'EAST SETAUKET', N'NY', 40.9344, -73.1065)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114862, N'11735', N'FARMINGDALE', N'NY', 40.7334, -73.4289)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114863, N'11736', N'FARMINGDALE', N'NY', 40.7328, -73.4458)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114864, N'11737', N'FARMINGDALE', N'NY', 40.7328, -73.4458)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114865, N'11738', N'FARMINGVILLE', N'NY', 40.8374, -73.0409)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114866, N'11739', N'GREAT RIVER', N'NY', 40.7198, -73.1545)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114867, N'11740', N'GREENLAWN', N'NY', 40.8651, -73.3643)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114868, N'11741', N'HOLBROOK', N'NY', 40.7951, -73.0765)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114869, N'11742', N'HOLTSVILLE', N'NY', 40.8102, -73.04)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114870, N'11743', N'HUNTINGTON', N'NY', 40.8966, -73.4362)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114871, N'11745', N'SMITHTOWN', N'NY', 40.8559, -73.2013)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114872, N'11746', N'HUNTINGTON STATION', N'NY', 40.8129, -73.3611)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114873, N'11747', N'MELVILLE', N'NY', 40.7834, -73.4113)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114874, N'11749', N'ISLANDIA', N'NY', 40.8053, -73.1718)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114875, N'11750', N'HUNTINGTON STATION', N'NY', 40.8536, -73.4116)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114876, N'11751', N'ISLIP', N'NY', 40.7426, -73.2171)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114877, N'11752', N'ISLIP TERRACE', N'NY', 40.7568, -73.1738)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114878, N'11753', N'JERICHO', N'NY', 40.7898, -73.5402)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114879, N'11754', N'KINGS PARK', N'NY', 40.8869, -73.2479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114880, N'11755', N'LAKE GROVE', N'NY', 40.8576, -73.1172)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114881, N'11756', N'LEVITTOWN', N'NY', 40.7255, -73.5165)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114882, N'11757', N'LINDENHURST', N'NY', 40.6894, -73.3745)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114883, N'11758', N'MASSAPEQUA', N'NY', 40.685, -73.4685)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114884, N'11760', N'ISLANDIA', N'NY', 40.683, -73.4455)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114885, N'11762', N'MASSAPEQUA PARK', N'NY', 40.683, -73.4455)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114886, N'11763', N'MEDFORD', N'NY', 40.8228, -72.9822)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114887, N'11764', N'MILLER PLACE', N'NY', 40.9335, -72.9757)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114888, N'11765', N'MILL NECK', N'NY', 40.8835, -73.5549)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114889, N'11766', N'MOUNT SINAI', N'NY', 40.9345, -73.0151)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114890, N'11767', N'NESCONSET', N'NY', 40.8451, -73.1449)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114891, N'11768', N'NORTHPORT', N'NY', 40.9096, -73.3231)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114892, N'11769', N'OAKDALE', N'NY', 40.737, -73.1303)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114893, N'11770', N'OCEAN BEACH', N'NY', 40.6448, -73.1603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114894, N'11771', N'OYSTER BAY', N'NY', 40.8615, -73.5265)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114895, N'11772', N'PATCHOGUE', N'NY', 40.7718, -72.9949)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114896, N'11773', N'SYOSSET', N'NY', 40.8243, -73.4974)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114897, N'11774', N'FARMINGDALE', N'NY', 40.7327, -73.4456)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114898, N'11775', N'MELVILLE', N'NY', 40.8257, -73.5024)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114899, N'11776', N'PORT JEFFERSON STATION', N'NY', 40.9145, -73.0443)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114900, N'11777', N'PORT JEFFERSON', N'NY', 40.9503, -73.0617)
GO
print 'Processed 4200 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114901, N'11778', N'ROCKY POINT', N'NY', 40.939, -72.93)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114902, N'11779', N'RONKONKOMA', N'NY', 40.8149, -73.1229)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114903, N'11780', N'SAINT JAMES', N'NY', 40.8903, -73.169)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114904, N'11782', N'SAYVILLE', N'NY', 40.7472, -73.0832)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114905, N'11783', N'SEAFORD', N'NY', 40.6708, -73.4925)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114906, N'11784', N'SELDEN', N'NY', 40.87, -73.0428)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114907, N'11786', N'SHOREHAM', N'NY', 40.9456, -72.8883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114908, N'11787', N'SMITHTOWN', N'NY', 40.8527, -73.2109)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114909, N'11788', N'HAUPPAUGE', N'NY', 40.8179, -73.2091)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114910, N'11789', N'SOUND BEACH', N'NY', 40.9577, -72.9729)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114911, N'11790', N'STONY BROOK', N'NY', 40.9035, -73.127)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114912, N'11791', N'SYOSSET', N'NY', 40.8277, -73.4994)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114913, N'11792', N'WADING RIVER', N'NY', 40.953, -72.8286)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114914, N'11793', N'WANTAGH', N'NY', 40.681, -73.5104)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114915, N'11794', N'STONY BROOK', N'NY', 40.9145, -73.1225)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114916, N'11795', N'WEST ISLIP', N'NY', 40.7092, -73.2987)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114917, N'11796', N'WEST SAYVILLE', N'NY', 40.7279, -73.1005)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114918, N'11797', N'WOODBURY', N'NY', 40.8177, -73.4702)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114919, N'11798', N'WYANDANCH', N'NY', 40.7545, -73.3665)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114920, N'11801', N'HICKSVILLE', N'NY', 40.7626, -73.5241)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114921, N'11802', N'HICKSVILLE', N'NY', 40.7683, -73.5258)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114922, N'11803', N'PLAINVIEW', N'NY', 40.7821, -73.4737)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114923, N'11804', N'OLD BETHPAGE', N'NY', 40.758, -73.4576)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114924, N'11805', N'MID ISLAND', N'NY', 40.8849, -72.9377)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114925, N'11815', N'HICKSVILLE', N'NY', 40.7683, -73.5258)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114926, N'11819', N'HICKSVILLE', N'NY', 40.7683, -73.5258)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114927, N'11853', N'JERICHO', N'NY', 40.7918, -73.5403)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114928, N'11854', N'HICKSVILLE', N'NY', 40.7683, -73.5258)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114929, N'11855', N'HICKSVILLE', N'NY', 40.7683, -73.5258)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114930, N'11901', N'RIVERHEAD', N'NY', 40.953, -72.642)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114931, N'11930', N'AMAGANSETT', N'NY', 40.9764, -72.1316)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114932, N'11931', N'AQUEBOGUE', N'NY', 40.9401, -72.6379)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114933, N'11932', N'BRIDGEHAMPTON', N'NY', 40.9594, -72.2887)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114934, N'11933', N'CALVERTON', N'NY', 40.9282, -72.7588)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114935, N'11934', N'CENTER MORICHES', N'NY', 40.8046, -72.7931)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114936, N'11935', N'CUTCHOGUE', N'NY', 41.018, -72.4855)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114937, N'11937', N'EAST HAMPTON', N'NY', 40.9893, -72.1859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114938, N'11939', N'EAST MARION', N'NY', 41.1291, -72.3433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114939, N'11940', N'EAST MORICHES', N'NY', 40.8084, -72.7549)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114940, N'11941', N'EASTPORT', N'NY', 40.8335, -72.723)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114941, N'11942', N'EAST QUOGUE', N'NY', 40.8496, -72.6007)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114942, N'11944', N'GREENPORT', N'NY', 41.104, -72.3721)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114943, N'11946', N'HAMPTON BAYS', N'NY', 40.881, -72.5361)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114944, N'11947', N'JAMESPORT', N'NY', 40.9447, -72.5673)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114945, N'11948', N'LAUREL', N'NY', 40.9692, -72.5561)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114946, N'11949', N'MANORVILLE', N'NY', 40.8641, -72.792)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114947, N'11950', N'MASTIC', N'NY', 40.8101, -72.851)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114948, N'11951', N'MASTIC BEACH', N'NY', 40.7682, -72.8409)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114949, N'11952', N'MATTITUCK', N'NY', 40.9992, -72.5422)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114950, N'11953', N'MIDDLE ISLAND', N'NY', 40.8839, -72.9482)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114951, N'11954', N'MONTAUK', N'NY', 41.0458, -71.9469)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114952, N'11955', N'MORICHES', N'NY', 40.8076, -72.8239)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114953, N'11956', N'NEW SUFFOLK', N'NY', 40.9969, -72.4757)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114954, N'11957', N'ORIENT', N'NY', 41.1442, -72.2776)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114955, N'11958', N'PECONIC', N'NY', 41.0414, -72.4674)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114956, N'11959', N'QUOGUE', N'NY', 40.8157, -72.6045)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114957, N'11960', N'REMSENBURG', N'NY', 40.81, -72.7064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114958, N'11961', N'RIDGE', N'NY', 40.8942, -72.8763)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114959, N'11962', N'SAGAPONACK', N'NY', 40.9254, -72.2789)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114960, N'11963', N'SAG HARBOR', N'NY', 40.9692, -72.306)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114961, N'11964', N'SHELTER ISLAND', N'NY', 41.0579, -72.3149)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114962, N'11965', N'SHELTER ISLAND HEIGHTS', N'NY', 41.0766, -72.3419)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114963, N'11967', N'SHIRLEY', N'NY', 40.7965, -72.8753)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114964, N'11968', N'SOUTHAMPTON', N'NY', 40.9093, -72.4115)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114965, N'11969', N'SOUTHAMPTON', N'NY', 40.8843, -72.3903)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114966, N'11970', N'SOUTH JAMESPORT', N'NY', 40.9368, -72.5821)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114967, N'11971', N'SOUTHOLD', N'NY', 41.0609, -72.426)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114968, N'11972', N'SPEONK', N'NY', 40.8186, -72.7097)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114969, N'11973', N'UPTON', N'NY', 40.8696, -72.8875)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114970, N'11975', N'WAINSCOTT', N'NY', 40.9469, -72.2584)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114971, N'11976', N'WATER MILL', N'NY', 40.9217, -72.3434)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114972, N'11977', N'WESTHAMPTON', N'NY', 40.8273, -72.678)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114973, N'11978', N'WESTHAMPTON BEACH', N'NY', 40.8323, -72.6497)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114974, N'11980', N'YAPHANK', N'NY', 40.835, -72.922)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114975, N'12007', N'ALCOVE', N'NY', 42.4571, -74.0375)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114976, N'12008', N'ALPLAUS', N'NY', 42.8522, -73.91)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114977, N'12009', N'ALTAMONT', N'NY', 42.709, -74.0262)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114978, N'12010', N'AMSTERDAM', N'NY', 42.9741, -74.1271)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114979, N'12015', N'ATHENS', N'NY', 42.2899, -73.821)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114980, N'12016', N'AURIESVILLE', N'NY', 42.9294, -74.3166)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114981, N'12017', N'AUSTERLITZ', N'NY', 42.3238, -73.451)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114982, N'12018', N'AVERILL PARK', N'NY', 42.6497, -73.5273)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114983, N'12019', N'BALLSTON LAKE', N'NY', 42.9234, -73.8412)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114984, N'12020', N'BALLSTON SPA', N'NY', 43.002, -73.8759)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114985, N'12022', N'BERLIN', N'NY', 42.692, -73.3686)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114986, N'12023', N'BERNE', N'NY', 42.6069, -74.1594)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114987, N'12024', N'BRAINARD', N'NY', 42.4052, -73.607)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114988, N'12025', N'BROADALBIN', N'NY', 43.0744, -74.1473)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114989, N'12027', N'BURNT HILLS', N'NY', 42.9276, -73.9028)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114990, N'12028', N'BUSKIRK', N'NY', 42.973, -73.4552)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114991, N'12029', N'CANAAN', N'NY', 42.4111, -73.4187)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114992, N'12031', N'CARLISLE', N'NY', 42.7569, -74.4456)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114993, N'12032', N'CAROGA LAKE', N'NY', 43.2783, -74.5481)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114994, N'12033', N'CASTLETON ON HUDSON', N'NY', 42.5405, -73.7021)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114995, N'12035', N'CENTRAL BRIDGE', N'NY', 42.729, -74.3469)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114996, N'12036', N'CHARLOTTEVILLE', N'NY', 42.5388, -74.6694)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114997, N'12037', N'CHATHAM', N'NY', 42.3301, -73.5572)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114998, N'12040', N'CHERRY PLAIN', N'NY', 42.6328, -73.3562)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (114999, N'12041', N'CLARKSVILLE', N'NY', 42.5606, -73.9783)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115000, N'12042', N'CLIMAX', N'NY', 42.3744, -73.8647)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115001, N'12043', N'COBLESKILL', N'NY', 42.6995, -74.5108)
GO
print 'Processed 4300 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115002, N'12045', N'COEYMANS', N'NY', 42.4821, -73.8002)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115003, N'12046', N'COEYMANS HOLLOW', N'NY', 42.4881, -73.9246)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115004, N'12047', N'COHOES', N'NY', 42.7824, -73.7303)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115005, N'12050', N'COLUMBIAVILLE', N'NY', 42.3307, -73.7523)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115006, N'12051', N'COXSACKIE', N'NY', 42.3392, -73.8287)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115007, N'12052', N'CROPSEYVILLE', N'NY', 42.7654, -73.4773)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115008, N'12053', N'DELANSON', N'NY', 42.7537, -74.1921)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115009, N'12054', N'DELMAR', N'NY', 42.6018, -73.8686)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115010, N'12055', N'DORMANSVILLE', N'NY', 42.4353, -74.1881)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115011, N'12056', N'DUANESBURG', N'NY', 42.7716, -74.0887)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115012, N'12057', N'EAGLE BRIDGE', N'NY', 42.9693, -73.3467)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115013, N'12058', N'EARLTON', N'NY', 42.3518, -73.9031)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115014, N'12059', N'EAST BERNE', N'NY', 42.6215, -74.0496)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115015, N'12060', N'EAST CHATHAM', N'NY', 42.4273, -73.4886)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115016, N'12061', N'EAST GREENBUSH', N'NY', 42.5983, -73.6515)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115017, N'12062', N'EAST NASSAU', N'NY', 42.5337, -73.5023)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115018, N'12063', N'EAST SCHODACK', N'NY', 42.5617, -73.6337)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115019, N'12064', N'EAST WORCESTER', N'NY', 42.6056, -74.6658)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115020, N'12065', N'CLIFTON PARK', N'NY', 42.8536, -73.7851)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115021, N'12066', N'ESPERANCE', N'NY', 42.7904, -74.3145)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115022, N'12067', N'FEURA BUSH', N'NY', 42.5451, -73.936)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115023, N'12068', N'FONDA', N'NY', 42.955, -74.4334)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115024, N'12069', N'FORT HUNTER', N'NY', 42.9412, -74.2821)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115025, N'12070', N'FORT JOHNSON', N'NY', 42.9858, -74.2527)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115026, N'12071', N'FULTONHAM', N'NY', 42.5894, -74.3991)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115027, N'12072', N'FULTONVILLE', N'NY', 42.8744, -74.3557)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115028, N'12073', N'GALLUPVILLE', N'NY', 42.6627, -74.2334)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115029, N'12074', N'GALWAY', N'NY', 43.0346, -74.0404)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115030, N'12075', N'GHENT', N'NY', 42.3027, -73.6505)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115031, N'12076', N'GILBOA', N'NY', 42.4096, -74.3907)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115032, N'12077', N'GLENMONT', N'NY', 42.5925, -73.7845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115033, N'12078', N'GLOVERSVILLE', N'NY', 43.1204, -74.3629)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115034, N'12082', N'GRAFTON', N'NY', 42.7689, -73.4515)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115035, N'12083', N'GREENVILLE', N'NY', 42.4169, -74.0155)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115036, N'12084', N'GUILDERLAND', N'NY', 42.7028, -73.9074)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115037, N'12085', N'GUILDERLAND CENTER', N'NY', 42.7041, -73.9709)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115038, N'12086', N'HAGAMAN', N'NY', 42.9718, -74.1546)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115039, N'12087', N'HANNACROIX', N'NY', 42.4226, -73.8856)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115040, N'12089', N'HOOSICK', N'NY', 42.8627, -73.3286)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115041, N'12090', N'HOOSICK FALLS', N'NY', 42.8782, -73.3625)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115042, N'12092', N'HOWES CAVE', N'NY', 42.7023, -74.392)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115043, N'12093', N'JEFFERSON', N'NY', 42.5008, -74.6014)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115044, N'12094', N'JOHNSONVILLE', N'NY', 42.8674, -73.4828)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115045, N'12095', N'JOHNSTOWN', N'NY', 43.0176, -74.3982)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115046, N'12106', N'KINDERHOOK', N'NY', 42.382, -73.7078)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115047, N'12107', N'KNOX', N'NY', 42.6711, -74.1161)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115048, N'12108', N'LAKE PLEASANT', N'NY', 43.5523, -74.4387)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115049, N'12110', N'LATHAM', N'NY', 42.7511, -73.7732)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115050, N'12111', N'LATHAM', N'NY', 42.7466, -73.7594)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115051, N'12115', N'MALDEN BRIDGE', N'NY', 42.4533, -73.589)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115052, N'12116', N'MARYLAND', N'NY', 42.5423, -74.8983)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115053, N'12117', N'MAYFIELD', N'NY', 43.1689, -74.2557)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115054, N'12118', N'MECHANICVILLE', N'NY', 42.9451, -73.7061)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115055, N'12120', N'MEDUSA', N'NY', 42.4606, -74.143)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115056, N'12121', N'MELROSE', N'NY', 42.8455, -73.6024)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115057, N'12122', N'MIDDLEBURGH', N'NY', 42.5337, -74.3385)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115058, N'12123', N'NASSAU', N'NY', 42.5242, -73.6087)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115059, N'12124', N'NEW BALTIMORE', N'NY', 42.4463, -73.7886)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115060, N'12125', N'NEW LEBANON', N'NY', 42.4821, -73.3747)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115061, N'12128', N'NEWTONVILLE', N'NY', 42.7466, -73.7594)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115062, N'12130', N'NIVERVILLE', N'NY', 42.923, -73.4768)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115063, N'12131', N'NORTH BLENHEIM', N'NY', 42.4882, -74.4296)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115064, N'12132', N'NORTH CHATHAM', N'NY', 42.4718, -73.6325)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115065, N'12133', N'NORTH HOOSICK', N'NY', 42.9226, -73.3603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115066, N'12134', N'NORTHVILLE', N'NY', 43.2819, -74.3419)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115067, N'12136', N'OLD CHATHAM', N'NY', 42.4358, -73.5573)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115068, N'12137', N'PATTERSONVILLE', N'NY', 42.8479, -74.1359)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115069, N'12138', N'PETERSBURG', N'NY', 42.7192, -73.3641)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115070, N'12139', N'PISECO', N'NY', 43.5975, -74.5775)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115071, N'12140', N'POESTENKILL', N'NY', 42.6871, -73.5742)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115072, N'12141', N'QUAKER STREET', N'NY', 42.7347, -74.1869)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115073, N'12143', N'RAVENA', N'NY', 42.4898, -73.8494)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115074, N'12144', N'RENSSELAER', N'NY', 42.6273, -73.7089)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115075, N'12147', N'RENSSELAERVILLE', N'NY', 42.5127, -74.1527)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115076, N'12148', N'REXFORD', N'NY', 42.8404, -73.8521)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115077, N'12149', N'RICHMONDVILLE', N'NY', 42.6466, -74.5743)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115078, N'12150', N'ROTTERDAM JUNCTION', N'NY', 42.8725, -74.0465)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115079, N'12151', N'ROUND LAKE', N'NY', 42.9237, -73.789)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115080, N'12153', N'SAND LAKE', N'NY', 42.636, -73.4934)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115081, N'12154', N'SCHAGHTICOKE', N'NY', 42.934, -73.6082)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115082, N'12155', N'SCHENEVUS', N'NY', 42.6052, -74.8141)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115083, N'12156', N'SCHODACK LANDING', N'NY', 42.4725, -73.7455)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115084, N'12157', N'SCHOHARIE', N'NY', 42.6603, -74.3062)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115085, N'12158', N'SELKIRK', N'NY', 42.5455, -73.8296)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115086, N'12159', N'SLINGERLANDS', N'NY', 42.6332, -73.8915)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115087, N'12160', N'SLOANSVILLE', N'NY', 42.7595, -74.3752)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115088, N'12161', N'SOUTH BETHLEHEM', N'NY', 42.5317, -73.8476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115089, N'12164', N'SPECULATOR', N'NY', 43.554, -74.3536)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115090, N'12165', N'SPENCERTOWN', N'NY', 42.2961, -73.4911)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115091, N'12166', N'SPRAKERS', N'NY', 42.8384, -74.4592)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115092, N'12167', N'STAMFORD', N'NY', 42.4221, -74.5968)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115093, N'12168', N'STEPHENTOWN', N'NY', 42.5669, -73.4253)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115094, N'12169', N'STEPHENTOWN', N'NY', 42.5647, -73.3618)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115095, N'12170', N'STILLWATER', N'NY', 43.0236, -73.676)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115096, N'12172', N'STOTTVILLE', N'NY', 42.2862, -73.7393)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115097, N'12173', N'STUYVESANT', N'NY', 42.3826, -73.7611)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115098, N'12174', N'STUYVESANT FALLS', N'NY', 42.3525, -73.7298)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115099, N'12175', N'SUMMIT', N'NY', 42.5792, -74.5838)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115100, N'12176', N'SURPRISE', N'NY', 42.36, -73.9498)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115101, N'12177', N'TRIBES HILL', N'NY', 42.9569, -74.2946)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115102, N'12179', N'TROY', N'NY', 42.7284, -73.6922)
GO
print 'Processed 4400 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115103, N'12180', N'TROY', N'NY', 42.7478, -73.6049)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115104, N'12181', N'TROY', N'NY', 42.7284, -73.6922)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115105, N'12182', N'TROY', N'NY', 42.8029, -73.6379)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115106, N'12183', N'TROY', N'NY', 42.7483, -73.6935)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115107, N'12184', N'VALATIE', N'NY', 42.429, -73.6523)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115108, N'12185', N'VALLEY FALLS', N'NY', 42.8614, -73.5395)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115109, N'12186', N'VOORHEESVILLE', N'NY', 42.6396, -73.9672)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115110, N'12187', N'WARNERVILLE', N'NY', 42.612, -74.4753)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115111, N'12188', N'WATERFORD', N'NY', 42.8243, -73.6973)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115112, N'12189', N'WATERVLIET', N'NY', 42.7341, -73.7188)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115113, N'12190', N'WELLS', N'NY', 43.4734, -74.2732)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115114, N'12192', N'WEST COXSACKIE', N'NY', 42.4067, -73.8166)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115115, N'12193', N'WESTERLO', N'NY', 42.5128, -74.0415)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115116, N'12194', N'WEST FULTON', N'NY', 42.5625, -74.4646)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115117, N'12195', N'WEST LEBANON', N'NY', 42.4838, -73.4664)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115118, N'12196', N'WEST SAND LAKE', N'NY', 42.643, -73.6108)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115119, N'12197', N'WORCESTER', N'NY', 42.6106, -74.7208)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115120, N'12198', N'WYNANTSKILL', N'NY', 42.6729, -73.6385)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115121, N'12201', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115122, N'12202', N'ALBANY', N'NY', 42.634, -73.7643)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115123, N'12203', N'ALBANY', N'NY', 42.6834, -73.8519)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115124, N'12204', N'ALBANY', N'NY', 42.6862, -73.7309)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115125, N'12205', N'ALBANY', N'NY', 42.7187, -73.8257)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115126, N'12206', N'ALBANY', N'NY', 42.6729, -73.7766)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115127, N'12207', N'ALBANY', N'NY', 42.6561, -73.7479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115128, N'12208', N'ALBANY', N'NY', 42.6512, -73.8071)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115129, N'12209', N'ALBANY', N'NY', 42.6377, -73.7865)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115130, N'12210', N'ALBANY', N'NY', 42.6584, -73.7571)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115131, N'12211', N'ALBANY', N'NY', 42.7025, -73.762)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115132, N'12212', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115133, N'12214', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115134, N'12220', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115135, N'12222', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115136, N'12223', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115137, N'12224', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115138, N'12225', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115139, N'12226', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115140, N'12227', N'ALBANY', N'NY', 42.6516, -73.7569)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115141, N'12228', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115142, N'12229', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115143, N'12230', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115144, N'12231', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115145, N'12232', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115146, N'12233', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115147, N'12234', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115148, N'12235', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115149, N'12236', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115150, N'12237', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115151, N'12238', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115152, N'12239', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115153, N'12240', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115154, N'12241', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115155, N'12242', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115156, N'12243', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115157, N'12244', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115158, N'12245', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115159, N'12246', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115160, N'12247', N'ALBANY', N'NY', 42.6516, -73.7569)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115161, N'12248', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115162, N'12249', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115163, N'12250', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115164, N'12252', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115165, N'12255', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115166, N'12256', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115167, N'12257', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115168, N'12260', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115169, N'12261', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115170, N'12262', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115171, N'12288', N'ALBANY', N'NY', 42.6525, -73.7567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115172, N'12301', N'SCHENECTADY', N'NY', 42.8148, -73.9393)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115173, N'12302', N'SCHENECTADY', N'NY', 42.8821, -73.9859)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115174, N'12303', N'SCHENECTADY', N'NY', 42.7494, -73.927)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115175, N'12304', N'SCHENECTADY', N'NY', 42.7747, -73.8974)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115176, N'12305', N'SCHENECTADY', N'NY', 42.8158, -73.942)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115177, N'12306', N'SCHENECTADY', N'NY', 42.8133, -74.0348)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115178, N'12307', N'SCHENECTADY', N'NY', 42.8051, -73.9345)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115179, N'12308', N'SCHENECTADY', N'NY', 42.821, -73.9206)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115180, N'12309', N'SCHENECTADY', N'NY', 42.794, -73.866)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115181, N'12325', N'SCHENECTADY', N'NY', 42.9294, -74.0527)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115182, N'12345', N'SCHENECTADY', N'NY', 42.8145, -73.9403)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115183, N'12401', N'KINGSTON', N'NY', 41.932, -74.0577)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115184, N'12402', N'KINGSTON', N'NY', 41.9276, -74.0183)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115185, N'12404', N'ACCORD', N'NY', 41.8083, -74.2318)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115186, N'12405', N'ACRA', N'NY', 42.3375, -74.0875)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115187, N'12406', N'ARKVILLE', N'NY', 42.087, -74.5282)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115188, N'12407', N'ASHLAND', N'NY', 42.3015, -74.3346)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115189, N'12409', N'BEARSVILLE', N'NY', 42.0116, -74.2042)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115190, N'12410', N'BIG INDIAN', N'NY', 42.1356, -74.4393)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115191, N'12411', N'BLOOMINGTON', N'NY', 41.8788, -74.0407)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115192, N'12412', N'BOICEVILLE', N'NY', 42, -74.2459)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115193, N'12413', N'CAIRO', N'NY', 42.3151, -74.0108)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115194, N'12414', N'CATSKILL', N'NY', 42.2274, -73.9283)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115195, N'12416', N'CHICHESTER', N'NY', 42.0883, -74.2654)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115196, N'12417', N'CONNELLY', N'NY', 41.9063, -73.9902)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115197, N'12418', N'CORNWALLVILLE', N'NY', 42.3666, -74.181)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115198, N'12419', N'COTTEKILL', N'NY', 41.8474, -74.1039)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115199, N'12420', N'CRAGSMOOR', N'NY', 41.6733, -74.3855)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115200, N'12421', N'DENVER', N'NY', 42.2464, -74.5487)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115201, N'12422', N'DURHAM', N'NY', 42.4034, -74.1978)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115202, N'12423', N'EAST DURHAM', N'NY', 42.3907, -74.1132)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115203, N'12424', N'EAST JEWETT', N'NY', 42.2335, -74.1457)
GO
print 'Processed 4500 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115204, N'12427', N'ELKA PARK', N'NY', 42.1457, -74.1309)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115205, N'12428', N'ELLENVILLE', N'NY', 41.7473, -74.4565)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115206, N'12429', N'ESOPUS', N'NY', 41.8279, -73.9658)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115207, N'12430', N'FLEISCHMANNS', N'NY', 42.1993, -74.516)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115208, N'12431', N'FREEHOLD', N'NY', 42.3835, -74.0626)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115209, N'12432', N'GLASCO', N'NY', 42.0436, -73.9479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115210, N'12433', N'GLENFORD', N'NY', 42.0042, -74.1592)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115211, N'12434', N'GRAND GORGE', N'NY', 42.3857, -74.5275)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115212, N'12435', N'GREENFIELD PARK', N'NY', 41.7224, -74.5053)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115213, N'12436', N'HAINES FALLS', N'NY', 42.1958, -74.0976)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115214, N'12438', N'HALCOTTSVILLE', N'NY', 42.2085, -74.6016)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115215, N'12439', N'HENSONVILLE', N'NY', 42.2614, -74.2189)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115216, N'12440', N'HIGH FALLS', N'NY', 41.7927, -74.1473)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115217, N'12441', N'HIGHMOUNT', N'NY', 42.1442, -74.4903)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115218, N'12442', N'HUNTER', N'NY', 42.2384, -74.2059)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115219, N'12443', N'HURLEY', N'NY', 41.9393, -74.0866)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115220, N'12444', N'JEWETT', N'NY', 42.2715, -74.2819)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115221, N'12446', N'KERHONKSON', N'NY', 41.7943, -74.3146)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115222, N'12448', N'LAKE HILL', N'NY', 42.0871, -74.1766)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115223, N'12449', N'LAKE KATRINE', N'NY', 42.0062, -74.0059)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115224, N'12450', N'LANESVILLE', N'NY', 42.1641, -74.2255)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115225, N'12451', N'LEEDS', N'NY', 42.31, -73.9413)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115226, N'12452', N'LEXINGTON', N'NY', 42.2404, -74.3655)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115227, N'12453', N'MALDEN ON HUDSON', N'NY', 42.1101, -73.9378)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115228, N'12454', N'MAPLECREST', N'NY', 42.2931, -74.1598)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115229, N'12455', N'MARGARETVILLE', N'NY', 42.1471, -74.6599)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115230, N'12456', N'MOUNT MARION', N'NY', 42.0347, -74.0013)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115231, N'12457', N'MOUNT TREMPER', N'NY', 42.041, -74.2684)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115232, N'12458', N'NAPANOCH', N'NY', 41.814, -74.4087)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115233, N'12459', N'NEW KINGSTON', N'NY', 42.2136, -74.6826)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115234, N'12460', N'OAK HILL', N'NY', 42.4095, -74.1479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115235, N'12461', N'OLIVEBRIDGE', N'NY', 41.8936, -74.2453)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115236, N'12463', N'PALENVILLE', N'NY', 42.18, -74.0189)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115237, N'12464', N'PHOENICIA', N'NY', 42.0431, -74.3824)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115238, N'12465', N'PINE HILL', N'NY', 42.1248, -74.4889)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115239, N'12466', N'PORT EWEN', N'NY', 41.9049, -73.9789)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115240, N'12468', N'PRATTSVILLE', N'NY', 42.2982, -74.3984)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115241, N'12469', N'PRESTON HOLLOW', N'NY', 42.451, -74.248)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115242, N'12470', N'PURLING', N'NY', 42.2687, -74.0097)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115243, N'12471', N'RIFTON', N'NY', 41.8376, -74.0378)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115244, N'12472', N'ROSENDALE', N'NY', 41.8364, -74.0632)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115245, N'12473', N'ROUND TOP', N'NY', 42.273, -74.0692)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115246, N'12474', N'ROXBURY', N'NY', 42.3044, -74.5553)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115247, N'12475', N'RUBY', N'NY', 42.0181, -74.0155)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115248, N'12477', N'SAUGERTIES', N'NY', 42.0957, -74.004)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115249, N'12480', N'SHANDAKEN', N'NY', 42.0866, -74.4143)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115250, N'12481', N'SHOKAN', N'NY', 41.9775, -74.2156)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115251, N'12482', N'SOUTH CAIRO', N'NY', 42.2741, -73.9642)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115252, N'12483', N'SPRING GLEN', N'NY', 41.6659, -74.4305)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115253, N'12484', N'STONE RIDGE', N'NY', 41.8715, -74.1782)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115254, N'12485', N'TANNERSVILLE', N'NY', 42.2063, -74.1044)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115255, N'12486', N'TILLSON', N'NY', 41.8258, -74.0632)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115256, N'12487', N'ULSTER PARK', N'NY', 41.858, -73.998)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115257, N'12489', N'WAWARSING', N'NY', 41.7497, -74.3488)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115258, N'12490', N'WEST CAMP', N'NY', 42.1231, -73.9356)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115259, N'12491', N'WEST HURLEY', N'NY', 41.9577, -74.1346)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115260, N'12492', N'WEST KILL', N'NY', 42.1816, -74.3483)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115261, N'12493', N'WEST PARK', N'NY', 41.7945, -73.9603)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115262, N'12494', N'WEST SHOKAN', N'NY', 41.944, -74.2997)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115263, N'12495', N'WILLOW', N'NY', 42.0898, -74.202)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115264, N'12496', N'WINDHAM', N'NY', 42.3258, -74.2738)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115265, N'12498', N'WOODSTOCK', N'NY', 42.0537, -74.1166)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115266, N'12501', N'AMENIA', N'NY', 41.8465, -73.5544)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115267, N'12502', N'ANCRAM', N'NY', 42.0882, -73.6567)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115268, N'12503', N'ANCRAMDALE', N'NY', 42.0345, -73.58)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115269, N'12504', N'ANNANDALE ON HUDSON', N'NY', 42.0124, -73.8998)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115270, N'12506', N'BANGALL', N'NY', 41.8757, -73.6919)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115271, N'12507', N'BARRYTOWN', N'NY', 41.996, -73.921)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115272, N'12508', N'BEACON', N'NY', 41.4997, -73.9495)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115273, N'12510', N'BILLINGS', N'NY', 41.6712, -73.7637)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115274, N'12511', N'CASTLE POINT', N'NY', 41.5461, -73.96)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115275, N'12512', N'CHELSEA', N'NY', 41.5539, -73.9673)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115276, N'12513', N'CLAVERACK', N'NY', 42.2137, -73.7208)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115277, N'12514', N'CLINTON CORNERS', N'NY', 41.8741, -73.7695)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115278, N'12515', N'CLINTONDALE', N'NY', 41.6657, -74.0596)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115279, N'12516', N'COPAKE', N'NY', 42.1035, -73.543)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115280, N'12517', N'COPAKE FALLS', N'NY', 42.1175, -73.5068)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115281, N'12518', N'CORNWALL', N'NY', 41.4138, -74.0483)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115282, N'12520', N'CORNWALL ON HUDSON', N'NY', 41.438, -74.0157)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115283, N'12521', N'CRARYVILLE', N'NY', 42.1667, -73.6519)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115284, N'12522', N'DOVER PLAINS', N'NY', 41.7225, -73.5844)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115285, N'12523', N'ELIZAVILLE', N'NY', 42.0975, -73.7681)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115286, N'12524', N'FISHKILL', N'NY', 41.5306, -73.8899)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115287, N'12525', N'GARDINER', N'NY', 41.6964, -74.2072)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115288, N'12526', N'GERMANTOWN', N'NY', 42.118, -73.8553)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115289, N'12527', N'GLENHAM', N'NY', 41.5182, -73.9394)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115290, N'12528', N'HIGHLAND', N'NY', 41.711, -74.0082)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115291, N'12529', N'HILLSDALE', N'NY', 42.2122, -73.5326)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115292, N'12530', N'HOLLOWVILLE', N'NY', 42.2314, -73.668)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115293, N'12531', N'HOLMES', N'NY', 41.5306, -73.6674)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115294, N'12533', N'HOPEWELL JUNCTION', N'NY', 41.562, -73.7865)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115295, N'12534', N'HUDSON', N'NY', 42.2272, -73.7451)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115296, N'12537', N'HUGHSONVILLE', N'NY', 41.5808, -73.9278)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115297, N'12538', N'HYDE PARK', N'NY', 41.8034, -73.8926)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115298, N'12540', N'LAGRANGEVILLE', N'NY', 41.6724, -73.7208)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115299, N'12541', N'LIVINGSTON', N'NY', 42.1419, -73.7784)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115300, N'12542', N'MARLBORO', N'NY', 41.6128, -73.9967)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115301, N'12543', N'MAYBROOK', N'NY', 41.4881, -74.2135)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115302, N'12544', N'MELLENVILLE', N'NY', 42.2531, -73.6683)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115303, N'12545', N'MILLBROOK', N'NY', 41.7886, -73.6822)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115304, N'12546', N'MILLERTON', N'NY', 41.9505, -73.5451)
GO
print 'Processed 4600 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115305, N'12547', N'MILTON', N'NY', 41.6575, -73.9824)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115306, N'12548', N'MODENA', N'NY', 41.6489, -74.1051)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115307, N'12549', N'MONTGOMERY', N'NY', 41.5439, -74.2881)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115308, N'12550', N'NEWBURGH', N'NY', 41.5391, -74.0491)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115309, N'12551', N'NEWBURGH', N'NY', 41.5036, -74.0105)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115310, N'12552', N'NEWBURGH', N'NY', 41.5036, -74.0105)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115311, N'12553', N'NEW WINDSOR', N'NY', 41.4722, -74.0758)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115312, N'12555', N'MID HUDSON', N'NY', 41.5052, -74.0136)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115313, N'12561', N'NEW PALTZ', N'NY', 41.7512, -74.0601)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115314, N'12563', N'PATTERSON', N'NY', 41.4968, -73.5932)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115315, N'12564', N'PAWLING', N'NY', 41.5792, -73.5887)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115316, N'12565', N'PHILMONT', N'NY', 42.2505, -73.6495)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115317, N'12566', N'PINE BUSH', N'NY', 41.6348, -74.336)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115318, N'12567', N'PINE PLAINS', N'NY', 41.9992, -73.6682)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115319, N'12568', N'PLATTEKILL', N'NY', 41.6176, -74.0764)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115320, N'12569', N'PLEASANT VALLEY', N'NY', 41.7359, -73.7872)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115321, N'12570', N'POUGHQUAG', N'NY', 41.6156, -73.6702)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115322, N'12571', N'RED HOOK', N'NY', 42.0129, -73.8031)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115323, N'12572', N'RHINEBECK', N'NY', 41.9268, -73.8681)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115324, N'12574', N'RHINECLIFF', N'NY', 41.9194, -73.9519)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115325, N'12575', N'ROCK TAVERN', N'NY', 41.4778, -74.1617)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115326, N'12577', N'SALISBURY MILLS', N'NY', 41.4491, -74.1252)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115327, N'12578', N'SALT POINT', N'NY', 41.8078, -73.7981)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115328, N'12580', N'STAATSBURG', N'NY', 41.8567, -73.8778)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115329, N'12581', N'STANFORDVILLE', N'NY', 41.8984, -73.686)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115330, N'12582', N'STORMVILLE', N'NY', 41.5502, -73.716)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115331, N'12583', N'TIVOLI', N'NY', 42.055, -73.8948)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115332, N'12584', N'VAILS GATE', N'NY', 41.4542, -74.0582)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115333, N'12585', N'VERBANK', N'NY', 41.7195, -73.6997)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115334, N'12586', N'WALDEN', N'NY', 41.5587, -74.1521)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115335, N'12588', N'WALKER VALLEY', N'NY', 41.6339, -74.3783)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115336, N'12589', N'WALLKILL', N'NY', 41.6108, -74.1111)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115337, N'12590', N'WAPPINGERS FALLS', N'NY', 41.596, -73.8849)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115338, N'12592', N'WASSAIC', N'NY', 41.7822, -73.5481)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115339, N'12593', N'WEST COPAKE', N'NY', 42.1033, -73.5506)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115340, N'12594', N'WINGDALE', N'NY', 41.6415, -73.5547)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115341, N'12601', N'POUGHKEEPSIE', N'NY', 41.7144, -73.9069)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115342, N'12602', N'POUGHKEEPSIE', N'NY', 41.7004, -73.9216)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115343, N'12603', N'POUGHKEEPSIE', N'NY', 41.6797, -73.8638)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115344, N'12604', N'POUGHKEEPSIE', N'NY', 41.7008, -73.9192)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115345, N'12701', N'MONTICELLO', N'NY', 41.6445, -74.7299)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115346, N'12719', N'BARRYVILLE', N'NY', 41.4902, -74.9022)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115347, N'12720', N'BETHEL', N'NY', 41.6639, -74.9063)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115348, N'12721', N'BLOOMINGBURG', N'NY', 41.5674, -74.4419)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115349, N'12722', N'BURLINGHAM', N'NY', 41.59, -74.3826)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115350, N'12723', N'CALLICOON', N'NY', 41.7747, -75.0209)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115351, N'12724', N'CALLICOON CENTER', N'NY', 41.8368, -74.9467)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115352, N'12725', N'CLARYVILLE', N'NY', 41.9749, -74.5407)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115353, N'12726', N'COCHECTON', N'NY', 41.6956, -74.9804)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115354, N'12727', N'COCHECTON CENTER', N'NY', 41.6423, -74.9676)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115355, N'12729', N'CUDDEBACKVILLE', N'NY', 41.479, -74.6343)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115356, N'12732', N'ELDRED', N'NY', 41.5592, -74.8883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115357, N'12733', N'FALLSBURG', N'NY', 41.7376, -74.616)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115358, N'12734', N'FERNDALE', N'NY', 41.7287, -74.758)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115359, N'12736', N'FREMONT CENTER', N'NY', 41.8493, -75.0344)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115360, N'12737', N'GLEN SPEY', N'NY', 41.5193, -74.7994)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115361, N'12738', N'GLEN WILD', N'NY', 41.6579, -74.5836)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115362, N'12739', N'GODEFFROY', N'NY', 41.4339, -74.6086)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115363, N'12740', N'GRAHAMSVILLE', N'NY', 41.9094, -74.4638)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115364, N'12741', N'HANKINS', N'NY', 41.8329, -75.1004)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115365, N'12742', N'HARRIS', N'NY', 41.7185, -74.7249)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115366, N'12743', N'HIGHLAND LAKE', N'NY', 41.5404, -74.8476)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115367, N'12745', N'HORTONVILLE', N'NY', 41.7851, -75.0265)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115368, N'12746', N'HUGUENOT', N'NY', 41.4418, -74.6472)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115369, N'12747', N'HURLEYVILLE', N'NY', 41.7703, -74.6619)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115370, N'12748', N'JEFFERSONVILLE', N'NY', 41.7699, -74.9165)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115371, N'12749', N'KAUNEONGA LAKE', N'NY', 41.6913, -74.8298)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115372, N'12750', N'KENOZA LAKE', N'NY', 41.7773, -74.9333)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115373, N'12751', N'KIAMESHA LAKE', N'NY', 41.6908, -74.6737)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115374, N'12752', N'LAKE HUNTINGTON', N'NY', 41.6782, -74.9914)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115375, N'12754', N'LIBERTY', N'NY', 41.7928, -74.7401)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115376, N'12758', N'LIVINGSTON MANOR', N'NY', 41.9041, -74.7692)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115377, N'12759', N'LOCH SHELDRAKE', N'NY', 41.7717, -74.6351)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115378, N'12760', N'LONG EDDY', N'NY', 41.8717, -75.0574)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115379, N'12762', N'MONGAUP VALLEY', N'NY', 41.6859, -74.8039)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115380, N'12763', N'MOUNTAIN DALE', N'NY', 41.6845, -74.5376)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115381, N'12764', N'NARROWSBURG', N'NY', 41.5878, -74.9792)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115382, N'12765', N'NEVERSINK', N'NY', 41.8521, -74.6152)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115383, N'12766', N'NORTH BRANCH', N'NY', 41.8137, -74.9799)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115384, N'12767', N'OBERNBURG', N'NY', 41.8448, -75.0075)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115385, N'12768', N'PARKSVILLE', N'NY', 41.8687, -74.7178)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115386, N'12769', N'PHILLIPSPORT', N'NY', 41.6508, -74.4362)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115387, N'12770', N'POND EDDY', N'NY', 41.4562, -74.8515)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115388, N'12771', N'PORT JERVIS', N'NY', 41.3781, -74.6302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115389, N'12775', N'ROCK HILL', N'NY', 41.6183, -74.5982)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115390, N'12776', N'ROSCOE', N'NY', 41.9683, -74.9324)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115391, N'12777', N'FORESTBURGH', N'NY', 41.5947, -74.7078)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115392, N'12778', N'SMALLWOOD', N'NY', 41.6656, -74.8197)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115393, N'12779', N'SOUTH FALLSBURG', N'NY', 41.7052, -74.6504)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115394, N'12780', N'SPARROW BUSH', N'NY', 41.4471, -74.7253)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115395, N'12781', N'SUMMITVILLE', N'NY', 41.6214, -74.4513)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115396, N'12782', N'SUNDOWN', N'NY', 41.8229, -74.5408)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115397, N'12783', N'SWAN LAKE', N'NY', 41.7374, -74.8429)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115398, N'12784', N'THOMPSONVILLE', N'NY', 41.6683, -74.6258)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115399, N'12785', N'WESTBROOKVILLE', N'NY', 41.5055, -74.5524)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115400, N'12786', N'WHITE LAKE', N'NY', 41.6497, -74.8719)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115401, N'12787', N'WHITE SULPHUR SPRINGS', N'NY', 41.7894, -74.8282)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115402, N'12788', N'WOODBOURNE', N'NY', 41.7909, -74.5895)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115403, N'12789', N'WOODRIDGE', N'NY', 41.7064, -74.5817)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115404, N'12790', N'WURTSBORO', N'NY', 41.5948, -74.5221)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115405, N'12791', N'YOUNGSVILLE', N'NY', 41.8033, -74.8852)
GO
print 'Processed 4700 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115406, N'12792', N'YULAN', N'NY', 41.5399, -74.9372)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115407, N'12801', N'GLENS FALLS', N'NY', 43.3117, -73.645)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115408, N'12803', N'SOUTH GLENS FALLS', N'NY', 43.2897, -73.6312)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115409, N'12804', N'QUEENSBURY', N'NY', 43.3481, -73.6782)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115410, N'12808', N'ADIRONDACK', N'NY', 43.7405, -73.7481)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115411, N'12809', N'ARGYLE', N'NY', 43.2485, -73.457)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115412, N'12810', N'ATHOL', N'NY', 43.4941, -73.8845)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115413, N'12811', N'BAKERS MILLS', N'NY', 43.6149, -74.0255)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115414, N'12812', N'BLUE MOUNTAIN LAKE', N'NY', 43.8825, -74.4091)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115415, N'12814', N'BOLTON LANDING', N'NY', 43.619, -73.6398)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115416, N'12815', N'BRANT LAKE', N'NY', 43.7029, -73.6844)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115417, N'12816', N'CAMBRIDGE', N'NY', 43.0594, -73.3734)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115418, N'12817', N'CHESTERTOWN', N'NY', 43.6328, -73.8062)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115419, N'12819', N'CLEMONS', N'NY', 43.6312, -73.4298)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115420, N'12820', N'CLEVERDALE', N'NY', 43.4773, -73.6433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115421, N'12821', N'COMSTOCK', N'NY', 43.4599, -73.3702)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115422, N'12822', N'CORINTH', N'NY', 43.245, -73.8962)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115423, N'12823', N'COSSAYUNA', N'NY', 43.176, -73.4081)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115424, N'12824', N'DIAMOND POINT', N'NY', 43.5383, -73.7083)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115425, N'12827', N'FORT ANN', N'NY', 43.4639, -73.5204)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115426, N'12828', N'FORT EDWARD', N'NY', 43.23, -73.5588)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115427, N'12831', N'GANSEVOORT', N'NY', 43.1979, -73.6839)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115428, N'12832', N'GRANVILLE', N'NY', 43.3389, -73.3194)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115429, N'12833', N'GREENFIELD CENTER', N'NY', 43.1447, -73.8492)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115430, N'12834', N'GREENWICH', N'NY', 43.09, -73.5018)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115431, N'12835', N'HADLEY', N'NY', 43.3006, -74.0106)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115432, N'12836', N'HAGUE', N'NY', 43.7292, -73.5623)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115433, N'12837', N'HAMPTON', N'NY', 43.4657, -73.2723)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115434, N'12838', N'HARTFORD', N'NY', 43.3569, -73.4106)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115435, N'12839', N'HUDSON FALLS', N'NY', 43.3537, -73.5472)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115436, N'12841', N'HULETTS LANDING', N'NY', 43.6393, -73.5078)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115437, N'12842', N'INDIAN LAKE', N'NY', 43.7669, -74.3085)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115438, N'12843', N'JOHNSBURG', N'NY', 43.5954, -74.0781)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115439, N'12844', N'KATTSKILL BAY', N'NY', 43.5149, -73.6285)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115440, N'12845', N'LAKE GEORGE', N'NY', 43.4218, -73.7084)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115441, N'12846', N'LAKE LUZERNE', N'NY', 43.3271, -73.8026)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115442, N'12847', N'LONG LAKE', N'NY', 43.9745, -74.5828)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115443, N'12848', N'MIDDLE FALLS', N'NY', 43.1008, -73.5256)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115444, N'12849', N'MIDDLE GRANVILLE', N'NY', 43.4507, -73.3006)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115445, N'12850', N'MIDDLE GROVE', N'NY', 43.1097, -74.0176)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115446, N'12851', N'MINERVA', N'NY', 43.7713, -73.9954)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115447, N'12852', N'NEWCOMB', N'NY', 44.0162, -74.1302)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115448, N'12853', N'NORTH CREEK', N'NY', 43.7289, -73.9027)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115449, N'12854', N'NORTH GRANVILLE', N'NY', 43.5091, -73.334)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115450, N'12855', N'NORTH HUDSON', N'NY', 44.002, -73.8015)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115451, N'12856', N'NORTH RIVER', N'NY', 43.7389, -74.0494)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115452, N'12857', N'OLMSTEDVILLE', N'NY', 43.8604, -74.0629)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115453, N'12858', N'PARADOX', N'NY', 43.8893, -73.6378)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115454, N'12859', N'PORTER CORNERS', N'NY', 43.1697, -73.9068)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115455, N'12860', N'POTTERSVILLE', N'NY', 43.6982, -73.7575)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115456, N'12861', N'PUTNAM STATION', N'NY', 43.7496, -73.4193)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115457, N'12862', N'RIPARIUS', N'NY', 43.6619, -73.8978)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115458, N'12863', N'ROCK CITY FALLS', N'NY', 43.0624, -73.9381)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115459, N'12864', N'SABAEL', N'NY', 43.7286, -74.3064)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115460, N'12865', N'SALEM', N'NY', 43.2004, -73.3317)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115461, N'12866', N'SARATOGA SPRINGS', N'NY', 43.0842, -73.7411)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115462, N'12870', N'SCHROON LAKE', N'NY', 43.8504, -73.7678)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115463, N'12871', N'SCHUYLERVILLE', N'NY', 43.0851, -73.6134)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115464, N'12872', N'SEVERANCE', N'NY', 43.879, -73.7244)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115465, N'12873', N'SHUSHAN', N'NY', 43.1288, -73.306)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115466, N'12874', N'SILVER BAY', N'NY', 43.6678, -73.5144)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115467, N'12878', N'STONY CREEK', N'NY', 43.4267, -74.0239)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115468, N'12879', N'NEWCOMB', N'NY', 44.0508, -74.0396)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115469, N'12883', N'TICONDEROGA', N'NY', 43.8519, -73.5047)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115470, N'12884', N'VICTORY MILLS', N'NY', 43.0875, -73.5957)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115471, N'12885', N'WARRENSBURG', N'NY', 43.4835, -73.8027)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115472, N'12886', N'WEVERTOWN', N'NY', 43.6487, -73.9094)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115473, N'12887', N'WHITEHALL', N'NY', 43.5434, -73.356)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115474, N'12901', N'PLATTSBURGH', N'NY', 44.737, -73.4626)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115475, N'12903', N'PLATTSBURGH', N'NY', 44.6756, -73.4576)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115476, N'12910', N'ALTONA', N'NY', 44.8543, -73.663)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115477, N'12911', N'KEESEVILLE', N'NY', 44.5125, -73.5235)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115478, N'12912', N'AU SABLE FORKS', N'NY', 44.4763, -73.7818)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115479, N'12913', N'BLOOMINGDALE', N'NY', 44.4141, -74.013)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115480, N'12914', N'BOMBAY', N'NY', 44.9388, -74.591)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115481, N'12915', N'BRAINARDSVILLE', N'NY', 44.8575, -74.0339)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115482, N'12916', N'BRUSHTON', N'NY', 44.8293, -74.5271)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115483, N'12917', N'BURKE', N'NY', 44.9255, -74.1782)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115484, N'12918', N'CADYVILLE', N'NY', 44.646, -73.6883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115485, N'12919', N'CHAMPLAIN', N'NY', 44.9684, -73.45)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115486, N'12920', N'CHATEAUGAY', N'NY', 44.826, -74.0746)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115487, N'12921', N'CHAZY', N'NY', 44.8906, -73.4663)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115488, N'12922', N'CHILDWOLD', N'NY', 44.2904, -74.6777)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115489, N'12923', N'CHURUBUSCO', N'NY', 44.9519, -73.9338)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115490, N'12924', N'KEESEVILLE', N'NY', 44.5023, -73.5719)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115491, N'12926', N'CONSTABLE', N'NY', 44.9516, -74.3293)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115492, N'12927', N'CRANBERRY LAKE', N'NY', 44.2226, -74.8364)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115493, N'12928', N'CROWN POINT', N'NY', 43.9506, -73.5319)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115494, N'12929', N'DANNEMORA', N'NY', 44.7185, -73.7192)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115495, N'12930', N'DICKINSON CENTER', N'NY', 44.7201, -74.5365)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115496, N'12932', N'ELIZABETHTOWN', N'NY', 44.227, -73.6275)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115497, N'12933', N'ELLENBURG', N'NY', 44.8936, -73.8366)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115498, N'12934', N'ELLENBURG CENTER', N'NY', 44.8258, -73.8745)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115499, N'12935', N'ELLENBURG DEPOT', N'NY', 44.9334, -73.7955)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115500, N'12936', N'ESSEX', N'NY', 44.287, -73.399)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115501, N'12937', N'FORT COVINGTON', N'NY', 44.9553, -74.4874)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115502, N'12939', N'GABRIELS', N'NY', 44.4319, -74.1815)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115503, N'12941', N'JAY', N'NY', 44.3553, -73.7107)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115504, N'12942', N'KEENE', N'NY', 44.2515, -73.7879)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115505, N'12943', N'KEENE VALLEY', N'NY', 44.1347, -73.8228)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115506, N'12944', N'KEESEVILLE', N'NY', 44.4363, -73.509)
GO
print 'Processed 4800 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115507, N'12945', N'LAKE CLEAR', N'NY', 44.3663, -74.2493)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115508, N'12946', N'LAKE PLACID', N'NY', 44.2342, -73.9934)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115509, N'12949', N'LAWRENCEVILLE', N'NY', 44.7589, -74.6613)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115510, N'12950', N'LEWIS', N'NY', 44.3166, -73.5821)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115511, N'12952', N'LYON MOUNTAIN', N'NY', 44.7243, -73.942)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115512, N'12953', N'MALONE', N'NY', 44.7347, -74.2672)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115513, N'12955', N'LYON MOUNTAIN', N'NY', 44.8128, -73.9721)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115514, N'12956', N'MINEVILLE', N'NY', 44.0932, -73.5066)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115515, N'12957', N'MOIRA', N'NY', 44.8655, -74.5739)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115516, N'12958', N'MOOERS', N'NY', 44.9632, -73.5844)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115517, N'12959', N'MOOERS FORKS', N'NY', 44.9641, -73.6944)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115518, N'12960', N'MORIAH', N'NY', 44.032, -73.5067)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115519, N'12961', N'MORIAH CENTER', N'NY', 44.0537, -73.5278)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115520, N'12962', N'MORRISONVILLE', N'NY', 44.6612, -73.5979)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115521, N'12964', N'NEW RUSSIA', N'NY', 44.1457, -73.6063)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115522, N'12965', N'NICHOLVILLE', N'NY', 44.7195, -74.6501)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115523, N'12966', N'NORTH BANGOR', N'NY', 44.7973, -74.4173)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115524, N'12967', N'NORTH LAWRENCE', N'NY', 44.7572, -74.6523)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115525, N'12969', N'OWLS HEAD', N'NY', 44.6794, -74.0898)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115526, N'12970', N'PAUL SMITHS', N'NY', 44.4763, -74.2781)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115527, N'12972', N'PERU', N'NY', 44.5623, -73.5877)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115528, N'12973', N'PIERCEFIELD', N'NY', 44.2441, -74.564)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115529, N'12974', N'PORT HENRY', N'NY', 44.0451, -73.5538)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115530, N'12975', N'PORT KENT', N'NY', 44.5283, -73.4075)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115531, N'12976', N'RAINBOW LAKE', N'NY', 44.4667, -74.1735)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115532, N'12977', N'RAY BROOK', N'NY', 44.3, -74.0856)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115533, N'12978', N'REDFORD', N'NY', 44.6124, -73.8133)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115534, N'12979', N'ROUSES POINT', N'NY', 44.9932, -73.3796)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115535, N'12980', N'SAINT REGIS FALLS', N'NY', 44.5179, -74.5347)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115536, N'12981', N'SARANAC', N'NY', 44.6799, -73.8236)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115537, N'12983', N'SARANAC LAKE', N'NY', 44.3202, -74.2149)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115538, N'12985', N'SCHUYLER FALLS', N'NY', 44.5605, -73.7592)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115539, N'12986', N'TUPPER LAKE', N'NY', 44.162, -74.433)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115540, N'12987', N'UPPER JAY', N'NY', 44.3273, -73.8399)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115541, N'12989', N'VERMONTVILLE', N'NY', 44.5284, -74.0904)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115542, N'12992', N'WEST CHAZY', N'NY', 44.7972, -73.5243)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115543, N'12993', N'WESTPORT', N'NY', 44.2095, -73.4727)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115544, N'12995', N'WHIPPLEVILLE', N'NY', 44.8099, -74.2624)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115545, N'12996', N'WILLSBORO', N'NY', 44.3585, -73.4161)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115546, N'12997', N'WILMINGTON', N'NY', 44.3912, -73.8421)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115547, N'12998', N'WITHERBEE', N'NY', 44.0831, -73.5379)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115548, N'13020', N'APULIA STATION', N'NY', 42.8189, -76.0725)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115549, N'13021', N'AUBURN', N'NY', 42.9235, -76.5525)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115550, N'13022', N'AUBURN', N'NY', 42.9319, -76.5665)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115551, N'13024', N'AUBURN', N'NY', 42.9319, -76.5665)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115552, N'13026', N'AURORA', N'NY', 42.7483, -76.6573)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115553, N'13027', N'BALDWINSVILLE', N'NY', 43.1825, -76.3664)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115554, N'13028', N'BERNHARDS BAY', N'NY', 43.2937, -75.94)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115555, N'13029', N'BREWERTON', N'NY', 43.2183, -76.1404)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115556, N'13030', N'BRIDGEPORT', N'NY', 43.158, -75.9536)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115557, N'13031', N'CAMILLUS', N'NY', 43.0436, -76.3076)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115558, N'13032', N'CANASTOTA', N'NY', 43.0803, -75.7643)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115559, N'13033', N'CATO', N'NY', 43.187, -76.5714)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115560, N'13034', N'CAYUGA', N'NY', 42.9078, -76.6883)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115561, N'13035', N'CAZENOVIA', N'NY', 42.9403, -75.8232)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115562, N'13036', N'CENTRAL SQUARE', N'NY', 43.3283, -76.2073)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115563, N'13037', N'CHITTENANGO', N'NY', 43.0618, -75.8688)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115564, N'13039', N'CICERO', N'NY', 43.1748, -76.0783)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115565, N'13040', N'CINCINNATUS', N'NY', 42.5415, -75.9009)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115566, N'13041', N'CLAY', N'NY', 43.1873, -76.1924)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115567, N'13042', N'CLEVELAND', N'NY', 43.2673, -75.8585)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115568, N'13043', N'CLOCKVILLE', N'NY', 43.0414, -75.7453)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115569, N'13044', N'CONSTANTIA', N'NY', 43.2999, -76.0002)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115570, N'13045', N'CORTLAND', N'NY', 42.5863, -76.1831)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115571, N'13051', N'DELPHI FALLS', N'NY', 42.8767, -75.9137)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115572, N'13052', N'DE RUYTER', N'NY', 42.7532, -75.8604)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115573, N'13053', N'DRYDEN', N'NY', 42.4762, -76.2687)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115574, N'13054', N'DURHAMVILLE', N'NY', 43.1683, -75.6691)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115575, N'13056', N'EAST HOMER', N'NY', 42.6662, -76.1018)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115576, N'13057', N'EAST SYRACUSE', N'NY', 43.1073, -76.0418)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115577, N'13060', N'ELBRIDGE', N'NY', 43.0229, -76.4237)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115578, N'13061', N'ERIEVILLE', N'NY', 42.8515, -75.753)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115579, N'13062', N'ETNA', N'NY', 42.4852, -76.3839)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115580, N'13063', N'FABIUS', N'NY', 42.8458, -75.9745)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115581, N'13064', N'FAIR HAVEN', N'NY', 43.3167, -76.7026)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115582, N'13065', N'FAYETTE', N'NY', 42.8144, -76.8095)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115583, N'13066', N'FAYETTEVILLE', N'NY', 43.0351, -75.9986)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115584, N'13068', N'FREEVILLE', N'NY', 42.5028, -76.3624)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115585, N'13069', N'FULTON', N'NY', 43.3608, -76.3536)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115586, N'13071', N'GENOA', N'NY', 42.6792, -76.5413)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115587, N'13072', N'GEORGETOWN', N'NY', 42.7638, -75.7522)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115588, N'13073', N'GROTON', N'NY', 42.5874, -76.3904)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115589, N'13074', N'HANNIBAL', N'NY', 43.3091, -76.5484)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115590, N'13076', N'HASTINGS', N'NY', 43.3578, -76.1514)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115591, N'13077', N'HOMER', N'NY', 42.715, -76.1949)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115592, N'13078', N'JAMESVILLE', N'NY', 42.9633, -76.0576)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115593, N'13080', N'JORDAN', N'NY', 43.0684, -76.4638)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115594, N'13081', N'KING FERRY', N'NY', 42.6734, -76.6263)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115595, N'13082', N'KIRKVILLE', N'NY', 43.1021, -75.9543)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115596, N'13083', N'LACONA', N'NY', 43.6481, -75.9881)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115597, N'13084', N'LA FAYETTE', N'NY', 42.8894, -76.1084)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115598, N'13087', N'LITTLE YORK', N'NY', 42.6955, -76.1648)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115599, N'13088', N'LIVERPOOL', N'NY', 43.1098, -76.1878)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115600, N'13089', N'LIVERPOOL', N'NY', 43.1064, -76.2181)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115601, N'13090', N'LIVERPOOL', N'NY', 43.1489, -76.2142)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115602, N'13092', N'LOCKE', N'NY', 42.6513, -76.421)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115603, N'13093', N'LYCOMING', N'NY', 43.4989, -76.3861)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115604, N'13101', N'MC GRAW', N'NY', 42.6052, -76.0696)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115605, N'13102', N'MC LEAN', N'NY', 42.5516, -76.2834)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115606, N'13103', N'MALLORY', N'NY', 43.3503, -76.1007)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115607, N'13104', N'MANLIUS', N'NY', 42.968, -75.9513)
GO
print 'Processed 4900 total records'
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115608, N'13107', N'MAPLE VIEW', N'NY', 43.4607, -76.1343)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115609, N'13108', N'MARCELLUS', N'NY', 42.9723, -76.3331)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115610, N'13110', N'MARIETTA', N'NY', 42.889, -76.2819)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115611, N'13111', N'MARTVILLE', N'NY', 43.2629, -76.6278)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115612, N'13112', N'MEMPHIS', N'NY', 43.0824, -76.3981)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115613, N'13113', N'MERIDIAN', N'NY', 43.1658, -76.5374)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115614, N'13114', N'MEXICO', N'NY', 43.4604, -76.2434)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115615, N'13115', N'MINETTO', N'NY', 43.3981, -76.4779)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115616, N'13116', N'MINOA', N'NY', 43.0745, -76.0083)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115617, N'13117', N'MONTEZUMA', N'NY', 43.0101, -76.7038)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115618, N'13118', N'MORAVIA', N'NY', 42.7535, -76.3921)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115619, N'13119', N'MOTTVILLE', N'NY', 42.9737, -76.4429)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115620, N'13120', N'NEDROW', N'NY', 42.9377, -76.1727)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115621, N'13121', N'NEW HAVEN', N'NY', 43.4798, -76.3157)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115622, N'13122', N'NEW WOODSTOCK', N'NY', 42.8442, -75.8576)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115623, N'13123', N'NORTH BAY', N'NY', 43.2303, -75.7486)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115624, N'13124', N'NORTH PITCHER', N'NY', 42.662, -75.8241)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115625, N'13126', N'OSWEGO', N'NY', 43.4571, -76.4163)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115626, N'13129', N'GEORGETOWN', N'NY', 42.7207, -75.7268)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115627, N'13131', N'PARISH', N'NY', 43.413, -76.0731)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115628, N'13132', N'PENNELLVILLE', N'NY', 43.2648, -76.2455)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115629, N'13134', N'PETERBORO', N'NY', 42.9597, -75.6842)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115630, N'13135', N'PHOENIX', N'NY', 43.2769, -76.306)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115631, N'13136', N'PITCHER', N'NY', 42.6056, -75.8434)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115632, N'13137', N'PLAINVILLE', N'NY', 43.1593, -76.4475)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115633, N'13138', N'POMPEY', N'NY', 42.9064, -76.0131)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115634, N'13139', N'POPLAR RIDGE', N'NY', 42.7386, -76.6186)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115635, N'13140', N'PORT BYRON', N'NY', 43.0228, -76.6522)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115636, N'13141', N'PREBLE', N'NY', 42.7431, -76.1643)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115637, N'13142', N'PULASKI', N'NY', 43.5166, -76.1253)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115638, N'13143', N'RED CREEK', N'NY', 43.2273, -76.712)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115639, N'13144', N'RICHLAND', N'NY', 43.5791, -75.9719)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115640, N'13145', N'SANDY CREEK', N'NY', 43.655, -76.1248)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115641, N'13146', N'SAVANNAH', N'NY', 43.0976, -76.7565)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115642, N'13147', N'SCIPIO CENTER', N'NY', 42.7818, -76.5651)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115643, N'13148', N'SENECA FALLS', N'NY', 42.9691, -76.7961)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115644, N'13152', N'SKANEATELES', N'NY', 42.8921, -76.3835)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115645, N'13153', N'SKANEATELES FALLS', N'NY', 42.9978, -76.4598)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115646, N'13154', N'SOUTH BUTLER', N'NY', 43.1314, -76.7663)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115647, N'13155', N'SOUTH OTSELIC', N'NY', 42.6745, -75.7592)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115648, N'13156', N'STERLING', N'NY', 43.3385, -76.6604)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115649, N'13157', N'SYLVAN BEACH', N'NY', 43.2086, -75.7292)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115650, N'13158', N'TRUXTON', N'NY', 42.7168, -75.9613)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115651, N'13159', N'TULLY', N'NY', 42.8002, -76.1123)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115652, N'13160', N'UNION SPRINGS', N'NY', 42.8228, -76.6558)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115653, N'13162', N'VERONA BEACH', N'NY', 43.1908, -75.7295)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115654, N'13163', N'WAMPSVILLE', N'NY', 43.0789, -75.7074)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115655, N'13164', N'WARNERS', N'NY', 43.095, -76.3271)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115656, N'13165', N'WATERLOO', N'NY', 42.9454, -76.8904)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115657, N'13166', N'WEEDSPORT', N'NY', 43.0373, -76.55)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115658, N'13167', N'WEST MONROE', N'NY', 43.3045, -76.0728)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115659, N'13201', N'SYRACUSE', N'NY', 43.0499, -76.1506)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115660, N'13202', N'SYRACUSE', N'NY', 43.0435, -76.1506)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115661, N'13203', N'SYRACUSE', N'NY', 43.0611, -76.1352)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115662, N'13204', N'SYRACUSE', N'NY', 43.0515, -76.1761)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115663, N'13205', N'SYRACUSE', N'NY', 43.0062, -76.1429)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115664, N'13206', N'SYRACUSE', N'NY', 43.0734, -76.106)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115665, N'13207', N'SYRACUSE', N'NY', 43.0127, -76.1639)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115666, N'13208', N'SYRACUSE', N'NY', 43.0791, -76.146)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115667, N'13209', N'SYRACUSE', N'NY', 43.0845, -76.247)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115668, N'13210', N'SYRACUSE', N'NY', 43.0321, -76.1271)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115669, N'13211', N'SYRACUSE', N'NY', 43.1046, -76.116)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115670, N'13212', N'SYRACUSE', N'NY', 43.1273, -76.1307)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115671, N'13214', N'SYRACUSE', N'NY', 43.0412, -76.074)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115672, N'13215', N'SYRACUSE', N'NY', 42.9779, -76.2271)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115673, N'13217', N'SYRACUSE', N'NY', 43.0499, -76.1337)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115674, N'13218', N'SYRACUSE', N'NY', 43.0499, -76.1337)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115675, N'13219', N'SYRACUSE', N'NY', 43.0396, -76.2224)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115676, N'13220', N'SYRACUSE', N'NY', 43.0518, -76.1533)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115677, N'13221', N'SYRACUSE', N'NY', 43.0499, -76.1506)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115678, N'13224', N'SYRACUSE', N'NY', 43.0434, -76.1017)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115679, N'13225', N'SYRACUSE', N'NY', 43.0482, -76.1479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115680, N'13235', N'SYRACUSE', N'NY', 43.0321, -76.1271)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115681, N'13244', N'SYRACUSE', N'NY', 43.0482, -76.1479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115682, N'13250', N'SYRACUSE', N'NY', 43.0482, -76.1479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115683, N'13251', N'SYRACUSE', N'NY', 43.0482, -76.1479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115684, N'13252', N'SYRACUSE', N'NY', 43.0482, -76.1479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115685, N'13260', N'SYRACUSE', N'NY', 43.0482, -76.1479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115686, N'13261', N'SYRACUSE', N'NY', 43.0482, -76.1479)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115687, N'13290', N'SYRACUSE', N'NY', 43.0685, -76.1709)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115688, N'13301', N'ALDER CREEK', N'NY', 43.4164, -75.2147)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115689, N'13302', N'ALTMAR', N'NY', 43.4945, -75.9612)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115690, N'13303', N'AVA', N'NY', 43.3661, -75.4626)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115691, N'13304', N'BARNEVELD', N'NY', 43.2188, -75.1385)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115692, N'13305', N'BEAVER FALLS', N'NY', 43.8868, -75.4275)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115693, N'13308', N'BLOSSVALE', N'NY', 43.2465, -75.6869)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115694, N'13309', N'BOONVILLE', N'NY', 43.4691, -75.3509)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115695, N'13310', N'BOUCKVILLE', N'NY', 42.9, -75.5716)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115696, N'13312', N'BRANTINGHAM', N'NY', 43.6888, -75.2926)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115697, N'13313', N'BRIDGEWATER', N'NY', 42.8793, -75.2514)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115698, N'13314', N'BROOKFIELD', N'NY', 42.8131, -75.314)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115699, N'13315', N'BURLINGTON FLATS', N'NY', 42.7477, -75.1584)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115700, N'13316', N'CAMDEN', N'NY', 43.3736, -75.7544)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115701, N'13317', N'CANAJOHARIE', N'NY', 42.8548, -74.5942)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115702, N'13318', N'CASSVILLE', N'NY', 42.9185, -75.2739)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115703, N'13319', N'CHADWICKS', N'NY', 43.0277, -75.2678)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115704, N'13320', N'CHERRY VALLEY', N'NY', 42.7729, -74.7312)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115705, N'13321', N'CLARK MILLS', N'NY', 43.0948, -75.3753)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115706, N'13322', N'CLAYVILLE', N'NY', 42.9716, -75.2059)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115707, N'13323', N'CLINTON', N'NY', 43.0443, -75.3908)
INSERT [dbo].[ZipLongLat] ([ID], [Zip], [City], [State], [Latitude], [Longitude]) VALUES (115708, N'13324', N'COLD BROOK', N'NY', 43.4607, -74.933)
GO
print 'Processed 5000 total records'

/****** Object:  Table [dbo].[VendorTypes]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[ClientManagers_Audit]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[ClientNumOfDays]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[Vendors_Audit]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[Vendors]    Script Date: 11/29/2012 18:54:46 ******/
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
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', 1, N'Edit', N'a', N'a', NULL, N'a', N'AL', NULL, N'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4F360B00 AS Date), NULL, CAST(0x70360B00 AS Date), NULL)
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'82971b3a-083c-4f05-81d4-39a89f5f01dd', 5, N'c', N'c', N'c', N'c', N'c', NULL, N'12345', N'USA', NULL, N'1234567899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4E360B00 AS Date), NULL, CAST(0x63360B00 AS Date), NULL)
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', 3, N'AEL', N'NEW5', N'Edit 1', N'NEW', N'NEW', N'CA', N'36688', N'USA', NULL, N'3692587412', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4F360B00 AS Date), NULL, CAST(0x62360B00 AS Date), NULL)
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'1675784e-c919-4754-8784-b187836e2fbc', 0, N'sfdsdf', N'sdfsdf', N'sdfsadf', N'sdafsadf', NULL, NULL, NULL, N'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x6D360B00 AS Date), NULL, CAST(0x6D360B00 AS Date), NULL)
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'b4601d22-8dcd-451d-8106-baa240e65205', 2, N'assss', N'aaaaa', N'e1', N'e1', N'e1', NULL, N'36688', N'USA', NULL, N'2342342343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'41985669', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4F360B00 AS Date), NULL, CAST(0x70360B00 AS Date), NULL)
/****** Object:  Table [dbo].[VendorRemitToTypes]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[Division]    Script Date: 11/29/2012 18:54:46 ******/
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
INSERT [dbo].[Division] ([DivisionID], [Code], [Prefix], [GLNum], [Address1], [Address2], [City], [State], [Zip], [Phone], [Fax], [ComplaintEmail], [VendorInstructions], [AutofaxNotice], [Inputdate], [InputBy]) VALUES (N'51a9ab51-e456-4d8f-a71a-3acf24d97fc8', N'SERVCO', N'SC', N'040', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'complaints-sc@broadwaynational.com', N'{\rtf1\ansi\ansicpg1252\deff0{\fonttbl{\f0\fnil Microsoft Sans Serif;}{\f1\fnil\fcharset0 Microsoft Sans Serif;}{\f2\fnil Arial;}}  \viewkind4\uc1\pard\lang1033\f0\fs16 1 - IF THE SERVICE SCHEDULE DATE CANNOT BE MAINTAINED CALL 631-\f1 389-3105\f0  IMMEDIATELY TO RESCHEDULE.\par  2 - ALL SERVICE CALLS ARE ONE MAN SERVICE UNLESS OTHERWISE SPECIFIED AND APPROVED IN ADVANCE.\par  3 - THE TOTAL BILLING INCLUDING SALES TAX FOR THIS PO # MUST NOT EXCEED  $[:vendornte:].  IF YOU NEED TO GO OVER \par        THIS NTE YOU MUST GET APPROVAL BEFORE PROCEEDING WITH THE WORK.  PAYMENT WILL BE DENIED FOR ANY WORK \par        DONE OUTSIDE THE SCOPE OF THIS PO OR OVER THE NTE WITHOUT PRIOR APPROVAL.\par  4 - YOU MUST CHECK IN WITH THE STORE MANAGER UPON ARRIVAL AND DEPARTURE FROM LOCATION FOR EACH TRIP AND\par        HAVE THE SERVCO SIGN OFF FORM COMPLETED INCLUDING TIME IN/OUT ALONG WITH STORE STAMP AND \par        SIGNATURE.  INVOICES RECEIVED WITHOUT A PROPERLY COMPLETED SIGN OFF FORM MAY BE REJECTED AS WE ARE \par        UNABLE TO PROCESS FOR PAYMENT.\par  5 - \f1 CERTAIN WORK WILL\f0  REQUIRE BEFORE AND AFTER PHOTOS BE SENT WITHIN 48 HOURS OF COMPLETION.\par  \f1 6\f0  - BILLING SHOULD ONLY BE SUBMITTED WHEN ALL WORK IS COMPLETED FOR THE ENTIRE SERVICE. PLEASE SEND ONE \par        TOTAL INVOICE ONLY .  DO NOT SEND PARTIAL BILLING.  INVOICES NEED TO BE RECEIVED PROMPTLY (10) DAYS FROM \par        COMPLETION OF ALL WORK PERFORMED.  PAYMENTS MAY BE DENIED IF INVOICES ARE NOT RECEIVED WITHIN THE \par        REQUIRED TIMEFRAME TO MEET THE CLIENTS BILLING DEADLINES. MOST CLIENTS REQUIRE THEIR BILLING WITHIN \par        15-25 DAYS FROM COMPLETION.\par  \f1 7\f0  - ALL INVOICES MUST INCLUDE THE PO#, \f1 SERVCO''S\f0  SIGN OFF FORM, A BREAKDOWN OF LABOR AND MATERIALS AS \par        WELL AS A DETAILED DESCRIPTION OF THE WORK PERFORMED, THIS GOES FOR QUOTED JOBS AS WELL.  INVOICES \par        MUST SHOW THE QUANTITIES, RATES AND A TOTAL CHARGE FOR EACH LINE ITEM.  ALL MATERIAL DESCRIPTIONS \par        SHOULD COME FROM AND BE IN COMPLIANCE WITH SERVCO''S AUTHORIZED \f1 PRICING\f0 .\par  \f1 8\f0  - ALL CHARGES FOR FUEL AND RECYCLING ARE INCLUDE IN THE LABOR AND MATERIAL RATES.  NO ADDITIONAL OR \par        MISCELLANEOUS CHARGES WILL BE ACCEPTED.  TRAVEL CHARGES MUST BE APPROVED IN ADVANCE.\par  \f1 9\f0 - A W-9 FOR ALL VENDORS MUST BE ON FILE , AS MANDATED BY FEDERAL LAW, IN ORDER FOR PAYMENTS TO BE ISSUED. \par         VENDORS ARE ALSO REQUIRE TO HAVE PROPER INSURANCE ON FILE IN ORDER TO BE PAID.\par  1\f1 0\f0 - ALL INVOICES MUST REFERENCE SERVCO''S PO# AND BE ACCOMPANIED BY THE SERVCO SIGN OFF.  INVOICES \par         WITHOUT THIS MAY BE RETURNED AS WE ARE UNABLE TO PROCESS THEM.\par  1\f1 1\f0 - BY PERFORMING THE WORK ON THIS PO YOU ARE ACCEPTING THE TERMS AND CONDITIONS AS OUTLINED ABOVE AND \par        AGREE TO COMPLY WITH SERVCO''S VENDOR BILLING PROCEDURE AND AUTHORIZED PRICING SCHEDULE.\par  1\f1 2\f0 - \f1 SERVCO FACILITY SERVICES  LLC IS NET60 FOR PAYMENT.\f2\fs20\par  \f0\fs16\par  \f2\fs20\par  }  ', NULL, NULL, NULL)
INSERT [dbo].[Division] ([DivisionID], [Code], [Prefix], [GLNum], [Address1], [Address2], [City], [State], [Zip], [Phone], [Fax], [ComplaintEmail], [VendorInstructions], [AutofaxNotice], [Inputdate], [InputBy]) VALUES (N'228da25d-917b-487e-9cab-b683ef5caabf', N'LIGHTING PROJECTS', N'LP', N'030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'complaints-lp@broadwaynational.com', N'{\rtf1\ansi\ansicpg1252\deff0{\fonttbl{\f0\fnil Microsoft Sans Serif;}{\f1\fnil\fcharset0 Microsoft Sans Serif;}}  \viewkind4\uc1\pard\lang1033\f0\fs16 1 - IF THE SERVICE SCHEDULE DATE CANNOT BE MAINTAINED CALL 631-737-3140 IMMEDIATELY TO RESCHEDULE.\par  2 - ALL SERVICE CALLS ARE ONE MAN SERVICE UNLESS OTHERWISE SPECIFIED AND APPROVED IN ADVANCE.\par  3 - THE TOTAL BILLING INCLUDING SALES TAX FOR THIS PO # MUST NOT EXCEED  $[:vendornte:].  IF YOU NEED TO GO OVER \par        THIS NTE YOU MUST GET APPROVAL BEFORE PROCEEDING WITH THE WORK.  PAYMENT WILL BE DENIED FOR ANY WORK \par        DONE OUTSIDE THE SCOPE OF THIS PO OR OVER THE NTE WITHOUT PRIOR APPROVAL.\par  4 - YOU MUST CHECK IN WITH THE STORE MANAGER UPON ARRIVAL AND DEPARTURE FROM LOCATION FOR EACH TRIP AND\par        HAVE THE \f1 BROADWAY NATIONAL \f0 SIGN OFF FORM COMPLETED INCLUDING TIME IN/OUT ALONG WITH STORE STAMP AND\par        \f1 SIGNATURE.  \f0 INVOICES RECEIVED WITHOUT A PROPERLY COMPLETED SIGN OFF FORM MAY BE REJECTED AS WE ARE \par        UNABLE TO PROCESS FOR PAYMENT.\par  5 - ALL WORK REQUIRES BEFORE AND AFTER PHOTOS BE SENT WITHIN 48 HOURS OF COMPLETION.\par  6 - IF GOODS ARE RECEIVED DAMAGED, IT IS THE RESPONSIBILITY OF THE VENDOR TO COMPLETE A BROADWAY NATIONAL \par        DAMAGE REPORT, TAKE PHOTOS OF THE DAMAGE, AND CONTACT BROADWAY NATIONAL IMMEDIATELY.\par  7 - BILLING SHOULD ONLY BE SUBMITTED WHEN ALL WORK IS COMPLETED FOR THE ENTIRE SERVICE. PLEASE SEND ONE \par        TOTAL INVOICE ONLY .  DO NOT SEND PARTIAL BILLING.  INVOICES NEED TO BE RECEIVED PROMPTLY (10) DAYS FROM \par        COMPLETION OF ALL WORK PERFORMED.  PAYMENTS MAY BE DENIED IF INVOICES ARE NOT RECEIVED WITHIN THE \par        REQUIRED TIMEFRAME TO MEET THE CLIENTS BILLING DEADLINES. MOST CLIENTS REQUIRE THEIR BILLING WITHIN \par        15-25 DAYS FROM COMPLETION.\par  8 - ALL INVOICES MUST INCLUDE THE PO#, \f1 BROADWAY NATIONAL''S\f0  SIGN OFF FORM, A BREAKDOWN OF LABOR AND MATERIALS AS \par        WELL AS A DETAILED DESCRIPTION OF THE WORK PERFORMED, THIS GOES FOR QUOTED JOBS AS WELL.  INVOICES \par        MUST SHOW THE QUANTITIES, RATES AND A TOTAL CHARGE FOR EACH LINE ITEM.  ALL MATERIAL DESCRIPTIONS \par        SHOULD COME FROM AND BE IN COMPLIANCE WITH BROADWAY NATIONAL''S AUTHORIZED MATERIALS LIST.\par  9 - ALL CHARGES FOR FUEL AND RECYCLING ARE INCLUDE IN THE LABOR AND MATERIAL RATES.  NO ADDITIONAL OR \par        MISCELLANEOUS CHARGES WILL BE ACCEPTED.  TRAVEL CHARGES MUST BE APPROVED IN ADVANCE.\par  10- A W-9 FOR ALL VENDORS MUST BE ON FILE , AS MANDATED BY FEDERAL LAW, IN ORDER FOR PAYMENTS TO BE ISSUED. \par         VENDORS ARE ALSO REQUIRE TO HAVE PROPER INSURANCE ON FILE IN ORDER TO BE PAID.\par  11- ALL INVOICES MUST REFERENCE BROADWAY NATIONAL''S PO# AND BE ACCOMPANIED BY THE BROADWAY NATIONAL SIGN OFF.  INVOICES \par         WITHOUT THIS MAY BE RETURNED AS WE ARE UNABLE TO PROCESS THEM.\par  12- BY PERFORMING THE WORK ON THIS PO YOU ARE ACCEPTING THE TERMS AND CONDITIONS AS OUTLINED ABOVE AND \par        AGREE TO COMPLY WITH BROADWAY NATIONAL''S VENDOR BILLING PROCEDURE AND AUTHORIZED PRICING SCHEDULE.\par  1\f1 3\f0 - \f1 BROADWAY NATIONAL SIGN & LIGHTING LLC IS NET60 FOR PAYMENT.\par  }  ', NULL, NULL, NULL)
INSERT [dbo].[Division] ([DivisionID], [Code], [Prefix], [GLNum], [Address1], [Address2], [City], [State], [Zip], [Phone], [Fax], [ComplaintEmail], [VendorInstructions], [AutofaxNotice], [Inputdate], [InputBy]) VALUES (N'24d0aaf1-73be-4b4e-8154-d6a481a986ef', N'SERVICE', N'SV', N'010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'complaints-sv@broadwaynational.com', N'{\rtf1\ansi\ansicpg1252\deff0{\fonttbl{\f0\fnil Microsoft Sans Serif;}{\f1\fnil\fcharset0 Microsoft Sans Serif;}{\f2\fnil Arial;}}  \viewkind4\uc1\pard\lang1033\f0\fs16 1 - IF THE SERVICE SCHEDULE DATE CANNOT BE MAINTAINED CALL 631-737-3140 IMMEDIATELY TO RESCHEDULE.\par  2 - ALL SERVICE CALLS ARE ONE MAN SERVICE UNLESS OTHERWISE SPECIFIED AND APPROVED IN ADVANCE.\par  3 - THE TOTAL BILLING INCLUDING SALES TAX FOR THIS PO # MUST NOT EXCEED  $[:vendornte:].  IF YOU NEED TO GO OVER \par        THIS NTE YOU MUST GET APPROVAL BEFORE PROCEEDING WITH THE WORK.  PAYMENT WILL BE DENIED FOR ANY WORK \par        DONE OUTSIDE THE SCOPE OF THIS PO OR OVER THE NTE WITHOUT PRIOR APPROVAL.\par  4 - YOU MUST CHECK IN WITH THE STORE MANAGER UPON ARRIVAL AND DEPARTURE FROM LOCATION FOR EACH TRIP AND\par        HAVE THE BROADWAY NATIONAL SIGN OFF FORM COMPLETED INCLUDING TIME IN/OUT ALONG WITH STORE STAMP AND \par        SIGNATURE.  INVOICES RECEIVED WITHOUT A PROPERLY COMPLETED SIGN OFF FORM MAY BE REJECTED AS WE ARE \par        UNABLE TO PROCESS FOR PAYMENT.\par  5 - ALL WORK REQUIRES BEFORE AND AFTER PHOTOS BE SENT WITHIN 48 HOURS OF COMPLETION.\par  6 - IF GOODS ARE RECEIVED DAMAGED, IT IS THE RESPONSIBILITY OF THE VENDOR TO COMPLETE A BROADWAY NATIONAL \par        DAMAGE REPORT, TAKE PHOTOS OF THE DAMAGE, AND CONTACT BROADWAY NATIONAL IMMEDIATELY.\par  7 - BILLING SHOULD ONLY BE SUBMITTED WHEN ALL WORK IS COMPLETED FOR THE ENTIRE SERVICE. PLEASE SEND ONE \par        TOTAL INVOICE ONLY .  DO NOT SEND PARTIAL BILLING.  INVOICES NEED TO BE RECEIVED PROMPTLY (10) DAYS FROM \par        COMPLETION OF ALL WORK PERFORMED.  PAYMENTS MAY BE DENIED IF INVOICES ARE NOT RECEIVED WITHIN THE \par        REQUIRED TIMEFRAME TO MEET THE CLIENTS BILLING DEADLINES. MOST CLIENTS REQUIRE THEIR BILLING WITHIN \par        15-25 DAYS FROM COMPLETION.\par  8 - ALL INVOICES MUST INCLUDE THE PO#, \f1 BROADWAY NATIONAL''S\f0  SIGN OFF FORM, A BREAKDOWN OF LABOR AND MATERIALS AS \par        WELL AS A DETAILED DESCRIPTION OF THE WORK PERFORMED, THIS GOES FOR QUOTED JOBS AS WELL.  INVOICES \par        MUST SHOW THE QUANTITIES, RATES AND A TOTAL CHARGE FOR EACH LINE ITEM.  ALL MATERIAL DESCRIPTIONS \par        SHOULD COME FROM AND BE IN COMPLIANCE WITH BROADWAY NATIONAL''S AUTHORIZED MATERIALS LIST.\par  9 - ALL CHARGES FOR FUEL AND RECYCLING ARE INCLUDE IN THE LABOR AND MATERIAL RATES.  NO ADDITIONAL OR \par        MISCELLANEOUS CHARGES WILL BE ACCEPTED.  TRAVEL CHARGES MUST BE APPROVED IN ADVANCE.\par  10- A W-9 FOR ALL VENDORS MUST BE ON FILE , AS MANDATED BY FEDERAL LAW, IN ORDER FOR PAYMENTS TO BE ISSUED. \par         VENDORS ARE ALSO REQUIRE TO HAVE PROPER INSURANCE ON FILE IN ORDER TO BE PAID.\par  11- ALL INVOICES MUST REFERENCE BROADWAY NATIONAL''S PO# AND BE ACCOMPANIED BY THE BROADWAY NATIONAL SIGN OFF.  INVOICES \par         WITHOUT THIS MAY BE RETURNED AS WE ARE UNABLE TO PROCESS THEM.\par  12- BY PERFORMING THE WORK ON THIS PO YOU ARE ACCEPTING THE TERMS AND CONDITIONS AS OUTLINED ABOVE AND \par        AGREE TO COMPLY WITH BROADWAY NATIONAL''S VENDOR BILLING PROCEDURE AND AUTHORIZED PRICING SCHEDULE.\par  1\f1 3\f0 - \f1 BROADWAY NATIONAL SIGN & LIGHTING LLC IS NET60 FOR PAYMENT.\f2\fs20\par  }  ', NULL, NULL, NULL)
INSERT [dbo].[Division] ([DivisionID], [Code], [Prefix], [GLNum], [Address1], [Address2], [City], [State], [Zip], [Phone], [Fax], [ComplaintEmail], [VendorInstructions], [AutofaxNotice], [Inputdate], [InputBy]) VALUES (N'76e52f4f-e083-4b95-8121-f8f6f15d8156', N'NATIONAL PROJECTS', N'NP', N'020', N'2150 FIFTH AVENUE', NULL, N'RONKONKOMA', N'NY', N'11779', N'631-737-3140', N'   -   -    ', N'complaints-np@broadwaynational.com', N'{\rtf1\ansi\ansicpg1252\deff0{\fonttbl{\f0\fnil Microsoft Sans Serif;}{\f1\fnil\fcharset0 Microsoft Sans Serif;}{\f2\fnil Arial;}}  \viewkind4\uc1\pard\lang1033\f0\fs16 1 - IF THE SERVICE SCHEDULE DATE CANNOT BE MAINTAINED CALL 631-737-3140 IMMEDIATELY TO RESCHEDULE.\par  2 - ALL SERVICE CALLS ARE ONE MAN SERVICE UNLESS OTHERWISE SPECIFIED AND APPROVED IN ADVANCE.\par  3 - THE TOTAL BILLING INCLUDING SALES TAX FOR THIS PO # MUST NOT EXCEED  $[:vendornte:].  IF YOU NEED TO GO OVER \par        THIS NTE YOU MUST GET APPROVAL BEFORE PROCEEDING WITH THE WORK.  PAYMENT WILL BE DENIED FOR ANY WORK \par        DONE OUTSIDE THE SCOPE OF THIS PO OR OVER THE NTE WITHOUT PRIOR APPROVAL.\par  4 - YOU MUST CHECK IN WITH THE STORE MANAGER UPON ARRIVAL AND DEPARTURE FROM LOCATION FOR EACH TRIP AND\par        HAVE THE BROADWAY NATIONAL SIGN OFF FORM COMPLETED INCLUDING TIME IN/OUT ALONG WITH STORE STAMP AND \par        SIGNATURE.  INVOICES RECEIVED WITHOUT A PROPERLY COMPLETED SIGN OFF FORM MAY BE REJECTED AS WE ARE \par        UNABLE TO PROCESS FOR PAYMENT.\par  5 - ALL WORK REQUIRES BEFORE AND AFTER PHOTOS BE SENT WITHIN 48 HOURS OF COMPLETION.\par  6 - IF GOODS ARE RECEIVED DAMAGED, IT IS THE RESPONSIBILITY OF THE VENDOR TO COMPLETE A BROADWAY NATIONAL \par        DAMAGE REPORT, TAKE PHOTOS OF THE DAMAGE, AND CONTACT BROADWAY NATIONAL IMMEDIATELY.\par  7 - BILLING SHOULD ONLY BE SUBMITTED WHEN ALL WORK IS COMPLETED FOR THE ENTIRE SERVICE. PLEASE SEND ONE \par        TOTAL INVOICE ONLY .  DO NOT SEND PARTIAL BILLING.  INVOICES NEED TO BE RECEIVED PROMPTLY (10) DAYS FROM \par        COMPLETION OF ALL WORK PERFORMED.  PAYMENTS MAY BE DENIED IF INVOICES ARE NOT RECEIVED WITHIN THE \par        REQUIRED TIMEFRAME TO MEET THE CLIENTS BILLING DEADLINES. MOST CLIENTS REQUIRE THEIR BILLING WITHIN \par        15-25 DAYS FROM COMPLETION.\par  8 - ALL INVOICES MUST INCLUDE THE PO#, \f1 BROADWAY NATIONAL''S\f0  SIGN OFF FORM, A BREAKDOWN OF LABOR AND MATERIALS AS \par        WELL AS A DETAILED DESCRIPTION OF THE WORK PERFORMED, THIS GOES FOR QUOTED JOBS AS WELL.  INVOICES \par        MUST SHOW THE QUANTITIES, RATES AND A TOTAL CHARGE FOR EACH LINE ITEM.  ALL MATERIAL DESCRIPTIONS \par        SHOULD COME FROM AND BE IN COMPLIANCE WITH BROADWAY NATIONAL''S AUTHORIZED MATERIALS LIST.\par  9 - ALL CHARGES FOR FUEL AND RECYCLING ARE INCLUDE IN THE LABOR AND MATERIAL RATES.  NO ADDITIONAL OR \par        MISCELLANEOUS CHARGES WILL BE ACCEPTED.  TRAVEL CHARGES MUST BE APPROVED IN ADVANCE.\par  10- A W-9 FOR ALL VENDORS MUST BE ON FILE , AS MANDATED BY FEDERAL LAW, IN ORDER FOR PAYMENTS TO BE ISSUED. \par         VENDORS ARE ALSO REQUIRE TO HAVE PROPER INSURANCE ON FILE IN ORDER TO BE PAID.\par  11- ALL INVOICES MUST REFERENCE BROADWAY NATIONAL''S PO# AND BE ACCOMPANIED BY THE BROADWAY NATIONAL SIGN OFF.  INVOICES \par         WITHOUT THIS MAY BE RETURNED AS WE ARE UNABLE TO PROCESS THEM.\par  12- BY PERFORMING THE WORK ON THIS PO YOU ARE ACCEPTING THE TERMS AND CONDITIONS AS OUTLINED ABOVE AND \par        AGREE TO COMPLY WITH BROADWAY NATIONAL''S VENDOR BILLING PROCEDURE AND AUTHORIZED PRICING SCHEDULE.\par  1\f1 3\f0 - \f1 BROADWAY NATIONAL SIGN & LIGHTING LLC IS NET60 FOR PAYMENT.\f2\fs20\par  \par  }  ', NULL, NULL, NULL)
/****** Object:  Table [dbo].[DeliveryOptions]    Script Date: 11/29/2012 18:54:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryOptions](
	[DeliveryID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Inputdate] [datetime] NULL,
	[InputBy] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 11/29/2012 18:54:46 ******/
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
INSERT [dbo].[Clients] ([ClientID], [Clinum], [AcctPrefix], [Company], [Address1], [Address2], [City], [State], [Zip], [FirstName], [LastName], [Phone], [PhoneExt], [Fax], [Mobile], [TechnologyProvider], [ActiveType], [Email], [Website], [DNE], [Inputdate], [Inputby], [CreditHold], [PaymentTermDays], [AerialPricing], [InvDays], [PrintInoutSignOff], [PrintLocID], [Artist], [PC], [CareOff], [TravelLabor], [Title], [LocationNameType], [CreditLimit], [LastModifiedBy], [LastModifiedDate]) VALUES (N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', N'00001', NULL, N'ABC', NULL, NULL, N'NY', NULL, NULL, N'A', N'B', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0.0000, CAST(0x0000A11500C92FD5 AS DateTime), NULL, NULL, 30, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Admin', CAST(0x0000A11800C274FE AS DateTime))
/****** Object:  Table [dbo].[UserLog]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[UserGroups]    Script Date: 11/29/2012 18:54:46 ******/
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
INSERT [dbo].[UserGroups] ([UserGroupID], [GroupName], [Description]) VALUES (N'b3e37e9b-a61f-4616-8e7f-a554e8c06bbb', N'Manager', N'Manager')
/****** Object:  Table [dbo].[TerminationReason]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[TechnologyProvider]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[StateTaxable]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[States]    Script Date: 11/29/2012 18:54:46 ******/
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
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'aaee1073-9e6a-43ee-8161-0c7c0cd17d46', N'IL', N'Illinois', 1)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'db226001-046d-4cbd-97c4-104b970d31a2', N'MD', N'Maryland', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'10a928a2-d5b1-4bdb-812d-13130fe36e4d', N'..', N'OUTSIDE THE USA', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'0a20bf10-e621-40fd-a58c-13b3e543517a', N'MO', N'Missouri', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'1484d4c0-9bf1-40bb-b48c-18df509f0664', N'VA', N'Virginia', 1)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'23c535c9-a0fd-42a4-a35e-223f9dd60d77', N'AB', N'Alberta', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'2224d174-dd2e-4ec9-9c29-27f4c31862c3', N'MB', N'Manitoba', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'c06b2e68-b8f1-4149-918f-280ad724ffbb', N'ID', N'Idaho', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'68b08a9b-bc26-4313-bfba-34a43ebc64d9', N'DC', N'District of Columbia', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'a48b400d-15b0-4369-a807-3552b1f40d76', N'QC', N'Quebec', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'bdb93283-96e9-492b-a7d9-3b3596e0b5c6', N'IA', N'Iowa', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'03159e33-c080-4152-a6f5-3ce190eeb0b0', N'HI', N'Hawaii', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'7012d61e-8e7c-43b5-9701-43f9f009a25e', N'WY', N'Wyoming', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'a2e82f81-d62c-4d1b-aa77-473d0865c684', N'PE', N'Prince Edward Island', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'dba2f0f3-d0ec-4c79-a303-4deb9e5baf67', N'NH', N'New Hampshire', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'86499474-a109-41f3-ac1c-516ffead807a', N'MI', N'Michigan', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'a2bd64e8-980e-41c3-8b6b-54103ec073ad', N'DE', N'Delaware', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'd78a9ba5-09e4-4c7e-a0be-563e5858ad48', N'ME', N'Maine', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'9c53be19-aaee-4fd4-b8a7-5b20a6d5e5a4', N'SC', N'South Carolina', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'cd17f90a-c4ba-415a-83a1-5b85fda48f9b', N'CO', N'Colorado', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'ab33a8af-92fd-42e0-8139-5bca9cbde3f5', N'CA', N'California', 1)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'239a0ce0-1983-4434-a252-611675ec17a7', N'TX', N'Texas', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'603426d0-8dd7-49eb-9630-66841acdccec', N'NV', N'Nevada', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'f36f4755-a339-46f3-aff9-69bb368948f6', N'YT', N'YUKON', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'54bdd7f6-005b-498c-b154-6a3ce3a5e7fc', N'WI', N'Wisconsin', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'bded80b2-d255-4e44-b490-6b05a1abbbeb', N'ND', N'North Dakota', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'5ba5d716-1440-4af3-a48c-6f78f6fd451b', N'SD', N'South Dakota', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'b0ec05fc-0c42-4b8a-99cf-737d335d1a6c', N'PA', N'Pennsylvania', 1)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'a88893f3-263e-429e-85f1-7e7dac21723c', N'NY', N'New York', 1)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'1d5113e5-97b4-4bbd-9ad2-82b5c7c6354f', N'OK', N'Oklahoma', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'a6180843-196d-4306-aadc-82e8822c9ca0', N'PR', N'Puerto Rico', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'1736d207-7b8a-4417-9a00-84d21072941a', N'NL', N'NEWFOUNDLAND', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'a1662e7c-f6ed-4e06-8fde-87141f3e0c19', N'OH', N'Ohio', 1)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'd4f6fea4-3cd8-47a9-9c0d-8aa3be898134', N'IN', N'Indiana', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'0e4297e4-d98f-4d0b-9040-8b64c31958ce', N'NM', N'New Mexico', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'c26b8723-510e-4c68-aa1e-8bfc03b2eae4', N'WA', N'Washington', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'eb9508cc-6170-4d58-bcd2-8cb1aba54b95', N'SK', N'Saskatchewan', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'0740e7fe-692f-42ca-bcb0-94d3abc0e469', N'VT', N'Vermont', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'127a61c0-1a54-4a3b-bbb1-9a81fc175122', N'NT', N'Northwest Territory', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'3da4d227-da82-4995-9a17-9e3bce3d3f45', N'MS', N'Mississippi', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'43ca2170-b439-4050-8ac0-a3638afa0e06', N'LA', N'Louisiana', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'6661481c-cf37-4e25-8a8d-a603055a5d40', N'WV', N'West Virginia', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'5ef5afa7-1163-4f20-969c-abffe1245518', N'KS', N'Kansas', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'efccc9f3-d09a-463e-812b-ad04cab8a81f', N'NE', N'Nebraska', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'8986fb5e-e114-4a5d-8f42-aee1463fab51', N'NB', N'New Brunswick', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'204265de-e09e-4fe0-a83e-afd5daa44120', N'KY', N'Kentucky', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'1933786b-d027-4810-afa9-b21f52f7ad66', N'AL', N'Alabama', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'cd69e1d6-9611-40ff-8466-b6289f1d41a8', N'MN', N'Minnesota', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'9e9110ee-5d97-426f-8929-b9c2347c65bd', N'NJ', N'New Jersey', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'8ca35c39-93b0-45cb-9fa2-ba0ff3fb0f0f', N'CN', N'Canada', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'a35a71e9-5b33-443a-a8f9-ba872e650b7b', N'AR', N'Arkansas', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'8569e6d9-ae41-4b1f-900e-bba81f50a6ad', N'NS', N'Nova Scotia', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'd2da6bc4-3b29-4bb2-bb04-c17e461e7389', N'AZ', N'Arizona', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'b0ee6761-1cad-4df7-875e-ce2b68fd606b', N'RI', N'Rhode Island', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'b737bfbd-26ab-417d-82a8-d0622b86b52d', N'UT', N'Utah', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'451ba468-ac89-46b2-a50c-d9122e900b46', N'MT', N'Montana', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'291f42a2-2738-444e-bd0b-d984eed86ae5', N'BC', N'British Columbia', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'37ce07f2-5367-46d9-92f6-daeec8bb451a', N'ON', N'ONTARIO', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'b38a29d1-afa2-4b6b-ad66-db2bb60022df', N'TN', N'Tennessee', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'22375f1b-1c54-4713-99d4-e2f8c82a333b', N'NC', N'North Carolina', 1)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'7cf40662-794f-4aa0-be8d-e624463f796d', N'GA', N'Georgia', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'39ceedd5-d323-43eb-867c-e9684a059e3d', N'FL', N'Florida', 1)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'e822b8cc-b409-463c-9cf0-e9bbe918f703', N'OR', N'Oregon', 0)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'c86243d2-9c26-4977-ae1a-f476f04cf574', N'MA', N'Massachusetts', 1)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'380cea83-ded8-47b4-852e-f5d7b44a6211', N'CT', N'Connecticut', 1)
INSERT [dbo].[States] ([StateID], [State], [Name], [ModifyTax]) VALUES (N'cbb5b85b-d154-4b71-8d39-ff1c20d63456', N'AK', N'Alaska', 0)
/****** Object:  Table [dbo].[PaymentTerms]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[NoteType]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[DocumentType]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[DocumentLocation]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[Document]    Script Date: 11/29/2012 18:54:46 ******/
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
--INSERT [dbo].[Document] ([DocumentID], [RecordNumber], [DocumentTypeID], [FileName], [FileExtension], [DateImported], [FileData], [ActiveType], [Comment], [Public], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [DocumentPath]) VALUES (N'88e0ad59-3026-4575-824b-05ef04ad2311', NULL, N'5f34c6e0-3fb1-4085-80a9-dfd1867067db', N'db29b7e4-88cd-4dde-925f-75fb54f20c83@New Text Document.txt', N'.txt', CAST(0x0000A11700F5BCC7 AS DateTime), NULL, NULL, NULL, NULL, N'Admin', CAST(0x0000A11700F5BCC7 AS DateTime), NULL, NULL, N'D:\github\broadwaynextweb\BroadwayNext\Storage\VendorDocument')
--INSERT [dbo].[Document] ([DocumentID], [RecordNumber], [DocumentTypeID], [FileName], [FileExtension], [DateImported], [FileData], [ActiveType], [Comment], [Public], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [DocumentPath]) VALUES (N'cfba8336-4f43-4858-a246-1dc7809e2f65', NULL, N'198e885d-1a04-424c-adf7-9050560b36e4', N'90d627fc-e5e6-456c-8693-c983670b5ce2@Error_Document.txt', N'.txt', CAST(0x0000A11700F7F34C AS DateTime), NULL, NULL, NULL, NULL, N'Admin', CAST(0x0000A11700F7F34C AS DateTime), NULL, NULL, N'D:\github\broadwaynextweb\BroadwayNext\Storage\VendorDocument')
--INSERT [dbo].[Document] ([DocumentID], [RecordNumber], [DocumentTypeID], [FileName], [FileExtension], [DateImported], [FileData], [ActiveType], [Comment], [Public], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [DocumentPath]) VALUES (N'c1642d75-e214-4de2-be54-221972117b95', NULL, N'7f15be36-fba4-4418-ba01-1790b1154aef', N'55b6e1c2-35a7-479f-afab-e84797d3bbc5@Maintainable.javascript.pdf', N'.pdf', CAST(0x0000A1160169FE49 AS DateTime), NULL, NULL, NULL, NULL, NULL, CAST(0x0000A1160169FE49 AS DateTime), NULL, NULL, N'D:\github\broadwaynextweb\BroadwayNext\Storage\ClientDocument')
--INSERT [dbo].[Document] ([DocumentID], [RecordNumber], [DocumentTypeID], [FileName], [FileExtension], [DateImported], [FileData], [ActiveType], [Comment], [Public], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [DocumentPath]) VALUES (N'24c799a0-dbf5-4003-b089-2f6dfd54c553', NULL, N'7f15be36-fba4-4418-ba01-1790b1154aef', N'798dab5e-c3dc-47a0-86e3-8c7ac785fa9e@Error_Document.txt', N'.txt', CAST(0x0000A117010A6AA0 AS DateTime), NULL, NULL, NULL, NULL, N'Admin', CAST(0x0000A117010A6AA0 AS DateTime), NULL, NULL, N'D:\github\broadwaynextweb\BroadwayNext\Storage\ClientDocument')
--INSERT [dbo].[Document] ([DocumentID], [RecordNumber], [DocumentTypeID], [FileName], [FileExtension], [DateImported], [FileData], [ActiveType], [Comment], [Public], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [DocumentPath]) VALUES (N'c5c7743b-2580-4d88-884f-325b5d2c994f', NULL, N'64473162-536e-4da2-90f1-3d33bed2d65f', N'0247b53e-c0c2-4664-8e30-b44bdd1ee084@Needed_For_Development.txt', N'.txt', CAST(0x0000A11700D8E1CE AS DateTime), NULL, NULL, NULL, NULL, N'Admin', CAST(0x0000A11700D8E1CE AS DateTime), NULL, NULL, N'D:\github\broadwaynextweb\BroadwayNext\Storage\ClientDocument')
--INSERT [dbo].[Document] ([DocumentID], [RecordNumber], [DocumentTypeID], [FileName], [FileExtension], [DateImported], [FileData], [ActiveType], [Comment], [Public], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [DocumentPath]) VALUES (N'd20915eb-d7da-4995-b67a-40f881073bbb', NULL, N'7f15be36-fba4-4418-ba01-1790b1154aef', N'cc363a1d-f9ff-451c-a917-4a33c04461ee@Error_Document.txt', N'.txt', CAST(0x0000A117010026EF AS DateTime), NULL, NULL, NULL, NULL, N'Admin', CAST(0x0000A117010026EF AS DateTime), NULL, NULL, N'D:\github\broadwaynextweb\BroadwayNext\Storage\ClientDocument')
--INSERT [dbo].[Document] ([DocumentID], [RecordNumber], [DocumentTypeID], [FileName], [FileExtension], [DateImported], [FileData], [ActiveType], [Comment], [Public], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [DocumentPath]) VALUES (N'de89efff-3461-4d06-bd9b-40fdd8b44f15', NULL, N'7f15be36-fba4-4418-ba01-1790b1154aef', N'c06712c8-f893-45c6-ad30-6b1e53cbed55@Error_Document.txt', N'.txt', CAST(0x0000A11700D698AA AS DateTime), NULL, NULL, NULL, NULL, NULL, CAST(0x0000A11700D698AA AS DateTime), NULL, NULL, N'D:\github\broadwaynextweb\BroadwayNext\Storage\ClientDocument')
--INSERT [dbo].[Document] ([DocumentID], [RecordNumber], [DocumentTypeID], [FileName], [FileExtension], [DateImported], [FileData], [ActiveType], [Comment], [Public], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [DocumentPath]) VALUES (N'891dae0f-99e7-47b4-a8b9-60afc0683235', NULL, N'7f15be36-fba4-4418-ba01-1790b1154aef', N'8fc5ec37-8489-4bc8-8327-bd7c17786b7d@Maintainable.javascript.pdf', N'.pdf', CAST(0x0000A117010F9A78 AS DateTime), NULL, NULL, NULL, NULL, N'Admin', CAST(0x0000A117010F9A78 AS DateTime), NULL, NULL, N'D:\github\broadwaynextweb\BroadwayNext\Storage\VendorDocument')
--INSERT [dbo].[Document] ([DocumentID], [RecordNumber], [DocumentTypeID], [FileName], [FileExtension], [DateImported], [FileData], [ActiveType], [Comment], [Public], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [DocumentPath]) VALUES (N'a49e52e2-4419-4b9c-8c56-7f3cc9cac5d0', NULL, N'7f15be36-fba4-4418-ba01-1790b1154aef', N'ea1c1dcf-6736-44b2-990f-7a8d6198687b@Error_Document.txt', N'.txt', CAST(0x0000A11601025A9B AS DateTime), NULL, NULL, NULL, NULL, NULL, CAST(0x0000A11601025A9B AS DateTime), NULL, NULL, N'D:\github\broadwaynextweb\BroadwayNext\Storage\VendorDocument')
/****** Object:  Table [dbo].[ClientPrefix]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[VendorRemitTo]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[VendorNotes]    Script Date: 11/29/2012 18:54:46 ******/
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
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'037c829e-c7be-4e76-9b17-1d178b52de26', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'aa935637-23a4-4b35-a804-315755b47b3d', N'jgfjhgjhg<br>', NULL, NULL, CAST(0x0000A116013AD248 AS DateTime), NULL, CAST(0x0000A116013AD248 AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'cb8672bf-ab5f-4440-8c88-2ff7266c632d', N'b4601d22-8dcd-451d-8106-baa240e65205', N'aef696d1-9f26-4e8a-82cb-1b736ed78b53', N'<span class="wysiwyg-font-size-x-large"><u><span class="wysiwyg-font-size-small">gyjkfhjkghjk</span></u></span>', NULL, NULL, CAST(0x0000A116011A1022 AS DateTime), NULL, CAST(0x0000A116013B0F2C AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'a8f90cc7-ee88-4fa1-baef-3382d67ea6cc', N'b4601d22-8dcd-451d-8106-baa240e65205', N'aa935637-23a4-4b35-a804-315755b47b3d', N'dasdasdasd<br>', NULL, NULL, CAST(0x0000A112012BFEDF AS DateTime), NULL, CAST(0x0000A112012BFEDF AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'99857d09-b2a3-4ec6-8869-370b4c4a7ff5', N'b4601d22-8dcd-451d-8106-baa240e65205', N'aef696d1-9f26-4e8a-82cb-1b736ed78b53', N'sdfasdfasdf<br>', NULL, 1, CAST(0x0000A116010A557A AS DateTime), NULL, CAST(0x0000A117010C3973 AS DateTime), N'Admin')
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'20ff3e78-46dd-4afd-97d2-3a719eb1dc9c', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'22985231-63a7-476a-83f8-93eacc9a8b90', N'<span class="wysiwyg-font-size-x-large">Hello this is test</span>', NULL, NULL, CAST(0x0000A11601342811 AS DateTime), NULL, CAST(0x0000A11601342811 AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'984064f4-7024-475f-9bc7-3d073c0e72ce', N'b4601d22-8dcd-451d-8106-baa240e65205', N'22985231-63a7-476a-83f8-93eacc9a8b90', N'asdfsadfsdf<br>', NULL, 1, CAST(0x0000A1160111E669 AS DateTime), NULL, CAST(0x0000A11700F52599 AS DateTime), N'Admin')
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'5aeb286a-a1f0-47dd-8c20-3f622d56091c', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'aef696d1-9f26-4e8a-82cb-1b736ed78b53', N'<span class="wysiwyg-font-size-x-large">sdfggsdfgsdf</span>', NULL, NULL, CAST(0x0000A11601331CC2 AS DateTime), NULL, CAST(0x0000A11601332CA0 AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'88ecd96f-d89d-417a-9b67-4aca0a9b1b07', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'22985231-63a7-476a-83f8-93eacc9a8b90', N'<span class="wysiwyg-font-size-medium"><b>asdfasdfasdf</b></span>', NULL, 1, CAST(0x0000A11601347AA8 AS DateTime), NULL, CAST(0x0000A1160157AF30 AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'36c48da3-a2c2-4a91-ad20-5030a231e40a', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'aef696d1-9f26-4e8a-82cb-1b736ed78b53', N'fasdfasdfasdf', NULL, NULL, CAST(0x0000A11601331356 AS DateTime), NULL, CAST(0x0000A11601331356 AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'4d372a99-4325-4bc8-ab22-69f351521e24', N'b4601d22-8dcd-451d-8106-baa240e65205', N'aa935637-23a4-4b35-a804-315755b47b3d', N'asdfasdf<br>', NULL, 0, CAST(0x0000A11700F545D6 AS DateTime), N'Admin', CAST(0x0000A11700F53AF6 AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'71d0b079-78a2-40b5-a832-9757c47c4267', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'aef696d1-9f26-4e8a-82cb-1b736ed78b53', N'<b>teset</b>', NULL, NULL, CAST(0x0000A11601351867 AS DateTime), NULL, CAST(0x0000A11601351867 AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'f4ffbe31-5636-4253-b978-9ee3cdb233db', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'aef696d1-9f26-4e8a-82cb-1b736ed78b53', N'<span class=" wysiwyg-font-size-x-small">dsgsgfsdfgsdfg</span>', NULL, NULL, CAST(0x0000A11601333B2C AS DateTime), NULL, CAST(0x0000A11601334792 AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'd74975af-6a1f-4dd3-a53d-b9ede744e75a', N'b4601d22-8dcd-451d-8106-baa240e65205', N'aef696d1-9f26-4e8a-82cb-1b736ed78b53', N'<span class="wysiwyg-font-size-large"></span>asdfasdfasdfsadfsac <br>', NULL, NULL, CAST(0x0000A1160113D789 AS DateTime), NULL, CAST(0x0000A11700DFB4A8 AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'b8ce31ae-5795-46bb-8ad9-bb5725ec75f3', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'22985231-63a7-476a-83f8-93eacc9a8b90', N'<span class="wysiwyg-font-size-x-large">This is test asdfasdfasdfadfs</span>', NULL, NULL, CAST(0x0000A112012ACC89 AS DateTime), NULL, CAST(0x0000A1160134FA7D AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'a79e91a7-fb5d-447a-a6ed-c3c504f1375c', N'b4601d22-8dcd-451d-8106-baa240e65205', N'15f36ab9-18ab-4360-abaf-c166c5a96722', N'dfdfsadfasdf<br>', NULL, 1, CAST(0x0000A116011061B3 AS DateTime), NULL, CAST(0x0000A116011198C3 AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'1470b080-e90d-4a12-8b19-c8607aaae97e', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'3c50867b-9115-48f2-a8c8-2bd4644dc2f5', N'<span class="wysiwyg-font-size-large"></span>test <br>', NULL, 1, CAST(0x0000A11601378CBA AS DateTime), NULL, CAST(0x0000A11700E2AD2A AS DateTime), NULL)
INSERT [dbo].[VendorNotes] ([VendorNotesID], [VendorID], [NoteTypeID], [Notes], [InputStatus], [MakePublic], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'190e0b59-d3f0-4e48-a919-f324d19ea0ed', N'b4601d22-8dcd-451d-8106-baa240e65205', N'aef696d1-9f26-4e8a-82cb-1b736ed78b53', N'test<br>', NULL, 1, CAST(0x0000A117010C4EA3 AS DateTime), N'Admin', CAST(0x0000A117010C3E06 AS DateTime), NULL)
/****** Object:  Table [dbo].[ClientNotifications]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[ClientNotes]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[ClientContacts]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[ClientBillTo]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[ClientManagers]    Script Date: 11/29/2012 18:54:46 ******/
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
	[DivisionID] [uniqueidentifier] NULL,
	[Operator] [uniqueidentifier] NULL,
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
INSERT [dbo].[ClientManagers] ([ClientManagerID], [ClientID], [Title], [DivisionID], [Operator], [InputDate], [InputBy]) VALUES (N'9edd6d5d-a559-46a7-8cc6-e7a7316a1dee', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', N'b3e37e9b-a61f-4616-8e7f-a554e8c06bbb', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', N'906e50e1-95e3-4820-b30f-0af94cf9cdc1', CAST(0x0000A11800F31EA0 AS DateTime), N'Admin')
/****** Object:  Table [dbo].[ClientInstructions]    Script Date: 11/29/2012 18:54:46 ******/
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
INSERT [dbo].[ClientInstructions] ([ClientInstructionsID], [ClientID], [Clinum], [InstructionType], [DivisionID], [Trades], [Notes], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy], [ActiveType]) VALUES (N'10fa2069-5209-4ad7-9ea7-0ee108b0a1ec', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', NULL, N'Instruction Type 2', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', N'Trades 2', N'test instruction<br>', CAST(0x0000A115016032BB AS DateTime), NULL, CAST(0x0000A11700D9F2E5 AS DateTime), N'Admin', 1)
INSERT [dbo].[ClientInstructions] ([ClientInstructionsID], [ClientID], [Clinum], [InstructionType], [DivisionID], [Trades], [Notes], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy], [ActiveType]) VALUES (N'0e942e02-ba34-4013-95c4-24ceacc5f6b6', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', NULL, N'Instruction Type 2', N'51a9ab51-e456-4d8f-a71a-3acf24d97fc8', N'Trades 1', N'asdasdfdf<br>', CAST(0x0000A11700DB3288 AS DateTime), N'Admin', CAST(0x0000A11701422F1E AS DateTime), N'Admin', 1)
INSERT [dbo].[ClientInstructions] ([ClientInstructionsID], [ClientID], [Clinum], [InstructionType], [DivisionID], [Trades], [Notes], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy], [ActiveType]) VALUES (N'c4ff0745-5c9a-4a92-b811-261ee31369ae', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', NULL, N'Instruction Type 1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', N'Trades 1', N'sss<br>', CAST(0x0000A117010C0C84 AS DateTime), N'Admin', CAST(0x0000A1180129CF51 AS DateTime), N'Admin', NULL)
INSERT [dbo].[ClientInstructions] ([ClientInstructionsID], [ClientID], [Clinum], [InstructionType], [DivisionID], [Trades], [Notes], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy], [ActiveType]) VALUES (N'dc6d8f57-bd70-4fb3-a0aa-5912a0fa0bdc', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', NULL, N'Instruction Type 3', N'228da25d-917b-487e-9cab-b683ef5caabf', N'Trades 3', N'<span class="wysiwyg-font-size-x-large">Testing Instruction<br></span>', CAST(0x0000A1150130D34E AS DateTime), NULL, CAST(0x0000A11700CA51B5 AS DateTime), N'Admin', 1)
INSERT [dbo].[ClientInstructions] ([ClientInstructionsID], [ClientID], [Clinum], [InstructionType], [DivisionID], [Trades], [Notes], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy], [ActiveType]) VALUES (N'3d286752-0c4c-47dd-96ae-8204a17a544f', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', NULL, N'Instruction Type 1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', N'Trades 1', N'test<br>', CAST(0x0000A11700DF47EA AS DateTime), N'Admin', CAST(0x0000A11700DF7A17 AS DateTime), N'Admin', NULL)
INSERT [dbo].[ClientInstructions] ([ClientInstructionsID], [ClientID], [Clinum], [InstructionType], [DivisionID], [Trades], [Notes], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy], [ActiveType]) VALUES (N'e2e8a572-e233-4aaa-b964-b37654cc749f', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', NULL, N'Instruction Type 2', N'228da25d-917b-487e-9cab-b683ef5caabf', N'Trades 1', N'Hello this is test<br>', CAST(0x0000A11700D70E4D AS DateTime), N'Admin', NULL, NULL, NULL)
/****** Object:  Table [dbo].[VendorTermination]    Script Date: 11/29/2012 18:54:46 ******/
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
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'8c819cca-4e65-4252-8be4-75ef38097c0e', N'b4601d22-8dcd-451d-8106-baa240e65205', CAST(0x0000A0FD01244953 AS DateTime), CAST(0x0000A0FD01244953 AS DateTime), N'ssss', N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A0FD01244B94 AS DateTime), N'Admin', CAST(0x0000A1170110DC1B AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'40b963c8-5baa-43c7-9863-84441a311359', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', CAST(0x0000A0F500000000 AS DateTime), CAST(0x0000A0E300000000 AS DateTime), N'sdfsdf', N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'228da25d-917b-487e-9cab-b683ef5caabf', NULL, CAST(0x0000A0EF012F5ECE AS DateTime), NULL, CAST(0x0000A10801411D92 AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'c8604094-1f65-47fb-b7a1-84c8c346eb7d', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', CAST(0x0000A10301310091 AS DateTime), CAST(0x0000A10301310091 AS DateTime), N'rfsdf', N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A1030131021B AS DateTime), NULL, CAST(0x0000A115015E3F59 AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'f3441862-09a9-499d-b1fb-bfdb526d5ce8', N'b4601d22-8dcd-451d-8106-baa240e65205', CAST(0x0000A1120138BFB8 AS DateTime), CAST(0x0000A1120138BFB8 AS DateTime), N'sdfsdf', N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A1120138C251 AS DateTime), NULL, CAST(0x0000A1120138C251 AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'301ce01f-fc1f-4c16-928b-c1c7e153bae2', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', CAST(0x0000A10400CA0009 AS DateTime), CAST(0x0000A10400CA0009 AS DateTime), NULL, N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A10400CA0233 AS DateTime), NULL, CAST(0x0000A10400CA0233 AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'4db4d01d-3f5d-4cf0-aac4-ddf5957605cc', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', CAST(0x0000A0F4012EBF0A AS DateTime), CAST(0x0000A0F4012EBF0A AS DateTime), N'aaa', N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A0F4012EC6FF AS DateTime), NULL, CAST(0x0000A0F4012EC6FF AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'f4cd5953-c308-4dc1-a647-e4fa7b311867', N'b4601d22-8dcd-451d-8106-baa240e65205', CAST(0x0000A0FD01244F98 AS DateTime), CAST(0x0000A0FD01244F98 AS DateTime), N'sadfsdf', N'c9636648-5722-462d-b368-d7f9a8963780', N'0', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A0FD0124570B AS DateTime), NULL, CAST(0x0000A1120138BE11 AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'04123c4e-72dd-4c0e-9500-ef715c455a22', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', CAST(0x0000A1030130FBD8 AS DateTime), CAST(0x0000A1030130FBD8 AS DateTime), NULL, N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', NULL, CAST(0x0000A1030130FE8A AS DateTime), NULL, CAST(0x0000A1030130FE8A AS DateTime))
INSERT [dbo].[VendorTermination] ([VendorTerminationID], [VendorID], [TerminationDate], [TerminationEffDate], [TerminatedBy], [TerminationReason], [Rehire], [Division], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'7c988eed-f340-47ea-86a8-fa77eee7753d', N'242059e5-3aee-44ae-b0b5-0dd25e7aa6fa', CAST(0x0000A13700000000 AS DateTime), CAST(0x0000A13900000000 AS DateTime), N'Manager', N'c9636648-5722-462d-b368-d7f9a8963780', N'1', N'228da25d-917b-487e-9cab-b683ef5caabf', NULL, CAST(0x0000A0F400F5BE9A AS DateTime), NULL, CAST(0x0000A0F400F5DCA3 AS DateTime))
/****** Object:  Table [dbo].[VendorShipTo]    Script Date: 11/29/2012 18:54:46 ******/
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
INSERT [dbo].[VendorShipTo] ([VendorShipToID], [VendorID], [Recipient], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Email], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'cd87dd8f-88dc-4b81-938c-bada3dc6f8b6', N'b4601d22-8dcd-451d-8106-baa240e65205', N'dasfsad', NULL, NULL, NULL, N'WI', NULL, N'USA', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A1170110B465 AS DateTime), N'Admin', CAST(0x0000A1170110AE3E AS DateTime), NULL)
/****** Object:  Table [dbo].[VendorInsurance]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 11/29/2012 18:54:46 ******/
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
INSERT [dbo].[VendorContacts] ([VendorContactID], [VendorID], [Lastname], [Firstname], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Title], [ContactType], [Email], [Notes], [ActiveType], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'a64e7e82-a878-4bdf-b0fa-6aa8e9d0b6c3', N'b4601d22-8dcd-451d-8106-baa240e65205', N'asdfasdf', N'ddd', N'asdfasdf', N'aaaa', N'asdfasdf', N'WI', NULL, N'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A115015FD138 AS DateTime), NULL, CAST(0x0000A11700F5A411 AS DateTime), N'Admin')
INSERT [dbo].[VendorContacts] ([VendorContactID], [VendorID], [Lastname], [Firstname], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Title], [ContactType], [Email], [Notes], [ActiveType], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'7db3b6de-34c8-47a3-ac62-d4474adc3b44', N'b4601d22-8dcd-451d-8106-baa240e65205', N'cc', N'aa', NULL, NULL, NULL, N'WI', NULL, N'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A11700F58AD5 AS DateTime), N'Admin', CAST(0x0000A11700F57E18 AS DateTime), NULL)
/****** Object:  Table [dbo].[VendorCategory]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 11/29/2012 18:54:46 ******/
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
/****** Object:  Table [dbo].[VendorFeedbacks]    Script Date: 11/29/2012 18:54:46 ******/
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
--INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'a2aaa446-00fe-4962-b320-220bded0e87d', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'New Feedback', N'<span class="wysiwyg-font-size-large"><u>Test feedback</u></span><br>', 3, NULL, CAST(0x0000A10700FC1CD9 AS DateTime), NULL, CAST(0x0000A10700FC1FEA AS DateTime))
--INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'77906de3-0c69-490d-8039-56fca386628d', N'b4601d22-8dcd-451d-8106-baa240e65205', N'sdfasdfasdf', N'ssasssssss<br>', 4, N'Admin', CAST(0x0000A11700F387ED AS DateTime), N'Admin', CAST(0x0000A117010C2AD4 AS DateTime))
--INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'751391fc-b87d-4aef-bd36-6d92576ddba2', N'b4601d22-8dcd-451d-8106-baa240e65205', N'test feedback', N'sdfsdfsdf<br>', 4, NULL, CAST(0x0000A11201386D49 AS DateTime), NULL, CAST(0x0000A11201386D49 AS DateTime))
--INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'c04ba747-1730-41eb-b630-6fce65e7f3ca', N'b4601d22-8dcd-451d-8106-baa240e65205', N'asdfasdfasdf', N'asdfasdfasdf<br>', 4, NULL, CAST(0x0000A116014C5EDE AS DateTime), NULL, CAST(0x0000A116014C5EDE AS DateTime))
--INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'70d4da91-3d8a-4093-aab6-850df8055562', N'b4601d22-8dcd-451d-8106-baa240e65205', N'sadfa', N'sadfasdf<br>', 4, N'Admin', CAST(0x0000A1170110C663 AS DateTime), NULL, CAST(0x0000A1170110C08D AS DateTime))
--INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'59b912ba-1f96-46a4-a999-930e4e517c70', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'aaaa', N'New test<br>', 3, NULL, CAST(0x0000A1070123211F AS DateTime), NULL, CAST(0x0000A1070123211F AS DateTime))
--INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'f69e1ec1-a604-499d-99fc-ce2f9988637f', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'Test', N'<span class="wysiwyg-font-size-large">Testing</span><br>', 4, NULL, CAST(0x0000A1070110679B AS DateTime), NULL, CAST(0x0000A1070110679B AS DateTime))
--INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'af3a9c37-e750-42e9-a474-d8236bc6f775', N'b4601d22-8dcd-451d-8106-baa240e65205', NULL, N'sdfsdf<br>', 5, N'Admin', CAST(0x0000A117016A2BEC AS DateTime), N'Admin', CAST(0x0000A11800C3E489 AS DateTime))
--INSERT [dbo].[VendorFeedbacks] ([VendorFeedbackID], [VendorID], [FeedbackSubject], [Feedback], [Ratings], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'dbca428b-4c0b-4225-aaeb-e569101e3383', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'dfasdfsdfadfa', N'<span class="wysiwyg-font-size-x-large"></span><span class="wysiwyg-font-size-large">asdfasdfasdfs</span><br>', 4, NULL, CAST(0x0000A1160113A71C AS DateTime), NULL, CAST(0x0000A1160113B679 AS DateTime))
/****** Object:  Table [dbo].[VendorDocuments]    Script Date: 11/29/2012 18:54:46 ******/
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
--INSERT [dbo].[VendorDocuments] ([VendorDocumentID], [DocumentID], [VendorID], [Note], [Public], [InputBy], [InputDate]) VALUES (N'b135ceaf-bc5d-43e8-bef2-58a8bd6aae10', N'88e0ad59-3026-4575-824b-05ef04ad2311', N'b4601d22-8dcd-451d-8106-baa240e65205', N'hgkjgkgk asdfasdf<br>', NULL, N'Admin', CAST(0x0000A11700F5BCC7 AS DateTime))
--INSERT [dbo].[VendorDocuments] ([VendorDocumentID], [DocumentID], [VendorID], [Note], [Public], [InputBy], [InputDate]) VALUES (N'438e0e6e-0af8-418f-b81b-6fa5342718b0', N'cfba8336-4f43-4858-a246-1dc7809e2f65', N'b4601d22-8dcd-451d-8106-baa240e65205', N'sadfasdfsdf<br>', NULL, N'Admin', CAST(0x0000A11700F7F34C AS DateTime))
--INSERT [dbo].[VendorDocuments] ([VendorDocumentID], [DocumentID], [VendorID], [Note], [Public], [InputBy], [InputDate]) VALUES (N'8148c53a-7542-4e93-83c1-7ba32f335d22', N'a49e52e2-4419-4b9c-8c56-7f3cc9cac5d0', N'ddab5319-a2a1-43d9-a81d-7d1f2ffe706f', N'dgdsfgdfsg sfasdfasdf<br>', NULL, N'Nasir Uddin', CAST(0x0000A11601025A9B AS DateTime))
--INSERT [dbo].[VendorDocuments] ([VendorDocumentID], [DocumentID], [VendorID], [Note], [Public], [InputBy], [InputDate]) VALUES (N'04fcb910-8022-4c13-b0da-900459acb917', N'891dae0f-99e7-47b4-a8b9-60afc0683235', N'b4601d22-8dcd-451d-8106-baa240e65205', N'sdfsdfasdf<br>', 1, N'Admin', CAST(0x0000A117010F9A78 AS DateTime))
/****** Object:  Table [dbo].[ClientDocuments]    Script Date: 11/29/2012 18:54:46 ******/
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
--INSERT [dbo].[ClientDocuments] ([ClientDocumentID], [DocumentID], [ClientID], [OrderAttachment], [Public], [InputBy], [InputDate], [Comments]) VALUES (N'4c9e5173-1c70-469a-81f8-0e845c6ce60e', N'd20915eb-d7da-4995-b67a-40f881073bbb', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', NULL, 1, N'Admin', CAST(0x0000A117010026EF AS DateTime), N'sdfasdfasdf<br>')
--INSERT [dbo].[ClientDocuments] ([ClientDocumentID], [DocumentID], [ClientID], [OrderAttachment], [Public], [InputBy], [InputDate], [Comments]) VALUES (N'092de12a-5e89-4ae8-9928-26f5eda665bb', N'c1642d75-e214-4de2-be54-221972117b95', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', NULL, 1, N'Nasir Uddin', CAST(0x0000A1160169FE49 AS DateTime), N'sdfsadfasdf<br>')
--INSERT [dbo].[ClientDocuments] ([ClientDocumentID], [DocumentID], [ClientID], [OrderAttachment], [Public], [InputBy], [InputDate], [Comments]) VALUES (N'8189b017-69a5-43cd-a9b8-3f4bb92c7616', N'24c799a0-dbf5-4003-b089-2f6dfd54c553', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', NULL, NULL, N'Admin', CAST(0x0000A117010A6AA0 AS DateTime), N'asfasfdas<br>')
--INSERT [dbo].[ClientDocuments] ([ClientDocumentID], [DocumentID], [ClientID], [OrderAttachment], [Public], [InputBy], [InputDate], [Comments]) VALUES (N'f9162ffb-d874-4372-bd60-4fbc5d125959', N'c5c7743b-2580-4d88-884f-325b5d2c994f', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', NULL, NULL, N'Admin', CAST(0x0000A11700D8E1CE AS DateTime), N'dfgdfgsdfgsdf dfgsdfg<br>')
--INSERT [dbo].[ClientDocuments] ([ClientDocumentID], [DocumentID], [ClientID], [OrderAttachment], [Public], [InputBy], [InputDate], [Comments]) VALUES (N'862ae9e7-d98d-4279-978c-59aeba8195e0', N'de89efff-3461-4d06-bd9b-40fdd8b44f15', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', NULL, 1, N'Admin', CAST(0x0000A11700D698AA AS DateTime), N'sdfsdf<br>')
/****** Object:  Default [DF_ClientBillTo_ClientBillToID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF_ClientBillTo_ClientBillToID]  DEFAULT (newid()) FOR [ClientBillToID]
GO
/****** Object:  Default [DF__ClientBil__Clinu__11AA861D]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Clinu__11AA861D]  DEFAULT ('') FOR [Clinum]
GO
/****** Object:  Default [DF__ClientBil__Divis__129EAA56]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Divis__129EAA56]  DEFAULT ('') FOR [Division]
GO
/****** Object:  Default [DF__ClientBil__BillC__1392CE8F]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillC__1392CE8F]  DEFAULT ('') FOR [BillCompany]
GO
/****** Object:  Default [DF__ClientBil__BillA__1486F2C8]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillA__1486F2C8]  DEFAULT ('') FOR [BillAddress1]
GO
/****** Object:  Default [DF__ClientBil__BillA__157B1701]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillA__157B1701]  DEFAULT ('') FOR [BillAddress2]
GO
/****** Object:  Default [DF__ClientBil__BillC__166F3B3A]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillC__166F3B3A]  DEFAULT ('') FOR [BillCity]
GO
/****** Object:  Default [DF__ClientBil__BillS__17635F73]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillS__17635F73]  DEFAULT ('') FOR [BillState]
GO
/****** Object:  Default [DF__ClientBil__BillZ__185783AC]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillZ__185783AC]  DEFAULT ('') FOR [BillZip]
GO
/****** Object:  Default [DF__ClientBil__BillP__194BA7E5]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillP__194BA7E5]  DEFAULT ('') FOR [BillPhone]
GO
/****** Object:  Default [DF__ClientBil__BillF__1A3FCC1E]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillF__1A3FCC1E]  DEFAULT ('') FOR [BillFax]
GO
/****** Object:  Default [DF__ClientBil__BillC__1B33F057]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillC__1B33F057]  DEFAULT ('') FOR [BillContact]
GO
/****** Object:  Default [DF_ClientBillTo_BillEmail]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF_ClientBillTo_BillEmail]  DEFAULT ('') FOR [BillEmail]
GO
/****** Object:  Default [DF__ClientBil__Input__1C281490]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Input__1C281490]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientBil__Input__1D1C38C9]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Input__1D1C38C9]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF__ClientBil__Activ__499AA4DC]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Activ__499AA4DC]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF__ClientCon__Clinu__4D005615]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Clinu__4D005615]  DEFAULT ('') FOR [Clinum]
GO
/****** Object:  Default [DF__ClientCon__Lastn__4DF47A4E]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Lastn__4DF47A4E]  DEFAULT ('') FOR [Lastname]
GO
/****** Object:  Default [DF__ClientCon__First__4EE89E87]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__First__4EE89E87]  DEFAULT ('') FOR [Firstname]
GO
/****** Object:  Default [DF__ClientCon__Initi__4FDCC2C0]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Initi__4FDCC2C0]  DEFAULT ('') FOR [Initial]
GO
/****** Object:  Default [DF__ClientCon__Addre__50D0E6F9]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Addre__50D0E6F9]  DEFAULT ('') FOR [Address1]
GO
/****** Object:  Default [DF__ClientCon__Addre__51C50B32]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Addre__51C50B32]  DEFAULT ('') FOR [Address2]
GO
/****** Object:  Default [DF__ClientCont__City__52B92F6B]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCont__City__52B92F6B]  DEFAULT ('') FOR [City]
GO
/****** Object:  Default [DF__ClientCon__State__53AD53A4]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__State__53AD53A4]  DEFAULT ('') FOR [State]
GO
/****** Object:  Default [DF__ClientConta__Zip__54A177DD]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientConta__Zip__54A177DD]  DEFAULT ('') FOR [Zip]
GO
/****** Object:  Default [DF__ClientCon__Phone__55959C16]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Phone__55959C16]  DEFAULT ('') FOR [Phone]
GO
/****** Object:  Default [DF__ClientCon__Phone__5689C04F]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Phone__5689C04F]  DEFAULT ('') FOR [PhoneExt]
GO
/****** Object:  Default [DF__ClientConta__Fax__577DE488]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientConta__Fax__577DE488]  DEFAULT ('') FOR [Fax]
GO
/****** Object:  Default [DF__ClientCon__Pager__587208C1]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Pager__587208C1]  DEFAULT ('') FOR [Pager]
GO
/****** Object:  Default [DF__ClientCon__Mobil__59662CFA]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Mobil__59662CFA]  DEFAULT ('') FOR [Mobile]
GO
/****** Object:  Default [DF__ClientCon__Title__5A5A5133]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Title__5A5A5133]  DEFAULT ('') FOR [Title]
GO
/****** Object:  Default [DF__ClientCon__Salut__5B4E756C]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Salut__5B4E756C]  DEFAULT ('') FOR [Salutation]
GO
/****** Object:  Default [DF__ClientCon__Conta__5C4299A5]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Conta__5C4299A5]  DEFAULT ('') FOR [ContactType]
GO
/****** Object:  Default [DF__ClientCon__Email__5D36BDDE]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Email__5D36BDDE]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF__ClientCon__Websi__5E2AE217]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Websi__5E2AE217]  DEFAULT ('') FOR [Website]
GO
/****** Object:  Default [DF__ClientCon__Refer__5F1F0650]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Refer__5F1F0650]  DEFAULT ('') FOR [ReferBy]
GO
/****** Object:  Default [DF__ClientCon__Activ__60132A89]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Activ__60132A89]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF__ClientCon__Input__61074EC2]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Input__61074EC2]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientCon__Input__61FB72FB]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Input__61FB72FB]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF_ClientInstructions_ClientInstructionsID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF_ClientInstructions_ClientInstructionsID]  DEFAULT (newid()) FOR [ClientInstructionsID]
GO
/****** Object:  Default [DF__ClientIns__Clinu__4FBCC72F]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__ClientIns__Clinu__4FBCC72F]  DEFAULT ('') FOR [Clinum]
GO
/****** Object:  Default [DF__ClientInst__Type__50B0EB68]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__ClientInst__Type__50B0EB68]  DEFAULT ('') FOR [InstructionType]
GO
/****** Object:  Default [DF_ClientInstructions_Division]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF_ClientInstructions_Division]  DEFAULT ('') FOR [DivisionID]
GO
/****** Object:  Default [DF__ClientIns__Input__51A50FA1]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__ClientIns__Input__51A50FA1]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientIns__Input__529933DA]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__ClientIns__Input__529933DA]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF__clientins__Activ__34949AFE]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__clientins__Activ__34949AFE]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF__ClientMan__Input__76577163]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientManagers] ADD  CONSTRAINT [DF__ClientMan__Input__76577163]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientMan__Input__774B959C]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientManagers] ADD  CONSTRAINT [DF__ClientMan__Input__774B959C]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF__ClientMan__Updat__5729AA24]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientManagers_Audit] ADD  CONSTRAINT [DF__ClientMan__Updat__5729AA24]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF__ClientNot__NoteT__7889D298]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF__ClientNot__NoteT__7889D298]  DEFAULT ('') FOR [NoteType]
GO
/****** Object:  Default [DF_ClientNotes_Collection]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF_ClientNotes_Collection]  DEFAULT ((0)) FOR [Collection]
GO
/****** Object:  Default [DF__ClientNot__Input__797DF6D1]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF__ClientNot__Input__797DF6D1]  DEFAULT ('') FOR [InputStatus]
GO
/****** Object:  Default [DF__ClientNot__Input__7A721B0A]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF__ClientNot__Input__7A721B0A]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientNot__Input__7B663F43]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF__ClientNot__Input__7B663F43]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF_ClientNotifications_NotificationID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientNotifications] ADD  CONSTRAINT [DF_ClientNotifications_NotificationID]  DEFAULT (newid()) FOR [NotificationID]
GO
/****** Object:  Default [DF_ClientPrefix_ClientPrefixID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientPrefix] ADD  CONSTRAINT [DF_ClientPrefix_ClientPrefixID]  DEFAULT (newid()) FOR [ClientPrefixID]
GO
/****** Object:  Default [DF__ClientPre__Input__7DEDA633]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientPrefix] ADD  CONSTRAINT [DF__ClientPre__Input__7DEDA633]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF_Clients_ClientID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_ClientID]  DEFAULT (newid()) FOR [ClientID]
GO
/****** Object:  Default [DF__Clients__Clinum__5AEE82B9]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Clinum__5AEE82B9]  DEFAULT ('') FOR [Clinum]
GO
/****** Object:  Default [DF_Clients_AcctPrefix]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_AcctPrefix]  DEFAULT ('') FOR [AcctPrefix]
GO
/****** Object:  Default [DF__Clients__Company__5BE2A6F2]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Company__5BE2A6F2]  DEFAULT ('') FOR [Company]
GO
/****** Object:  Default [DF__Clients__Address__5CD6CB2B]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Address__5CD6CB2B]  DEFAULT ('') FOR [Address1]
GO
/****** Object:  Default [DF__Clients__Address__5DCAEF64]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Address__5DCAEF64]  DEFAULT ('') FOR [Address2]
GO
/****** Object:  Default [DF__Clients__City__5EBF139D]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__City__5EBF139D]  DEFAULT ('') FOR [City]
GO
/****** Object:  Default [DF__Clients__State__5FB337D6]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__State__5FB337D6]  DEFAULT ('') FOR [State]
GO
/****** Object:  Default [DF__Clients__Zip__60A75C0F]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Zip__60A75C0F]  DEFAULT ('') FOR [Zip]
GO
/****** Object:  Default [DF__Clients__firstname__619B8048]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__firstname__619B8048]  DEFAULT ('') FOR [FirstName]
GO
/****** Object:  Default [DF__Clients__lastname__619B8048]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__lastname__619B8048]  DEFAULT ('') FOR [LastName]
GO
/****** Object:  Default [DF__Clients__Phone__628FA481]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Phone__628FA481]  DEFAULT ('') FOR [Phone]
GO
/****** Object:  Default [DF__Clients__Fax__6383C8BA]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Fax__6383C8BA]  DEFAULT ('') FOR [Fax]
GO
/****** Object:  Default [DF_Clients_Provider]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Provider]  DEFAULT ('') FOR [TechnologyProvider]
GO
/****** Object:  Default [DF__Clients__ActiveT__6477ECF3]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__ActiveT__6477ECF3]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF_Clients_Email]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Email]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF_Clients_Website]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Website]  DEFAULT ('') FOR [Website]
GO
/****** Object:  Default [DF_Clients_DNE]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_DNE]  DEFAULT ((0)) FOR [DNE]
GO
/****** Object:  Default [DF__Clients__Inputda__68487DD7]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Inputda__68487DD7]  DEFAULT (getdate()) FOR [Inputdate]
GO
/****** Object:  Default [DF__Clients__Inputby__693CA210]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Inputby__693CA210]  DEFAULT ('') FOR [Inputby]
GO
/****** Object:  Default [DF_Clients_TermDays]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_TermDays]  DEFAULT ((30)) FOR [PaymentTermDays]
GO
/****** Object:  Default [DF_Clients_InvDays]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_InvDays]  DEFAULT ((0)) FOR [InvDays]
GO
/****** Object:  Default [DF__Clients__PrintIn__2DF28A67]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__PrintIn__2DF28A67]  DEFAULT ((0)) FOR [PrintInoutSignOff]
GO
/****** Object:  Default [DF__Clients__PrintLo__0ECEE4C9]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__PrintLo__0ECEE4C9]  DEFAULT ((1)) FOR [PrintLocID]
GO
/****** Object:  Default [DF_Clients_LastModifiedDate]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO
/****** Object:  Default [DF_Division_DivisionID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Division] ADD  CONSTRAINT [DF_Division_DivisionID]  DEFAULT (newid()) FOR [DivisionID]
GO
/****** Object:  Default [DF__Document__Commen__3F3159AB]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF__Document__Commen__3F3159AB]  DEFAULT ('') FOR [Comment]
GO
/****** Object:  Default [DF__Document__Public__40257DE4]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF__Document__Public__40257DE4]  DEFAULT ((0)) FOR [Public]
GO
/****** Object:  Default [DF_DocumentType_DocumentTypeID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[DocumentType] ADD  CONSTRAINT [DF_DocumentType_DocumentTypeID]  DEFAULT (newid()) FOR [DocumentTypeID]
GO
/****** Object:  Default [DF_NoteType_NoteTypeID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[NoteType] ADD  CONSTRAINT [DF_NoteType_NoteTypeID]  DEFAULT (newid()) FOR [NoteTypeID]
GO
/****** Object:  Default [DF__notetype__Locati__7EF7A45C]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[NoteType] ADD  CONSTRAINT [DF__notetype__Locati__7EF7A45C]  DEFAULT ('') FOR [NoteType]
GO
/****** Object:  Default [DF_States_StateID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[States] ADD  CONSTRAINT [DF_States_StateID]  DEFAULT (newid()) FOR [StateID]
GO
/****** Object:  Default [DF__States__ModifyTa__245D67DE]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[States] ADD  DEFAULT ((0)) FOR [ModifyTax]
GO
/****** Object:  Default [DF__StateTaxa__Input__25518C17]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[StateTaxable] ADD  DEFAULT (getdate()) FOR [Inputdate]
GO
/****** Object:  Default [DF__StateTaxa__Input__2645B050]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[StateTaxable] ADD  DEFAULT ('') FOR [Inputby]
GO
/****** Object:  Default [DF_TerminationReason_TerminationReasonID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[TerminationReason] ADD  CONSTRAINT [DF_TerminationReason_TerminationReasonID]  DEFAULT (newid()) FOR [TerminationReasonID]
GO
/****** Object:  Default [DF__UserLog__LoginDa__618671AF]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[UserLog] ADD  CONSTRAINT [DF__UserLog__LoginDa__618671AF]  DEFAULT (getdate()) FOR [LoginDate]
GO
/****** Object:  Default [DF__Users__Displayna__0880433F]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Displayna__0880433F]  DEFAULT ('') FOR [Displayname]
GO
/****** Object:  Default [DF__Users__Lastname__09746778]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Lastname__09746778]  DEFAULT ('') FOR [Lastname]
GO
/****** Object:  Default [DF__Users__Firstname__0A688BB1]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Firstname__0A688BB1]  DEFAULT ('') FOR [Firstname]
GO
/****** Object:  Default [DF__Users__Password__0B5CAFEA]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Password__0B5CAFEA]  DEFAULT ('') FOR [Password]
GO
/****** Object:  Default [DF__Users__Email__0C50D423]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Email__0C50D423]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF__Users__PrinterDe__0D44F85C]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__PrinterDe__0D44F85C]  DEFAULT ('') FOR [PrinterDefault]
GO
/****** Object:  Default [DF__Users__PrinterCh__0E391C95]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__PrinterCh__0E391C95]  DEFAULT ('') FOR [PrinterCheck]
GO
/****** Object:  Default [DF__Users__DailyStor__13F1F5EB]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__DailyStor__13F1F5EB]  DEFAULT ((0)) FOR [DailyStoreNote]
GO
/****** Object:  Default [DF__Users__DailyClie__14E61A24]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__DailyClie__14E61A24]  DEFAULT ((0)) FOR [DailyClientNote]
GO
/****** Object:  Default [DF__Users__DailyVend__15DA3E5D]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__DailyVend__15DA3E5D]  DEFAULT ((0)) FOR [DailyVendorNote]
GO
/****** Object:  Default [DF__Users__Unschedul__16CE6296]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Unschedul__16CE6296]  DEFAULT ((0)) FOR [Unscheduled]
GO
/****** Object:  Default [DF__users__ActiveTyp__162F4418]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__users__ActiveTyp__162F4418]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF__users__Extension__41B98BF2]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__users__Extension__41B98BF2]  DEFAULT ('') FOR [Extension]
GO
/****** Object:  Default [DF__users__Sls__1D121728]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__users__Sls__1D121728]  DEFAULT ((0)) FOR [Sls]
GO
/****** Object:  Default [DF__Users__ProphesyL__5AD97420]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__ProphesyL__5AD97420]  DEFAULT ((0)) FOR [ProphesyLocal]
GO
/****** Object:  Default [DF__Users__Email2__5BCD9859]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Email2__5BCD9859]  DEFAULT ('') FOR [Email2]
GO
/****** Object:  Default [DF__Users__Inputdate__17C286CF]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Inputdate__17C286CF]  DEFAULT (getdate()) FOR [Inputdate]
GO
/****** Object:  Default [DF__Users__Inputby__18B6AB08]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Inputby__18B6AB08]  DEFAULT ('') FOR [Inputby]
GO
/****** Object:  Default [DF_VendorContacts_VendorID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorContacts] ADD  CONSTRAINT [DF_VendorContacts_VendorID]  DEFAULT (newid()) FOR [VendorContactID]
GO
/****** Object:  Default [DF_VendorContacts_LastModifiedDate]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorContacts] ADD  CONSTRAINT [DF_VendorContacts_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO
/****** Object:  Default [DF_VendorInsurance_VendorInsuranceID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorInsurance] ADD  CONSTRAINT [DF_VendorInsurance_VendorInsuranceID]  DEFAULT (newid()) FOR [VendorInsuranceID]
GO
/****** Object:  Default [DF_VendorInsuranceTypes_InsuranceTypeID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorInsuranceTypes] ADD  CONSTRAINT [DF_VendorInsuranceTypes_InsuranceTypeID]  DEFAULT (newid()) FOR [InsuranceTypeID]
GO
/****** Object:  Default [DF_Vendors_VendorID]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_VendorID]  DEFAULT (newid()) FOR [VendorID]
GO
/****** Object:  Default [DF_Vendors_LastModifiedDate]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO
/****** Object:  Default [DF__Vendors_A__Updat__56D4A469]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Vendors_Audit] ADD  CONSTRAINT [DF__Vendors_A__Updat__56D4A469]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_VendorsSearch_Dormant]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF_VendorsSearch_Dormant]  DEFAULT ((0)) FOR [Dormant]
GO
/****** Object:  Default [DF__VendorsSearc__NP__3123FCCD]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__NP__3123FCCD]  DEFAULT ((0)) FOR [NP]
GO
/****** Object:  Default [DF__VendorsSearc__SC__32182106]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__SC__32182106]  DEFAULT ((0)) FOR [SC]
GO
/****** Object:  Default [DF__VendorsSearc__LP__330C453F]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__LP__330C453F]  DEFAULT ((0)) FOR [LP]
GO
/****** Object:  Default [DF__VendorsSearc__SV__34006978]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__SV__34006978]  DEFAULT ((0)) FOR [SV]
GO
/****** Object:  ForeignKey [FK_ClientBillTo_Clients]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientBillTo]  WITH CHECK ADD  CONSTRAINT [FK_ClientBillTo_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientBillTo] CHECK CONSTRAINT [FK_ClientBillTo_Clients]
GO
/****** Object:  ForeignKey [FK_ClientContacts_Clients]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientContacts]  WITH CHECK ADD  CONSTRAINT [FK_ClientContacts_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientContacts] CHECK CONSTRAINT [FK_ClientContacts_Clients]
GO
/****** Object:  ForeignKey [FK_ClientDocuments_Clients]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ClientDocuments_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientDocuments] CHECK CONSTRAINT [FK_ClientDocuments_Clients]
GO
/****** Object:  ForeignKey [FK_ClientDocuments_Document]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ClientDocuments_Document] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[Document] ([DocumentID])
GO
ALTER TABLE [dbo].[ClientDocuments] CHECK CONSTRAINT [FK_ClientDocuments_Document]
GO
/****** Object:  ForeignKey [FK_ClientInstructions_Clients]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientInstructions]  WITH CHECK ADD  CONSTRAINT [FK_ClientInstructions_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientInstructions] CHECK CONSTRAINT [FK_ClientInstructions_Clients]
GO
/****** Object:  ForeignKey [FK_ClientInstructions_Division]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientInstructions]  WITH CHECK ADD  CONSTRAINT [FK_ClientInstructions_Division] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[ClientInstructions] CHECK CONSTRAINT [FK_ClientInstructions_Division]
GO
/****** Object:  ForeignKey [FK_ClientManagers_Clients]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientManagers]  WITH CHECK ADD  CONSTRAINT [FK_ClientManagers_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientManagers] CHECK CONSTRAINT [FK_ClientManagers_Clients]
GO
/****** Object:  ForeignKey [FK_ClientManagers_Division]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientManagers]  WITH CHECK ADD  CONSTRAINT [FK_ClientManagers_Division] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[ClientManagers] CHECK CONSTRAINT [FK_ClientManagers_Division]
GO
/****** Object:  ForeignKey [FK_ClientManagers_UserGroups]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientManagers]  WITH CHECK ADD  CONSTRAINT [FK_ClientManagers_UserGroups] FOREIGN KEY([Title])
REFERENCES [dbo].[UserGroups] ([UserGroupID])
GO
ALTER TABLE [dbo].[ClientManagers] CHECK CONSTRAINT [FK_ClientManagers_UserGroups]
GO
/****** Object:  ForeignKey [FK_ClientNotes_Clients]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientNotes]  WITH CHECK ADD  CONSTRAINT [FK_ClientNotes_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientNotes] CHECK CONSTRAINT [FK_ClientNotes_Clients]
GO
/****** Object:  ForeignKey [FK_ClientNotifications_Clients]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientNotifications]  WITH CHECK ADD  CONSTRAINT [FK_ClientNotifications_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientNotifications] CHECK CONSTRAINT [FK_ClientNotifications_Clients]
GO
/****** Object:  ForeignKey [FK_ClientNotifications_Division]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientNotifications]  WITH CHECK ADD  CONSTRAINT [FK_ClientNotifications_Division] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[ClientNotifications] CHECK CONSTRAINT [FK_ClientNotifications_Division]
GO
/****** Object:  ForeignKey [FK_ClientPrefix_Clients]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[ClientPrefix]  WITH CHECK ADD  CONSTRAINT [FK_ClientPrefix_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientPrefix] CHECK CONSTRAINT [FK_ClientPrefix_Clients]
GO
/****** Object:  ForeignKey [FK_Document_DocumentType]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_DocumentType] FOREIGN KEY([DocumentTypeID])
REFERENCES [dbo].[DocumentType] ([DocumentTypeID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_DocumentType]
GO
/****** Object:  ForeignKey [FK_Users_UserGroups]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserGroups] FOREIGN KEY([UserGroupID])
REFERENCES [dbo].[UserGroups] ([UserGroupID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserGroups]
GO
/****** Object:  ForeignKey [FK_VendorCategory_Vendors]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorCategory]  WITH CHECK ADD  CONSTRAINT [FK_VendorCategory_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorCategory] CHECK CONSTRAINT [FK_VendorCategory_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorContacts_Vendors]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorContacts]  WITH CHECK ADD  CONSTRAINT [FK_VendorContacts_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorContacts] CHECK CONSTRAINT [FK_VendorContacts_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorDocuments_Document]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorDocuments]  WITH CHECK ADD  CONSTRAINT [FK_VendorDocuments_Document] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[Document] ([DocumentID])
GO
ALTER TABLE [dbo].[VendorDocuments] CHECK CONSTRAINT [FK_VendorDocuments_Document]
GO
/****** Object:  ForeignKey [FK_VendorDocuments_Vendors]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorDocuments]  WITH CHECK ADD  CONSTRAINT [FK_VendorDocuments_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorDocuments] CHECK CONSTRAINT [FK_VendorDocuments_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorFeedbacks_Vendors]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorFeedbacks]  WITH CHECK ADD  CONSTRAINT [FK_VendorFeedbacks_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorFeedbacks] CHECK CONSTRAINT [FK_VendorFeedbacks_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorInsurance_Vendors]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorInsurance]  WITH CHECK ADD  CONSTRAINT [FK_VendorInsurance_Vendors] FOREIGN KEY([InsuranceType])
REFERENCES [dbo].[VendorInsuranceTypes] ([InsuranceTypeID])
GO
ALTER TABLE [dbo].[VendorInsurance] CHECK CONSTRAINT [FK_VendorInsurance_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorInsurance_Vendors1]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorInsurance]  WITH CHECK ADD  CONSTRAINT [FK_VendorInsurance_Vendors1] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorInsurance] CHECK CONSTRAINT [FK_VendorInsurance_Vendors1]
GO
/****** Object:  ForeignKey [FK_VendorNotes_NoteType]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorNotes]  WITH CHECK ADD  CONSTRAINT [FK_VendorNotes_NoteType] FOREIGN KEY([NoteTypeID])
REFERENCES [dbo].[NoteType] ([NoteTypeID])
GO
ALTER TABLE [dbo].[VendorNotes] CHECK CONSTRAINT [FK_VendorNotes_NoteType]
GO
/****** Object:  ForeignKey [FK_VendorNotes_Vendors]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorNotes]  WITH CHECK ADD  CONSTRAINT [FK_VendorNotes_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorNotes] CHECK CONSTRAINT [FK_VendorNotes_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorRemitTo_Vendors]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorRemitTo]  WITH CHECK ADD  CONSTRAINT [FK_VendorRemitTo_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorRemitTo] CHECK CONSTRAINT [FK_VendorRemitTo_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorShipTo_Vendors]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorShipTo]  WITH CHECK ADD  CONSTRAINT [FK_VendorShipTo_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorShipTo] CHECK CONSTRAINT [FK_VendorShipTo_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorTermination_Division]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorTermination]  WITH CHECK ADD  CONSTRAINT [FK_VendorTermination_Division] FOREIGN KEY([Division])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[VendorTermination] CHECK CONSTRAINT [FK_VendorTermination_Division]
GO
/****** Object:  ForeignKey [FK_VendorTermination_TerminationReason]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorTermination]  WITH CHECK ADD  CONSTRAINT [FK_VendorTermination_TerminationReason] FOREIGN KEY([TerminationReason])
REFERENCES [dbo].[TerminationReason] ([TerminationReasonID])
GO
ALTER TABLE [dbo].[VendorTermination] CHECK CONSTRAINT [FK_VendorTermination_TerminationReason]
GO
/****** Object:  ForeignKey [FK_VendorTermination_Vendors]    Script Date: 11/29/2012 18:54:46 ******/
ALTER TABLE [dbo].[VendorTermination]  WITH CHECK ADD  CONSTRAINT [FK_VendorTermination_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorTermination] CHECK CONSTRAINT [FK_VendorTermination_Vendors]
GO
