USE [TGF]
GO
/****** Object:  Table [dbo].[VendorGrades]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[VendorInsuranceTypes]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[VendorsSearch]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[ZipLongLat]    Script Date: 12/10/2012 20:10:54 ******/
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
print 'Processed 200 total records'
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
print 'Processed 300 total records'
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
print 'Processed 400 total records'
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
print 'Processed 500 total records'
/****** Object:  Table [dbo].[VendorTypes]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[UserLog]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[UserGroups]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[TerminationReason]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[TechnologyProvider]    Script Date: 12/10/2012 20:10:54 ******/
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
INSERT [dbo].[TechnologyProvider] ([TPID], [Description], [InputDate], [InputBy]) VALUES (N'b030dc0c-f241-4f3f-86f7-047f55b89441', N'OFFICE TRAX', NULL, N'Admin')
INSERT [dbo].[TechnologyProvider] ([TPID], [Description], [InputDate], [InputBy]) VALUES (N'2ef04158-7989-4db5-a0d3-0785e5580892', N'FM PILOT', NULL, N'Admin')
INSERT [dbo].[TechnologyProvider] ([TPID], [Description], [InputDate], [InputBy]) VALUES (N'4deada63-d948-4743-a0d5-4011ec18b262', N'FACILITY SOURCES', NULL, N'Admin')
INSERT [dbo].[TechnologyProvider] ([TPID], [Description], [InputDate], [InputBy]) VALUES (N'54bd1d61-c8c5-4878-87ae-4843f74831c2', N'ARIBA', NULL, N'Admin')
INSERT [dbo].[TechnologyProvider] ([TPID], [Description], [InputDate], [InputBy]) VALUES (N'1fc1283b-4ffb-44b1-872b-73db87906b4f', N'SERVICE CHANNEL', NULL, N'Admin')
INSERT [dbo].[TechnologyProvider] ([TPID], [Description], [InputDate], [InputBy]) VALUES (N'9a43f1ac-a5d0-4c1a-90c1-96d08b65f63d', N'BIG SKY', NULL, N'Admin')
INSERT [dbo].[TechnologyProvider] ([TPID], [Description], [InputDate], [InputBy]) VALUES (N'33b41288-6f6f-4903-8ead-c62c82bd19f4', N'BESTS', NULL, N'Admin')
/****** Object:  Table [dbo].[StateTaxable]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[States]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[PaymentTerms]    Script Date: 12/10/2012 20:10:54 ******/
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
INSERT [dbo].[PaymentTerms] ([PaymentTermsID], [PaymentTerms], [InputBy], [InputDate], [LastModifiedby], [LastModifiedDate]) VALUES (N'4a33d90e-f74b-424f-b7e2-30b81c9c1bc3', N'Term 1', N'Admin', NULL, NULL, NULL)
INSERT [dbo].[PaymentTerms] ([PaymentTermsID], [PaymentTerms], [InputBy], [InputDate], [LastModifiedby], [LastModifiedDate]) VALUES (N'bcad31df-4ca5-4138-a9bb-78cc32802e77', N'Term 2', N'Admin', NULL, NULL, NULL)
INSERT [dbo].[PaymentTerms] ([PaymentTermsID], [PaymentTerms], [InputBy], [InputDate], [LastModifiedby], [LastModifiedDate]) VALUES (N'89e2b93e-fa7c-425e-9453-bbcfe8241443', N'Term 3', N'Admin', NULL, NULL, NULL)
/****** Object:  Table [dbo].[NoteType]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[Vendors_Audit]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[Vendors]    Script Date: 12/10/2012 20:10:54 ******/
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
INSERT [dbo].[Vendors] ([VendorID], [Vendnum], [Company], [DBA], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Fax], [Mobile], [Emergency], [Contact], [Email], [AutoEmail], [Comment], [VendorType], [GLnum], [TaxID], [NetDays], [CheckTax1099], [PVA], [SignedContract], [CreditCardHolder], [W9], [PaymentTerms], [CashDiscount], [PricingYear], [Overallrating], [WebAccessUser], [WebAccessPwd], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate], [GradeID]) VALUES (N'82971b3a-083c-4f05-81d4-39a89f5f01dd', 5, N'c', N'c', N'aa', NULL, N'aa', N'HI', N'12345', N'USA', NULL, N'2323232323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x4E360B00 AS Date), N'Admin', CAST(0x7E360B00 AS Date), NULL)
/****** Object:  Table [dbo].[VendorRemitToTypes]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[ClientManagers_Audit]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[ClientNumOfDays]    Script Date: 12/10/2012 20:10:54 ******/
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
INSERT [dbo].[ClientNumOfDays] ([NumID], [Description], [InputDate], [InputBy]) VALUES (N'70b286b6-f8ae-4abb-939e-164d2205e889', N'20', NULL, N'Admin')
INSERT [dbo].[ClientNumOfDays] ([NumID], [Description], [InputDate], [InputBy]) VALUES (N'0a871368-9401-4ec9-8353-4d7b317023f5', N'60', NULL, N'Admin')
INSERT [dbo].[ClientNumOfDays] ([NumID], [Description], [InputDate], [InputBy]) VALUES (N'94acc5a0-fac1-4801-9797-69c895ac3a37', N'10', NULL, N'Admin')
INSERT [dbo].[ClientNumOfDays] ([NumID], [Description], [InputDate], [InputBy]) VALUES (N'3011d408-a797-408e-99e8-7c7131f108bc', N'30', NULL, N'Admin')
INSERT [dbo].[ClientNumOfDays] ([NumID], [Description], [InputDate], [InputBy]) VALUES (N'ae35fea6-633e-4376-a584-9d3573809896', N'90', NULL, N'Admin')
INSERT [dbo].[ClientNumOfDays] ([NumID], [Description], [InputDate], [InputBy]) VALUES (N'1a8b95b2-5378-4745-b5ee-da68843bc949', N'45', NULL, N'Admin')
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 12/10/2012 20:10:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELMAH_Error](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[Application] [nvarchar](60) NOT NULL,
	[Host] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Source] [nvarchar](60) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[StatusCode] [int] NOT NULL,
	[TimeUtc] [datetime] NOT NULL,
	[Sequence] [int] IDENTITY(1,1) NOT NULL,
	[AllXml] [ntext] NOT NULL,
 CONSTRAINT [PK_ELMAH_Error] PRIMARY KEY NONCLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ELMAH_Error_App_Time_Seq] ON [dbo].[ELMAH_Error] 
(
	[Application] ASC,
	[TimeUtc] DESC,
	[Sequence] DESC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[DocumentLocation]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[Division]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[DeliveryOptions]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[Clients]    Script Date: 12/10/2012 20:10:54 ******/
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
	[Country] [varchar](100) NULL,
	[Province] [varchar](100) NULL,
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
INSERT [dbo].[Clients] ([ClientID], [Clinum], [AcctPrefix], [Company], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [FirstName], [LastName], [Phone], [PhoneExt], [Fax], [Mobile], [TechnologyProvider], [ActiveType], [Email], [Website], [DNE], [Inputdate], [Inputby], [CreditHold], [PaymentTermDays], [AerialPricing], [InvDays], [PrintInoutSignOff], [PrintLocID], [Artist], [PC], [CareOff], [TravelLabor], [Title], [LocationNameType], [CreditLimit], [LastModifiedBy], [LastModifiedDate]) VALUES (N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', N'00001', NULL, N'ABC', NULL, NULL, N'NY', N'CA', NULL, N'USA', N'NY', N'A', N'B', N'2342342345', NULL, N'2134213412', N'2341243213', N'54bd1d61-c8c5-4878-87ae-4843f74831c2', 1, N'asdfasdf', NULL, 0.0000, CAST(0x0000A11500C92FD5 AS DateTime), N'Admin', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, N'2310', N'Admin', CAST(0x0000A12301429CC9 AS DateTime))
/****** Object:  Table [dbo].[ClientPrefix]    Script Date: 12/10/2012 20:10:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientPrefix](
	[ClientPrefixID] [uniqueidentifier] NOT NULL,
	[ClientID] [uniqueidentifier] NOT NULL,
	[Prefix] [varchar](20) NOT NULL,
	[BrandName] [varchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[Document]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[ClientNotifications]    Script Date: 12/10/2012 20:10:54 ******/
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
INSERT [dbo].[ClientNotifications] ([NotificationID], [ClientID], [DivisionID], [Email], [CalendarType], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'a79da603-90db-40c5-a2bb-291b69a6b9f8', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', N'51a9ab51-e456-4d8f-a71a-3acf24d97fc8', N'aaaa', N'Calendar Year', CAST(0x0000A11E0114AD4C AS DateTime), N'Admin', NULL, NULL)
INSERT [dbo].[ClientNotifications] ([NotificationID], [ClientID], [DivisionID], [Email], [CalendarType], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'4facab85-7527-48c9-9cf4-66b480cec8fc', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', N'adsf', N'Calendar Year', CAST(0x0000A11E0114AD4C AS DateTime), N'Admin', NULL, NULL)
INSERT [dbo].[ClientNotifications] ([NotificationID], [ClientID], [DivisionID], [Email], [CalendarType], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'48ed9a96-f92a-4773-afe9-74d2b48f8466', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', N'sdfgdf', N'Calendar Year', CAST(0x0000A11E013D7C50 AS DateTime), N'Admin', NULL, NULL)
INSERT [dbo].[ClientNotifications] ([NotificationID], [ClientID], [DivisionID], [Email], [CalendarType], [InputDate], [InputBy], [LastModifiedDate], [LastModifiedBy]) VALUES (N'7edaea4c-e4b7-432f-b571-dee7a9e71116', N'5a97eaa0-9df0-4e3a-a0c2-58cdbd65b6f8', N'76e52f4f-e083-4b95-8121-f8f6f15d8156', N'adsf', N'Fiscal Year', CAST(0x0000A11E0114AD4C AS DateTime), N'Admin', NULL, NULL)
/****** Object:  Table [dbo].[ClientNotes]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[ClientContacts]    Script Date: 12/10/2012 20:10:54 ******/
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
	[Country] [varchar](100) NULL,
	[Province] [varchar](100) NULL,
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
/****** Object:  Table [dbo].[ClientBillTo]    Script Date: 12/10/2012 20:10:53 ******/
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
/****** Object:  Table [dbo].[ClientManagers]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[ClientInstructions]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[VendorRemitTo]    Script Date: 12/10/2012 20:10:54 ******/
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
INSERT [dbo].[VendorRemitTo] ([VendorRemitToID], [VendorID], [Company], [RemitType], [Address1], [Address2], [City], [State], [Zip], [Country], [Province], [Phone], [PhoneExt], [Contact], [Email], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'00000000-0000-0000-0000-000000000000', N'82971b3a-083c-4f05-81d4-39a89f5f01dd', N'r1', NULL, N'r1', N'r1', N'r1', NULL, NULL, NULL, N'NY', NULL, NULL, NULL, NULL, NULL, NULL, N'Admin', CAST(0x7E360B00 AS Date))
/****** Object:  Table [dbo].[VendorNotes]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 12/10/2012 20:10:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELMAH_LogError]
(
    @ErrorId UNIQUEIDENTIFIER,
    @Application NVARCHAR(60),
    @Host NVARCHAR(30),
    @Type NVARCHAR(100),
    @Source NVARCHAR(60),
    @Message NVARCHAR(500),
    @User NVARCHAR(50),
    @AllXml NTEXT,
    @StatusCode INT,
    @TimeUtc DATETIME
)
AS

    SET NOCOUNT ON

    INSERT
    INTO
        [ELMAH_Error]
        (
            [ErrorId],
            [Application],
            [Host],
            [Type],
            [Source],
            [Message],
            [User],
            [AllXml],
            [StatusCode],
            [TimeUtc]
        )
    VALUES
        (
            @ErrorId,
            @Application,
            @Host,
            @Type,
            @Source,
            @Message,
            @User,
            @AllXml,
            @StatusCode,
            @TimeUtc
        )
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 12/10/2012 20:10:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELMAH_GetErrorXml]
(
    @Application NVARCHAR(60),
    @ErrorId UNIQUEIDENTIFIER
)
AS

    SET NOCOUNT ON

    SELECT 
        [AllXml]
    FROM 
        [ELMAH_Error]
    WHERE
        [ErrorId] = @ErrorId
    AND
        [Application] = @Application
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 12/10/2012 20:10:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ELMAH_GetErrorsXml]
(
    @Application NVARCHAR(60),
    @PageIndex INT = 0,
    @PageSize INT = 15,
    @TotalCount INT OUTPUT
)
AS 

    SET NOCOUNT ON

    DECLARE @FirstTimeUTC DATETIME
    DECLARE @FirstSequence INT
    DECLARE @StartRow INT
    DECLARE @StartRowIndex INT

    SELECT 
        @TotalCount = COUNT(1) 
    FROM 
        [ELMAH_Error]
    WHERE 
        [Application] = @Application

    -- Get the ID of the first error for the requested page

    SET @StartRowIndex = @PageIndex * @PageSize + 1

    IF @StartRowIndex <= @TotalCount
    BEGIN

        SET ROWCOUNT @StartRowIndex

        SELECT  
            @FirstTimeUTC = [TimeUtc],
            @FirstSequence = [Sequence]
        FROM 
            [ELMAH_Error]
        WHERE   
            [Application] = @Application
        ORDER BY 
            [TimeUtc] DESC, 
            [Sequence] DESC

    END
    ELSE
    BEGIN

        SET @PageSize = 0

    END

    -- Now set the row count to the requested page size and get
    -- all records below it for the pertaining application.

    SET ROWCOUNT @PageSize

    SELECT 
        errorId     = [ErrorId], 
        application = [Application],
        host        = [Host], 
        type        = [Type],
        source      = [Source],
        message     = [Message],
        [user]      = [User],
        statusCode  = [StatusCode], 
        time        = CONVERT(VARCHAR(50), [TimeUtc], 126) + 'Z'
    FROM 
        [ELMAH_Error] error
    WHERE
        [Application] = @Application
    AND
        [TimeUtc] <= @FirstTimeUTC
    AND 
        [Sequence] <= @FirstSequence
    ORDER BY
        [TimeUtc] DESC, 
        [Sequence] DESC
    FOR
        XML AUTO
GO
/****** Object:  Table [dbo].[VendorTermination]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[VendorShipTo]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[VendorInsurance]    Script Date: 12/10/2012 20:10:54 ******/
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
INSERT [dbo].[VendorInsurance] ([VendorInsuranceID], [VendorID], [InsuranceType], [InsuranceName], [Policynum], [ExpiryDate], [AdditionalInsured], [Not_onFile], [InsuranceNotRequired], [NotRequiredReason], [InputBy], [InputDate], [LastModifiedBy], [LastModifiedDate]) VALUES (N'f9936d8c-7127-4c86-9be2-e40c0fbf53ad', N'82971b3a-083c-4f05-81d4-39a89f5f01dd', N'50bd91af-a400-46f8-a0c5-9d37784ee7bf', N'HARTFORD UNDERWRITERS INSURANCE', N'14085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[VendorContacts]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[VendorCategory]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[VendorFeedbacks]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[VendorDocuments]    Script Date: 12/10/2012 20:10:54 ******/
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
/****** Object:  Table [dbo].[ClientDocuments]    Script Date: 12/10/2012 20:10:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDocuments](
	[ClientDocumentID] [uniqueidentifier] NOT NULL,
	[DocumentID] [uniqueidentifier] NOT NULL,
	[DivisionID] [uniqueidentifier] NULL,
	[ClientID] [uniqueidentifier] NOT NULL,
	[OrderAttachment] [bit] NULL,
	[Public] [bit] NULL,
	[Comments] [text] NULL,
	[InputBy] [nvarchar](50) NOT NULL,
	[InputDate] [datetime] NOT NULL,
 CONSTRAINT [PK__ClientDocs] PRIMARY KEY CLUSTERED 
(
	[ClientDocumentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Default [DF_ClientBillTo_ClientBillToID]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF_ClientBillTo_ClientBillToID]  DEFAULT (newid()) FOR [ClientBillToID]
GO
/****** Object:  Default [DF__ClientBil__Clinu__11AA861D]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Clinu__11AA861D]  DEFAULT ('') FOR [Clinum]
GO
/****** Object:  Default [DF__ClientBil__Divis__129EAA56]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Divis__129EAA56]  DEFAULT ('') FOR [Division]
GO
/****** Object:  Default [DF__ClientBil__BillC__1392CE8F]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillC__1392CE8F]  DEFAULT ('') FOR [BillCompany]
GO
/****** Object:  Default [DF__ClientBil__BillA__1486F2C8]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillA__1486F2C8]  DEFAULT ('') FOR [BillAddress1]
GO
/****** Object:  Default [DF__ClientBil__BillA__157B1701]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillA__157B1701]  DEFAULT ('') FOR [BillAddress2]
GO
/****** Object:  Default [DF__ClientBil__BillC__166F3B3A]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillC__166F3B3A]  DEFAULT ('') FOR [BillCity]
GO
/****** Object:  Default [DF__ClientBil__BillS__17635F73]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillS__17635F73]  DEFAULT ('') FOR [BillState]
GO
/****** Object:  Default [DF__ClientBil__BillZ__185783AC]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillZ__185783AC]  DEFAULT ('') FOR [BillZip]
GO
/****** Object:  Default [DF__ClientBil__BillP__194BA7E5]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillP__194BA7E5]  DEFAULT ('') FOR [BillPhone]
GO
/****** Object:  Default [DF__ClientBil__BillF__1A3FCC1E]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillF__1A3FCC1E]  DEFAULT ('') FOR [BillFax]
GO
/****** Object:  Default [DF__ClientBil__BillC__1B33F057]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__BillC__1B33F057]  DEFAULT ('') FOR [BillContact]
GO
/****** Object:  Default [DF_ClientBillTo_BillEmail]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF_ClientBillTo_BillEmail]  DEFAULT ('') FOR [BillEmail]
GO
/****** Object:  Default [DF__ClientBil__Input__1C281490]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Input__1C281490]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientBil__Input__1D1C38C9]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Input__1D1C38C9]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF__ClientBil__Activ__499AA4DC]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo] ADD  CONSTRAINT [DF__ClientBil__Activ__499AA4DC]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF__ClientCon__Clinu__4D005615]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Clinu__4D005615]  DEFAULT ('') FOR [Clinum]
GO
/****** Object:  Default [DF__ClientCon__Lastn__4DF47A4E]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Lastn__4DF47A4E]  DEFAULT ('') FOR [Lastname]
GO
/****** Object:  Default [DF__ClientCon__First__4EE89E87]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__First__4EE89E87]  DEFAULT ('') FOR [Firstname]
GO
/****** Object:  Default [DF__ClientCon__Initi__4FDCC2C0]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Initi__4FDCC2C0]  DEFAULT ('') FOR [Initial]
GO
/****** Object:  Default [DF__ClientCon__Addre__50D0E6F9]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Addre__50D0E6F9]  DEFAULT ('') FOR [Address1]
GO
/****** Object:  Default [DF__ClientCon__Addre__51C50B32]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Addre__51C50B32]  DEFAULT ('') FOR [Address2]
GO
/****** Object:  Default [DF__ClientCont__City__52B92F6B]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCont__City__52B92F6B]  DEFAULT ('') FOR [City]
GO
/****** Object:  Default [DF__ClientCon__State__53AD53A4]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__State__53AD53A4]  DEFAULT ('') FOR [State]
GO
/****** Object:  Default [DF__ClientConta__Zip__54A177DD]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientConta__Zip__54A177DD]  DEFAULT ('') FOR [Zip]
GO
/****** Object:  Default [DF__ClientCon__Phone__55959C16]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Phone__55959C16]  DEFAULT ('') FOR [Phone]
GO
/****** Object:  Default [DF__ClientCon__Phone__5689C04F]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Phone__5689C04F]  DEFAULT ('') FOR [PhoneExt]
GO
/****** Object:  Default [DF__ClientConta__Fax__577DE488]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientConta__Fax__577DE488]  DEFAULT ('') FOR [Fax]
GO
/****** Object:  Default [DF__ClientCon__Pager__587208C1]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Pager__587208C1]  DEFAULT ('') FOR [Pager]
GO
/****** Object:  Default [DF__ClientCon__Mobil__59662CFA]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Mobil__59662CFA]  DEFAULT ('') FOR [Mobile]
GO
/****** Object:  Default [DF__ClientCon__Title__5A5A5133]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Title__5A5A5133]  DEFAULT ('') FOR [Title]
GO
/****** Object:  Default [DF__ClientCon__Salut__5B4E756C]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Salut__5B4E756C]  DEFAULT ('') FOR [Salutation]
GO
/****** Object:  Default [DF__ClientCon__Conta__5C4299A5]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Conta__5C4299A5]  DEFAULT ('') FOR [ContactType]
GO
/****** Object:  Default [DF__ClientCon__Email__5D36BDDE]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Email__5D36BDDE]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF__ClientCon__Websi__5E2AE217]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Websi__5E2AE217]  DEFAULT ('') FOR [Website]
GO
/****** Object:  Default [DF__ClientCon__Refer__5F1F0650]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Refer__5F1F0650]  DEFAULT ('') FOR [ReferBy]
GO
/****** Object:  Default [DF__ClientCon__Activ__60132A89]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Activ__60132A89]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF__ClientCon__Input__61074EC2]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Input__61074EC2]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientCon__Input__61FB72FB]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts] ADD  CONSTRAINT [DF__ClientCon__Input__61FB72FB]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF_ClientInstructions_ClientInstructionsID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF_ClientInstructions_ClientInstructionsID]  DEFAULT (newid()) FOR [ClientInstructionsID]
GO
/****** Object:  Default [DF__ClientIns__Clinu__4FBCC72F]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__ClientIns__Clinu__4FBCC72F]  DEFAULT ('') FOR [Clinum]
GO
/****** Object:  Default [DF__ClientInst__Type__50B0EB68]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__ClientInst__Type__50B0EB68]  DEFAULT ('') FOR [InstructionType]
GO
/****** Object:  Default [DF_ClientInstructions_Division]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF_ClientInstructions_Division]  DEFAULT ('') FOR [DivisionID]
GO
/****** Object:  Default [DF__ClientIns__Input__51A50FA1]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__ClientIns__Input__51A50FA1]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientIns__Input__529933DA]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__ClientIns__Input__529933DA]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF__clientins__Activ__34949AFE]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientInstructions] ADD  CONSTRAINT [DF__clientins__Activ__34949AFE]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF__ClientMan__Input__76577163]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientManagers] ADD  CONSTRAINT [DF__ClientMan__Input__76577163]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientMan__Input__774B959C]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientManagers] ADD  CONSTRAINT [DF__ClientMan__Input__774B959C]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF__ClientMan__Updat__5729AA24]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientManagers_Audit] ADD  CONSTRAINT [DF__ClientMan__Updat__5729AA24]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF__ClientNot__NoteT__7889D298]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF__ClientNot__NoteT__7889D298]  DEFAULT ('') FOR [NoteType]
GO
/****** Object:  Default [DF_ClientNotes_Collection]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF_ClientNotes_Collection]  DEFAULT ((0)) FOR [Collection]
GO
/****** Object:  Default [DF__ClientNot__Input__797DF6D1]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF__ClientNot__Input__797DF6D1]  DEFAULT ('') FOR [InputStatus]
GO
/****** Object:  Default [DF__ClientNot__Input__7A721B0A]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF__ClientNot__Input__7A721B0A]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF__ClientNot__Input__7B663F43]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientNotes] ADD  CONSTRAINT [DF__ClientNot__Input__7B663F43]  DEFAULT ('') FOR [InputBy]
GO
/****** Object:  Default [DF_ClientNotifications_NotificationID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientNotifications] ADD  CONSTRAINT [DF_ClientNotifications_NotificationID]  DEFAULT (newid()) FOR [NotificationID]
GO
/****** Object:  Default [DF_ClientNumOfDays_NumID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientNumOfDays] ADD  CONSTRAINT [DF_ClientNumOfDays_NumID]  DEFAULT (newid()) FOR [NumID]
GO
/****** Object:  Default [DF_ClientPrefix_ClientPrefixID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientPrefix] ADD  CONSTRAINT [DF_ClientPrefix_ClientPrefixID]  DEFAULT (newid()) FOR [ClientPrefixID]
GO
/****** Object:  Default [DF__ClientPre__Input__7DEDA633]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientPrefix] ADD  CONSTRAINT [DF__ClientPre__Input__7DEDA633]  DEFAULT (getdate()) FOR [InputDate]
GO
/****** Object:  Default [DF_Clients_ClientID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_ClientID]  DEFAULT (newid()) FOR [ClientID]
GO
/****** Object:  Default [DF__Clients__Clinum__5AEE82B9]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Clinum__5AEE82B9]  DEFAULT ('') FOR [Clinum]
GO
/****** Object:  Default [DF_Clients_AcctPrefix]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_AcctPrefix]  DEFAULT ('') FOR [AcctPrefix]
GO
/****** Object:  Default [DF__Clients__Company__5BE2A6F2]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Company__5BE2A6F2]  DEFAULT ('') FOR [Company]
GO
/****** Object:  Default [DF__Clients__Address__5CD6CB2B]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Address__5CD6CB2B]  DEFAULT ('') FOR [Address1]
GO
/****** Object:  Default [DF__Clients__Address__5DCAEF64]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Address__5DCAEF64]  DEFAULT ('') FOR [Address2]
GO
/****** Object:  Default [DF__Clients__City__5EBF139D]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__City__5EBF139D]  DEFAULT ('') FOR [City]
GO
/****** Object:  Default [DF__Clients__State__5FB337D6]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__State__5FB337D6]  DEFAULT ('') FOR [State]
GO
/****** Object:  Default [DF__Clients__Zip__60A75C0F]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Zip__60A75C0F]  DEFAULT ('') FOR [Zip]
GO
/****** Object:  Default [DF__Clients__firstname__619B8048]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__firstname__619B8048]  DEFAULT ('') FOR [FirstName]
GO
/****** Object:  Default [DF__Clients__lastname__619B8048]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__lastname__619B8048]  DEFAULT ('') FOR [LastName]
GO
/****** Object:  Default [DF__Clients__Phone__628FA481]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Phone__628FA481]  DEFAULT ('') FOR [Phone]
GO
/****** Object:  Default [DF__Clients__Fax__6383C8BA]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Fax__6383C8BA]  DEFAULT ('') FOR [Fax]
GO
/****** Object:  Default [DF_Clients_Provider]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Provider]  DEFAULT ('') FOR [TechnologyProvider]
GO
/****** Object:  Default [DF__Clients__ActiveT__6477ECF3]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__ActiveT__6477ECF3]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF_Clients_Email]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Email]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF_Clients_Website]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_Website]  DEFAULT ('') FOR [Website]
GO
/****** Object:  Default [DF_Clients_DNE]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_DNE]  DEFAULT ((0)) FOR [DNE]
GO
/****** Object:  Default [DF__Clients__Inputda__68487DD7]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Inputda__68487DD7]  DEFAULT (getdate()) FOR [Inputdate]
GO
/****** Object:  Default [DF__Clients__Inputby__693CA210]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__Inputby__693CA210]  DEFAULT ('') FOR [Inputby]
GO
/****** Object:  Default [DF_Clients_TermDays]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_TermDays]  DEFAULT ((30)) FOR [PaymentTermDays]
GO
/****** Object:  Default [DF_Clients_InvDays]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_InvDays]  DEFAULT ((0)) FOR [InvDays]
GO
/****** Object:  Default [DF__Clients__PrintIn__2DF28A67]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__PrintIn__2DF28A67]  DEFAULT ((0)) FOR [PrintInoutSignOff]
GO
/****** Object:  Default [DF__Clients__PrintLo__0ECEE4C9]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF__Clients__PrintLo__0ECEE4C9]  DEFAULT ((1)) FOR [PrintLocID]
GO
/****** Object:  Default [DF_Clients_LastModifiedDate]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [DF_Clients_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO
/****** Object:  Default [DF_Division_DivisionID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Division] ADD  CONSTRAINT [DF_Division_DivisionID]  DEFAULT (newid()) FOR [DivisionID]
GO
/****** Object:  Default [DF__Document__Commen__3F3159AB]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF__Document__Commen__3F3159AB]  DEFAULT ('') FOR [Comment]
GO
/****** Object:  Default [DF__Document__Public__40257DE4]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF__Document__Public__40257DE4]  DEFAULT ((0)) FOR [Public]
GO
/****** Object:  Default [DF_DocumentType_DocumentTypeID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[DocumentType] ADD  CONSTRAINT [DF_DocumentType_DocumentTypeID]  DEFAULT (newid()) FOR [DocumentTypeID]
GO
/****** Object:  Default [DF_ELMAH_Error_ErrorId]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ELMAH_Error] ADD  CONSTRAINT [DF_ELMAH_Error_ErrorId]  DEFAULT (newid()) FOR [ErrorId]
GO
/****** Object:  Default [DF_NoteType_NoteTypeID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[NoteType] ADD  CONSTRAINT [DF_NoteType_NoteTypeID]  DEFAULT (newid()) FOR [NoteTypeID]
GO
/****** Object:  Default [DF__notetype__Locati__7EF7A45C]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[NoteType] ADD  CONSTRAINT [DF__notetype__Locati__7EF7A45C]  DEFAULT ('') FOR [NoteType]
GO
/****** Object:  Default [DF_PaymentTerms_PaymentTermsID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[PaymentTerms] ADD  CONSTRAINT [DF_PaymentTerms_PaymentTermsID]  DEFAULT (newid()) FOR [PaymentTermsID]
GO
/****** Object:  Default [DF_States_StateID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[States] ADD  CONSTRAINT [DF_States_StateID]  DEFAULT (newid()) FOR [StateID]
GO
/****** Object:  Default [DF__States__ModifyTa__2645B050]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[States] ADD  DEFAULT ((0)) FOR [ModifyTax]
GO
/****** Object:  Default [DF__StateTaxa__Input__2739D489]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[StateTaxable] ADD  DEFAULT (getdate()) FOR [Inputdate]
GO
/****** Object:  Default [DF__StateTaxa__Input__282DF8C2]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[StateTaxable] ADD  DEFAULT ('') FOR [Inputby]
GO
/****** Object:  Default [DF_TechnologyProvider_TPID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[TechnologyProvider] ADD  CONSTRAINT [DF_TechnologyProvider_TPID]  DEFAULT (newid()) FOR [TPID]
GO
/****** Object:  Default [DF_TerminationReason_TerminationReasonID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[TerminationReason] ADD  CONSTRAINT [DF_TerminationReason_TerminationReasonID]  DEFAULT (newid()) FOR [TerminationReasonID]
GO
/****** Object:  Default [DF__UserLog__LoginDa__618671AF]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[UserLog] ADD  CONSTRAINT [DF__UserLog__LoginDa__618671AF]  DEFAULT (getdate()) FOR [LoginDate]
GO
/****** Object:  Default [DF__Users__Displayna__0880433F]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Displayna__0880433F]  DEFAULT ('') FOR [Displayname]
GO
/****** Object:  Default [DF__Users__Lastname__09746778]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Lastname__09746778]  DEFAULT ('') FOR [Lastname]
GO
/****** Object:  Default [DF__Users__Firstname__0A688BB1]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Firstname__0A688BB1]  DEFAULT ('') FOR [Firstname]
GO
/****** Object:  Default [DF__Users__Password__0B5CAFEA]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Password__0B5CAFEA]  DEFAULT ('') FOR [Password]
GO
/****** Object:  Default [DF__Users__Email__0C50D423]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Email__0C50D423]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF__Users__PrinterDe__0D44F85C]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__PrinterDe__0D44F85C]  DEFAULT ('') FOR [PrinterDefault]
GO
/****** Object:  Default [DF__Users__PrinterCh__0E391C95]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__PrinterCh__0E391C95]  DEFAULT ('') FOR [PrinterCheck]
GO
/****** Object:  Default [DF__Users__DailyStor__13F1F5EB]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__DailyStor__13F1F5EB]  DEFAULT ((0)) FOR [DailyStoreNote]
GO
/****** Object:  Default [DF__Users__DailyClie__14E61A24]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__DailyClie__14E61A24]  DEFAULT ((0)) FOR [DailyClientNote]
GO
/****** Object:  Default [DF__Users__DailyVend__15DA3E5D]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__DailyVend__15DA3E5D]  DEFAULT ((0)) FOR [DailyVendorNote]
GO
/****** Object:  Default [DF__Users__Unschedul__16CE6296]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Unschedul__16CE6296]  DEFAULT ((0)) FOR [Unscheduled]
GO
/****** Object:  Default [DF__users__ActiveTyp__162F4418]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__users__ActiveTyp__162F4418]  DEFAULT ((1)) FOR [ActiveType]
GO
/****** Object:  Default [DF__users__Extension__41B98BF2]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__users__Extension__41B98BF2]  DEFAULT ('') FOR [Extension]
GO
/****** Object:  Default [DF__users__Sls__1D121728]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__users__Sls__1D121728]  DEFAULT ((0)) FOR [Sls]
GO
/****** Object:  Default [DF__Users__ProphesyL__5AD97420]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__ProphesyL__5AD97420]  DEFAULT ((0)) FOR [ProphesyLocal]
GO
/****** Object:  Default [DF__Users__Email2__5BCD9859]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Email2__5BCD9859]  DEFAULT ('') FOR [Email2]
GO
/****** Object:  Default [DF__Users__Inputdate__17C286CF]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Inputdate__17C286CF]  DEFAULT (getdate()) FOR [Inputdate]
GO
/****** Object:  Default [DF__Users__Inputby__18B6AB08]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Inputby__18B6AB08]  DEFAULT ('') FOR [Inputby]
GO
/****** Object:  Default [DF_VendorContacts_VendorID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorContacts] ADD  CONSTRAINT [DF_VendorContacts_VendorID]  DEFAULT (newid()) FOR [VendorContactID]
GO
/****** Object:  Default [DF_VendorContacts_LastModifiedDate]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorContacts] ADD  CONSTRAINT [DF_VendorContacts_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO
/****** Object:  Default [DF_VendorInsurance_VendorInsuranceID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorInsurance] ADD  CONSTRAINT [DF_VendorInsurance_VendorInsuranceID]  DEFAULT (newid()) FOR [VendorInsuranceID]
GO
/****** Object:  Default [DF_VendorInsuranceTypes_InsuranceTypeID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorInsuranceTypes] ADD  CONSTRAINT [DF_VendorInsuranceTypes_InsuranceTypeID]  DEFAULT (newid()) FOR [InsuranceTypeID]
GO
/****** Object:  Default [DF_Vendors_VendorID]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_VendorID]  DEFAULT (newid()) FOR [VendorID]
GO
/****** Object:  Default [DF_Vendors_LastModifiedDate]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Vendors] ADD  CONSTRAINT [DF_Vendors_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO
/****** Object:  Default [DF__Vendors_A__Updat__56D4A469]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Vendors_Audit] ADD  CONSTRAINT [DF__Vendors_A__Updat__56D4A469]  DEFAULT (getdate()) FOR [UpdateDate]
GO
/****** Object:  Default [DF_VendorsSearch_Dormant]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF_VendorsSearch_Dormant]  DEFAULT ((0)) FOR [Dormant]
GO
/****** Object:  Default [DF__VendorsSearc__NP__3123FCCD]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__NP__3123FCCD]  DEFAULT ((0)) FOR [NP]
GO
/****** Object:  Default [DF__VendorsSearc__SC__32182106]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__SC__32182106]  DEFAULT ((0)) FOR [SC]
GO
/****** Object:  Default [DF__VendorsSearc__LP__330C453F]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__LP__330C453F]  DEFAULT ((0)) FOR [LP]
GO
/****** Object:  Default [DF__VendorsSearc__SV__34006978]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorsSearch] ADD  CONSTRAINT [DF__VendorsSearc__SV__34006978]  DEFAULT ((0)) FOR [SV]
GO
/****** Object:  ForeignKey [FK_ClientBillTo_Clients]    Script Date: 12/10/2012 20:10:53 ******/
ALTER TABLE [dbo].[ClientBillTo]  WITH CHECK ADD  CONSTRAINT [FK_ClientBillTo_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientBillTo] CHECK CONSTRAINT [FK_ClientBillTo_Clients]
GO
/****** Object:  ForeignKey [FK_ClientContacts_Clients]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientContacts]  WITH CHECK ADD  CONSTRAINT [FK_ClientContacts_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientContacts] CHECK CONSTRAINT [FK_ClientContacts_Clients]
GO
/****** Object:  ForeignKey [FK_ClientDocuments_Clients]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ClientDocuments_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientDocuments] CHECK CONSTRAINT [FK_ClientDocuments_Clients]
GO
/****** Object:  ForeignKey [FK_ClientDocuments_Division]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ClientDocuments_Division] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[ClientDocuments] CHECK CONSTRAINT [FK_ClientDocuments_Division]
GO
/****** Object:  ForeignKey [FK_ClientDocuments_Document]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientDocuments]  WITH CHECK ADD  CONSTRAINT [FK_ClientDocuments_Document] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[Document] ([DocumentID])
GO
ALTER TABLE [dbo].[ClientDocuments] CHECK CONSTRAINT [FK_ClientDocuments_Document]
GO
/****** Object:  ForeignKey [FK_ClientInstructions_Clients]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientInstructions]  WITH CHECK ADD  CONSTRAINT [FK_ClientInstructions_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientInstructions] CHECK CONSTRAINT [FK_ClientInstructions_Clients]
GO
/****** Object:  ForeignKey [FK_ClientInstructions_Division]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientInstructions]  WITH CHECK ADD  CONSTRAINT [FK_ClientInstructions_Division] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[ClientInstructions] CHECK CONSTRAINT [FK_ClientInstructions_Division]
GO
/****** Object:  ForeignKey [FK_ClientManagers_Clients]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientManagers]  WITH CHECK ADD  CONSTRAINT [FK_ClientManagers_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientManagers] CHECK CONSTRAINT [FK_ClientManagers_Clients]
GO
/****** Object:  ForeignKey [FK_ClientManagers_Division]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientManagers]  WITH CHECK ADD  CONSTRAINT [FK_ClientManagers_Division] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[ClientManagers] CHECK CONSTRAINT [FK_ClientManagers_Division]
GO
/****** Object:  ForeignKey [FK_ClientManagers_UserGroups]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientManagers]  WITH CHECK ADD  CONSTRAINT [FK_ClientManagers_UserGroups] FOREIGN KEY([Title])
REFERENCES [dbo].[UserGroups] ([UserGroupID])
GO
ALTER TABLE [dbo].[ClientManagers] CHECK CONSTRAINT [FK_ClientManagers_UserGroups]
GO
/****** Object:  ForeignKey [FK_ClientNotes_Clients]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientNotes]  WITH CHECK ADD  CONSTRAINT [FK_ClientNotes_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientNotes] CHECK CONSTRAINT [FK_ClientNotes_Clients]
GO
/****** Object:  ForeignKey [FK_ClientNotifications_Clients]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientNotifications]  WITH CHECK ADD  CONSTRAINT [FK_ClientNotifications_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientNotifications] CHECK CONSTRAINT [FK_ClientNotifications_Clients]
GO
/****** Object:  ForeignKey [FK_ClientNotifications_Division]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientNotifications]  WITH CHECK ADD  CONSTRAINT [FK_ClientNotifications_Division] FOREIGN KEY([DivisionID])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[ClientNotifications] CHECK CONSTRAINT [FK_ClientNotifications_Division]
GO
/****** Object:  ForeignKey [FK_ClientPrefix_Clients]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[ClientPrefix]  WITH CHECK ADD  CONSTRAINT [FK_ClientPrefix_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[ClientPrefix] CHECK CONSTRAINT [FK_ClientPrefix_Clients]
GO
/****** Object:  ForeignKey [FK_Document_DocumentType]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_DocumentType] FOREIGN KEY([DocumentTypeID])
REFERENCES [dbo].[DocumentType] ([DocumentTypeID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_DocumentType]
GO
/****** Object:  ForeignKey [FK_Users_UserGroups]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserGroups] FOREIGN KEY([UserGroupID])
REFERENCES [dbo].[UserGroups] ([UserGroupID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserGroups]
GO
/****** Object:  ForeignKey [FK_VendorCategory_Vendors]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorCategory]  WITH CHECK ADD  CONSTRAINT [FK_VendorCategory_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorCategory] CHECK CONSTRAINT [FK_VendorCategory_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorContacts_Vendors]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorContacts]  WITH CHECK ADD  CONSTRAINT [FK_VendorContacts_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorContacts] CHECK CONSTRAINT [FK_VendorContacts_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorDocuments_Document]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorDocuments]  WITH CHECK ADD  CONSTRAINT [FK_VendorDocuments_Document] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[Document] ([DocumentID])
GO
ALTER TABLE [dbo].[VendorDocuments] CHECK CONSTRAINT [FK_VendorDocuments_Document]
GO
/****** Object:  ForeignKey [FK_VendorDocuments_Vendors]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorDocuments]  WITH CHECK ADD  CONSTRAINT [FK_VendorDocuments_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorDocuments] CHECK CONSTRAINT [FK_VendorDocuments_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorFeedbacks_Vendors]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorFeedbacks]  WITH CHECK ADD  CONSTRAINT [FK_VendorFeedbacks_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorFeedbacks] CHECK CONSTRAINT [FK_VendorFeedbacks_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorInsurance_Vendors]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorInsurance]  WITH CHECK ADD  CONSTRAINT [FK_VendorInsurance_Vendors] FOREIGN KEY([InsuranceType])
REFERENCES [dbo].[VendorInsuranceTypes] ([InsuranceTypeID])
GO
ALTER TABLE [dbo].[VendorInsurance] CHECK CONSTRAINT [FK_VendorInsurance_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorInsurance_Vendors1]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorInsurance]  WITH CHECK ADD  CONSTRAINT [FK_VendorInsurance_Vendors1] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorInsurance] CHECK CONSTRAINT [FK_VendorInsurance_Vendors1]
GO
/****** Object:  ForeignKey [FK_VendorNotes_NoteType]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorNotes]  WITH CHECK ADD  CONSTRAINT [FK_VendorNotes_NoteType] FOREIGN KEY([NoteTypeID])
REFERENCES [dbo].[NoteType] ([NoteTypeID])
GO
ALTER TABLE [dbo].[VendorNotes] CHECK CONSTRAINT [FK_VendorNotes_NoteType]
GO
/****** Object:  ForeignKey [FK_VendorNotes_Vendors]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorNotes]  WITH CHECK ADD  CONSTRAINT [FK_VendorNotes_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorNotes] CHECK CONSTRAINT [FK_VendorNotes_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorRemitTo_Vendors]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorRemitTo]  WITH CHECK ADD  CONSTRAINT [FK_VendorRemitTo_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorRemitTo] CHECK CONSTRAINT [FK_VendorRemitTo_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorShipTo_Vendors]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorShipTo]  WITH CHECK ADD  CONSTRAINT [FK_VendorShipTo_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorShipTo] CHECK CONSTRAINT [FK_VendorShipTo_Vendors]
GO
/****** Object:  ForeignKey [FK_VendorTermination_Division]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorTermination]  WITH CHECK ADD  CONSTRAINT [FK_VendorTermination_Division] FOREIGN KEY([Division])
REFERENCES [dbo].[Division] ([DivisionID])
GO
ALTER TABLE [dbo].[VendorTermination] CHECK CONSTRAINT [FK_VendorTermination_Division]
GO
/****** Object:  ForeignKey [FK_VendorTermination_TerminationReason]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorTermination]  WITH CHECK ADD  CONSTRAINT [FK_VendorTermination_TerminationReason] FOREIGN KEY([TerminationReason])
REFERENCES [dbo].[TerminationReason] ([TerminationReasonID])
GO
ALTER TABLE [dbo].[VendorTermination] CHECK CONSTRAINT [FK_VendorTermination_TerminationReason]
GO
/****** Object:  ForeignKey [FK_VendorTermination_Vendors]    Script Date: 12/10/2012 20:10:54 ******/
ALTER TABLE [dbo].[VendorTermination]  WITH CHECK ADD  CONSTRAINT [FK_VendorTermination_Vendors] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[VendorTermination] CHECK CONSTRAINT [FK_VendorTermination_Vendors]
GO
