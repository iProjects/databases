/****** Object:  Table [dbo].[spUsersInRoles]    Script Date: 01/21/2023 12:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUsersInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spUsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_spUsersInRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[spUsersInRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[spUsersInRoles] ([UserId], [RoleId]) VALUES (2, 1)
INSERT [dbo].[spUsersInRoles] ([UserId], [RoleId]) VALUES (3, 1)
INSERT [dbo].[spUsersInRoles] ([UserId], [RoleId]) VALUES (4, 1)
INSERT [dbo].[spUsersInRoles] ([UserId], [RoleId]) VALUES (5, 1)
INSERT [dbo].[spUsersInRoles] ([UserId], [RoleId]) VALUES (7, 1)
INSERT [dbo].[spUsersInRoles] ([UserId], [RoleId]) VALUES (8, 1)
/****** Object:  Table [dbo].[spUsers]    Script Date: 01/21/2023 12:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserName] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Password] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Status] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Locked] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[SystemId] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Surname] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OtherNames] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NationalID] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Telephone] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DateJoined] [date] NULL,
	[InformBy] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Photo] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[password_hash] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[password_salt] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_spUsers_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[spUsers] ON
INSERT [dbo].[spUsers] ([Id], [RoleId], [UserName], [Password], [Status], [Locked], [IsDeleted], [SystemId], [Surname], [OtherNames], [NationalID], [DateOfBirth], [Gender], [Telephone], [Email], [DateJoined], [InformBy], [Photo], [password_hash], [password_salt]) VALUES (1, 1, N'James', N'ZH4fn533RTpxybMW8pgWZA==', N'A', 0, 0, N'ws', N'James', N'Muhanda', N'213123', CAST(0xA63A0B00 AS Date), N'M', N'455', N'info@vikeins.co.ke', CAST(0xE6440B00 AS Date), N'EMAIL', N'D:\wakxpx\csharp\visualstudio\2010\SBPayroll\winSBPayroll\Resources\dreamemage.jpg', N'26782FE8DF2AADA867E7EF0B5AE85777BDFBD4460BBAD60ADAABBF8C008F0ED3796527B83C48D011F7E4D266644584655BC5E030C538868EAF9820ED405A7069', N'417299D32D9A186FE24E99C5229F9D43D384943377D1CED90FD861305C1001E1C0B4F18029D4A6B31FC09311AEF71C2A75DF3EE8B66AD0BE78EA21228016DEE9')
INSERT [dbo].[spUsers] ([Id], [RoleId], [UserName], [Password], [Status], [Locked], [IsDeleted], [SystemId], [Surname], [OtherNames], [NationalID], [DateOfBirth], [Gender], [Telephone], [Email], [DateJoined], [InformBy], [Photo], [password_hash], [password_salt]) VALUES (6, 1, N'sys', N'FzFGn3pfew/iiG9tfEoBwg==', N'A', 0, 0, N'ws', N'w', N't', N'5465', CAST(0x6E3A0B00 AS Date), N'M', N'0721268059', N'wambugumbugguss@gmail', CAST(0xE6440B00 AS Date), N'EMAIL', N'D:\wakxpx\csharp\visualstudio\2010\SBPayroll\winSBPayroll\Resources\bluewebmage.jpg', N'C088FCCADD6D9838202FC79FA920619EBA9015C1E6D3141B7163814D26E8F867B8D10942FCD9AAC65FC31110381242FB910F984BFC02FDE4C2ABCBD79E02ECBF', N'A30A0ADC5023418C8A2FF0EC33636B7D8D9186FC7D3ADAA5C5A8B900212589041DCBCF88C9A6E442513021E20430E24FD9CA475025A9D8FE2AFF9C71001BC108')
INSERT [dbo].[spUsers] ([Id], [RoleId], [UserName], [Password], [Status], [Locked], [IsDeleted], [SystemId], [Surname], [OtherNames], [NationalID], [DateOfBirth], [Gender], [Telephone], [Email], [DateJoined], [InformBy], [Photo], [password_hash], [password_salt]) VALUES (9, 2, N'Juma', N'FfgDXrKmtB2q8h864MIZig==', N'A', 0, 0, N'ws', N'Juma', N'Mbarak', N'25144955', CAST(0x64110B00 AS Date), N'M', N'0728347215', N'mbarak.j@gmail.com', CAST(0xE6440B00 AS Date), N'EMAIL', N'D:\wakxpx\csharp\visualstudio\2010\SBPayroll\winSBPayroll\Resources\dreamemage.jpg', N'0DEDBE81EF57AFDC8CC652DEEF7617DCE6885AB1835C7F2DC3510ED40C35C36249543BBEDDD4E9322E75BDF11A12FAC49364E8FB4BB3A52779A1CBFCF1B0C795', N'A76BB3F87A81099B8AF90D9F0BEE89B4A2EADA9FD0DF0ADBDB4F1FBF5DD5CB7C83DABD783DB9030C4C62FCA6BB3A1EF24D9FA89FD730BB2B90E40A08538F6A6F')
INSERT [dbo].[spUsers] ([Id], [RoleId], [UserName], [Password], [Status], [Locked], [IsDeleted], [SystemId], [Surname], [OtherNames], [NationalID], [DateOfBirth], [Gender], [Telephone], [Email], [DateJoined], [InformBy], [Photo], [password_hash], [password_salt]) VALUES (10, 2, N'kamau', N'oPHHcJJ2IS0yiqTfppgZ+A==', N'A', 0, 0, N'ws', N'Gichanga', N'Samuel', N'28395730', CAST(0xD0170B00 AS Date), N'M', N'0719377875', N'kamaugichanga@yahoo.com', CAST(0xE6440B00 AS Date), N'EMAIL', N'D:\wakxpx\csharp\visualstudio\2010\SBPayroll\winSBPayroll\Resources\greenmage.jpg', N'6E1BF7E6FF1C93BF2CCA241A4B7B353488D984309377A14144FD8376C1E9CDB952680F7A06A6599AEF92C240E692EAA1CBF6215160D948509D4FC6C4F3577122', N'DEFDD0118F1F44306AC9CE7A842A1C48E4D43CD5A94B17B08866C2031633A2F93CE40091B954FEE03CA4A4A9F997E67FE54CD39046126DD30CA22202A9AA1640')
INSERT [dbo].[spUsers] ([Id], [RoleId], [UserName], [Password], [Status], [Locked], [IsDeleted], [SystemId], [Surname], [OtherNames], [NationalID], [DateOfBirth], [Gender], [Telephone], [Email], [DateJoined], [InformBy], [Photo], [password_hash], [password_salt]) VALUES (11, 1, N'jamo', N'FE1cfn080Gutdg/Usxd66A==', N'A', 0, 0, N'ws', N'wafula', N'james', N'13436544', CAST(0x213C0B00 AS Date), N'M', N'0720365988', N'james@vikeins.co.ke', CAST(0xE6440B00 AS Date), N'EMAIL', N'D:\wakxpx\csharp\visualstudio\2010\SBPayroll\winSBPayroll\Resources\colormager.jpg', N'9EC7A67B36FEADA2CB78F9D312DDE46AD9A5C4D0A7685AB809590597E26CE818A3A0C084AA161EC8B90B616746FE24F8298020046726F2034E0CCE84648C6388', N'DA4656A5AA7A243ADCFD92ED676C6B874E4740EFB61D5043E8F444CD2A0D6B8315154FAA17A91CC14AC9E24205127F4A43C1A935DBE9211FFEBA2309C3A754B5')
SET IDENTITY_INSERT [dbo].[spUsers] OFF
/****** Object:  Table [dbo].[spRoles]    Script Date: 01/21/2023 12:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShortCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_spRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[spRoles] ON
INSERT [dbo].[spRoles] ([Id], [ShortCode], [Description], [IsDeleted]) VALUES (1, N'Administrator', N'Administrator', 0)
INSERT [dbo].[spRoles] ([Id], [ShortCode], [Description], [IsDeleted]) VALUES (2, N'Employee', N'Employee', 0)
SET IDENTITY_INSERT [dbo].[spRoles] OFF
/****** Object:  Table [dbo].[spReportsMenuItems]    Script Date: 01/21/2023 12:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spReportsMenuItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spReportsMenuItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[mnuName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_spReportsMenuItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[spReportsMenuItems] ON
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (1, N'btnViewPayslip', N'Payslip')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (2, N'btnP9A', N'P9A')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (3, N'btnP9AHOSP', N'P9AHOSP')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (4, N'btnP9B', N'P9B')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (6, N'btnP10', N'P10')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (7, N'btnP10A', N'P10A')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (8, N'btnp11', N'P11')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (9, N'btnViewAllPayslip', N'All Payslips')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (10, N'cboItemTypesReports', N'Reports Item Types')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (11, N'btnShowPDF', N'Show PDF')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (13, N'btnShowExcel', N'Show Excel')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (14, N'btnShow', N'Show Shedule/Statement')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (15, N'btnShowCsv', N'Show Csv')
SET IDENTITY_INSERT [dbo].[spReportsMenuItems] OFF
/****** Object:  Table [dbo].[spMenus]    Script Date: 01/21/2023 12:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spMenus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spMenus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[mnuName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_spMenus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[spMenus] ON
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (2, N'subMenuPayrolls', N'Payrolls - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (3, N'subMenuProcessPayroll', N'Process Payroll -Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (4, N'mnuDataEntry', N'Data Entry - Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (5, N'subMenuEmployees', N'Employees - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (6, N'subMenuBanks', N'Banks - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (7, N'subMenuBenefits', N'Benefits - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (8, N'subMenuDepartments', N'Departments - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (9, N'subMenuPayeeRates', N'Payee Rates - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (10, N'subMenuNhifRates', N'Nhif Rates - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (11, N'subMenuPayrollItems', N'Payroll Items - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (12, N'subMenuNewNSSFComputaion', N'New Nssf Computations - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (13, N'mnuTechnical', N'Technical - Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (14, N'subMenuSettings', N'Settings - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (15, N'subMenuTaxCalculator', N'Tax Calculator - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (16, N'subMenuReports', N'Reports - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (17, N'mnuAdministrator', N'Administrator - Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (18, N'subMenuEmployers', N'Employers - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (19, N'subMenuRoles', N'Roles - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (20, N'subMenuUsers', N'Users - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (21, N'subMenuUsersRoles', N'User Roles - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (22, N'subMenuRights', N'Rights - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (23, N'mnuPayrolls', N'Payrolls - Menu')
SET IDENTITY_INSERT [dbo].[spMenus] OFF
/****** Object:  Table [dbo].[spMenuItems]    Script Date: 01/21/2023 12:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spMenuItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spMenuItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[mnuName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_spMenuItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[spMenuItems] ON
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (2, N'payrollToolStripMenuItem', N'Payroll Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (3, N'dataEntryToolStripMenuItem', N'Data Entry Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (4, N'administrationToolStripMenuItem', N'Administration Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (5, N'reportsToolStripMenuItem', N'Reports Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (7, N'changePasswordToolStripMenuItem', N'Change Password Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (8, N'openPayrollToolStripMenuItem', N'Open Payroll Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (9, N'processPayrollToolStripMenuItem', N'Process Payroll Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (10, N'employeesToolStripMenuItem', N'Employees Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (11, N'btnBankBranches', N'Bank Braches Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (12, N'benefitsToolStripMenuItem', N'Benefits Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (13, N'departmentsToolStripMenuItem', N'Departments Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (14, N'payeeRatesToolStripMenuItem', N'Payee Rates Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (15, N'nHIFRatesToolStripMenuItem', N'NHIF Rates Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (16, N'payrollItemsToolStripMenuItem', N'Payroll Items Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (17, N'usersToolStripMenuItem', N'Users Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (18, N'rightsToolStripMenuItem', N'Rights Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (19, N'rolesToolStripMenuItem', N'Roles Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (20, N'settingsToolStripMenuItem', N'Settings Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (21, N'employerToolStripMenuItem', N'Employer Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (22, N'databaseControlPanelToolStripMenuItem', N'Database Control Panel Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (23, N'uploadDownloadWizardToolStripMenuItem', N'Upload and Download Wizard Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (24, N'pdfReportsToolStripMenuItem', N'Reports Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (25, N'taxCalcuToolStripMenuItem', N'Tax Calculator Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (29, N'tsbPDFReports', N'Reports Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (30, N'tsbOpenPayroll', N'Open Payroll Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (31, N'tsbProcessPayroll', N'Process Payroll Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (32, N'tspEmployees', N'Employees Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (33, N'tsbPayrollItems', N'Payroll Items Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (34, N'tsbBanks', N'Banks Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (35, N'tsbBenefits', N'Benefits Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (36, N'tsbDepartments', N'Departments Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (37, N'tsbPayeeRates', N'Payee Rates Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (38, N'tsbtnNHIFRates', N'NHIF Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (39, N'tsbTaxCalculator', N'Tax Calculator Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (40, N'transactionToolStripMenuItem', N'Transactions menu')
SET IDENTITY_INSERT [dbo].[spMenuItems] OFF
/****** Object:  Table [dbo].[spAllowedRoleMenusweb]    Script Date: 01/21/2023 12:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spAllowedRoleMenusweb]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spAllowedRoleMenusweb](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[MenuItemId] [int] NULL,
	[Allowed] [bit] NULL,
 CONSTRAINT [PK_spAllowedRoleMenusweb] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[spAllowedRoleMenusweb] ON
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (3, 1, 1, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (4, 1, 2, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (5, 1, 3, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (6, 1, 4, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (7, 1, 5, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (8, 1, 6, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (9, 1, 7, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (10, 1, 8, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (11, 1, 9, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (12, 1, 10, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (13, 1, 11, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (14, 1, 12, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (15, 1, 13, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (16, 1, 14, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (17, 1, 15, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (18, 1, 16, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (19, 1, 17, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (20, 1, 18, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (21, 1, 19, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (22, 1, 20, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (23, 1, 21, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (24, 1, 22, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (25, 1, 40, 1)
SET IDENTITY_INSERT [dbo].[spAllowedRoleMenusweb] OFF
/****** Object:  Table [dbo].[spAllowedRoleMenus]    Script Date: 01/21/2023 12:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spAllowedRoleMenus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spAllowedRoleMenus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[MenuItemId] [int] NOT NULL,
	[Allowed] [bit] NOT NULL,
 CONSTRAINT [PK_spAllowedRoleMenus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[spAllowedRoleMenus] ON
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (6, 1, 4, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (7, 1, 18, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (10, 1, 22, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (11, 1, 17, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (12, 1, 19, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (13, 1, 5, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (19, 1, 36, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (20, 1, 10, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (21, 1, 32, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (23, 1, 38, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (24, 1, 15, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (25, 1, 3, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (26, 1, 2, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (27, 1, 8, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (28, 1, 23, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (29, 1, 39, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (30, 1, 25, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (31, 1, 20, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (32, 1, 29, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (33, 1, 24, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (34, 1, 31, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (35, 1, 9, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (36, 1, 16, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (37, 1, 37, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (38, 1, 14, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (39, 1, 30, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (40, 1, 33, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (41, 1, 7, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (42, 1, 34, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (43, 1, 11, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (44, 1, 35, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (45, 1, 12, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (46, 1, 13, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (47, 2, 7, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (48, 2, 3, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (49, 2, 32, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (50, 2, 10, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (51, 2, 30, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (52, 2, 8, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (53, 2, 31, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (54, 2, 9, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (55, 2, 29, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (56, 2, 24, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (57, 2, 5, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (58, 1, 40, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (59, 1, 21, 1)
SET IDENTITY_INSERT [dbo].[spAllowedRoleMenus] OFF
/****** Object:  Table [dbo].[spAllowedReportsRolesMenus]    Script Date: 01/21/2023 12:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spAllowedReportsRolesMenus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spAllowedReportsRolesMenus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[MenuItemId] [int] NOT NULL,
	[Allowed] [bit] NOT NULL,
 CONSTRAINT [PK_spAllowedReportsRolesMenus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[spAllowedReportsRolesMenus] ON
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (2, 1, 9, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (3, 1, 6, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (4, 1, 7, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (5, 1, 8, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (6, 1, 2, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (7, 1, 3, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (8, 1, 4, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (9, 1, 1, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (10, 1, 13, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (11, 1, 11, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (12, 1, 14, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (13, 1, 10, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (14, 2, 9, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (15, 2, 1, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (16, 2, 14, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (17, 2, 10, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (18, 2, 13, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (19, 2, 11, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (20, 1, 15, 0)
SET IDENTITY_INSERT [dbo].[spAllowedReportsRolesMenus] OFF





/****** Object:  ForeignKey [FK_spAllowedReportsRolesMenus_spReportsMenuItems]    Script Date: 01/21/2023 12:17:41 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_spAllowedReportsRolesMenus_spReportsMenuItems]') AND parent_object_id = OBJECT_ID(N'[dbo].[spAllowedReportsRolesMenus]'))
ALTER TABLE [dbo].[spAllowedReportsRolesMenus]  WITH CHECK ADD  CONSTRAINT [FK_spAllowedReportsRolesMenus_spReportsMenuItems] FOREIGN KEY([MenuItemId])
REFERENCES [dbo].[spReportsMenuItems] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_spAllowedReportsRolesMenus_spReportsMenuItems]') AND parent_object_id = OBJECT_ID(N'[dbo].[spAllowedReportsRolesMenus]'))
ALTER TABLE [dbo].[spAllowedReportsRolesMenus] CHECK CONSTRAINT [FK_spAllowedReportsRolesMenus_spReportsMenuItems]
GO
/****** Object:  ForeignKey [FK_spAllowedRoleMenus_spMenuItems]    Script Date: 01/21/2023 12:17:41 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_spAllowedRoleMenus_spMenuItems]') AND parent_object_id = OBJECT_ID(N'[dbo].[spAllowedRoleMenus]'))
ALTER TABLE [dbo].[spAllowedRoleMenus]  WITH CHECK ADD  CONSTRAINT [FK_spAllowedRoleMenus_spMenuItems] FOREIGN KEY([MenuItemId])
REFERENCES [dbo].[spMenuItems] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_spAllowedRoleMenus_spMenuItems]') AND parent_object_id = OBJECT_ID(N'[dbo].[spAllowedRoleMenus]'))
ALTER TABLE [dbo].[spAllowedRoleMenus] CHECK CONSTRAINT [FK_spAllowedRoleMenus_spMenuItems]
GO
