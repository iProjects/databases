

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
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (1, N'payrollToolStripMenuItem', N'Payroll Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (2, N'openPayrollToolStripMenuItem', N'Open Payroll Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (3, N'processPayrollToolStripMenuItem', N'Process Payroll Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (4, N'dataEntryToolStripMenuItem', N'Data Entry Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (5, N'employeesToolStripMenuItem', N'Employees Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (6, N'bankBranchesToolStripMenuItem', N'Bank Branches Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (7, N'benefitsToolStripMenuItem', N'Benefits Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (8, N'departmentsToolStripMenuItem', N'Departments Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (9, N'payeeRatesToolStripMenuItem', N'Payee Rates Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (10, N'nHIFRatesToolStripMenuItem', N'NHIF Rates Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (11, N'payrollItemsToolStripMenuItem', N'Payroll Items Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (12, N'newNSSFToolStripMenuItem', N'New NHIF Rates Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (13, N'reportsToolStripMenuItem', N'Reports Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (14, N'allReportsToolStripMenuItem', N'All Reports Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (15, N'taxCalculatorToolStripMenuItem', N'Tax Calculator Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (16, N'administrationToolStripMenuItem', N'Administration Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (17, N'rolesToolStripMenuItem', N'Roles Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (18, N'usersToolStripMenuItem', N'Users Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (19, N'rightsToolStripMenuItem', N'Rights Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (20, N'settingsToolStripMenuItem', N'Settings Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (21, N'employerToolStripMenuItem', N'Employer Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (22, N'databaseControlPanelToolStripMenuItem', N'Database Control Panel Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (23, N'uploadDownloadWizardToolStripMenuItem', N'Upload and Download Wizard Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (24, N'transactionToolStripMenuItem', N'Transactions Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (25, N'tsbPDFReports', N'Reports Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (26, N'tsbOpenPayroll', N'Open Payroll Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (27, N'tsbProcessPayroll', N'Process Payroll Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (28, N'tspEmployees', N'Employees Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (29, N'tsbPayrollItems', N'Payroll Items Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (30, N'tsbBanks', N'Banks Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (31, N'tsbBenefits', N'Benefits Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (32, N'tsbDepartments', N'Departments Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (33, N'tsbPayeeRates', N'Payee Rates Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (34, N'tsbtnNHIFRates', N'NHIF Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (35, N'tsbTaxCalculator', N'Tax Calculator Button')
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
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (1, N'payrollToolStripMenuItem', N'Payroll Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (2, N'openPayrollToolStripMenuItem', N'Open Payroll Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (3, N'processPayrollToolStripMenuItem', N'Process Payroll Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (4, N'dataEntryToolStripMenuItem', N'Data Entry Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (5, N'employeesToolStripMenuItem', N'Employees Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (6, N'bankBranchesToolStripMenuItem', N'Bank Branches Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (7, N'benefitsToolStripMenuItem', N'Benefits Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (8, N'departmentsToolStripMenuItem', N'Departments Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (9, N'payeeRatesToolStripMenuItem', N'Payee Rates Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (10, N'nHIFRatesToolStripMenuItem', N'NHIF Rates Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (11, N'payrollItemsToolStripMenuItem', N'Payroll Items Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (12, N'newNSSFToolStripMenuItem', N'New NHIF Rates Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (13, N'reportsToolStripMenuItem', N'Reports Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (14, N'allReportsToolStripMenuItem', N'All Reports Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (15, N'taxCalculatorToolStripMenuItem', N'Tax Calculator Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (16, N'administrationToolStripMenuItem', N'Administration Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (17, N'rolesToolStripMenuItem', N'Roles Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (18, N'usersToolStripMenuItem', N'Users Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (19, N'rightsToolStripMenuItem', N'Rights Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (20, N'settingsToolStripMenuItem', N'Settings Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (21, N'employerToolStripMenuItem', N'Employer Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (22, N'databaseControlPanelToolStripMenuItem', N'Database Control Panel Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (23, N'uploadDownloadWizardToolStripMenuItem', N'Upload and Download Wizard Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (24, N'transactionToolStripMenuItem', N'Transactions Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (25, N'tsbPDFReports', N'Reports Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (26, N'tsbOpenPayroll', N'Open Payroll Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (27, N'tsbProcessPayroll', N'Process Payroll Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (28, N'tspEmployees', N'Employees Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (29, N'tsbPayrollItems', N'Payroll Items Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (30, N'tsbBanks', N'Banks Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (31, N'tsbBenefits', N'Benefits Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (32, N'tsbDepartments', N'Departments Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (33, N'tsbPayeeRates', N'Payee Rates Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (34, N'tsbtnNHIFRates', N'NHIF Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (35, N'tsbTaxCalculator', N'Tax Calculator Button')
SET IDENTITY_INSERT [dbo].[spMenuItems] OFF






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
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (5, N'btnP10', N'P10')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (6, N'btnP10A', N'P10A')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (7, N'btnp11', N'P11')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (8, N'btnViewAllPayslip', N'All Payslips')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (9, N'cboItemTypesReports', N'Reports Item Types')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (10, N'btnShowPDF', N'Show PDF')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (11, N'btnShowExcel', N'Show Excel')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (12, N'btnShow_Statement_or_Schedule', N'Show Shedule/Statement')
SET IDENTITY_INSERT [dbo].[spReportsMenuItems] OFF






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
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (1, 1, 1, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (2, 1, 2, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (3, 1, 3, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (4, 1, 4, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (5, 1, 5, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (6, 1, 6, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (7, 1, 7, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (8, 1, 8, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (9, 1, 9, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (10, 1, 10, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (11, 1, 11, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (12, 1, 12, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (13, 1, 13, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (14, 1, 14, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (15, 1, 15, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (16, 1, 16, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (17, 1, 17, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (18, 1, 18, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (19, 1, 19, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (20, 1, 20, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (21, 1, 21, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (22, 1, 22, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (23, 1, 23, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (24, 1, 24, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (25, 1, 25, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (26, 1, 26, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (27, 1, 27, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (28, 1, 28, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (29, 1, 29, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (30, 1, 30, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (31, 1, 31, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (32, 1, 32, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (33, 1, 33, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (34, 1, 34, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (35, 1, 35, 1)
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
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (1, 1, 1, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (2, 1, 2, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (3, 1, 3, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (4, 1, 4, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (5, 1, 5, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (6, 1, 6, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (7, 1, 7, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (8, 1, 8, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (9, 1, 9, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (10, 1, 10, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (11, 1, 11, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (12, 1, 12, 1) 
SET IDENTITY_INSERT [dbo].[spAllowedReportsRolesMenus] OFF










/****** Object:  Table [dbo].[spAllowedRoleMenusweb]    Script Date: 02/08/2023 20:45:09 ******/
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
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (1, 1, 1, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (2, 1, 2, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (3, 1, 3, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (4, 1, 4, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (5, 1, 5, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (6, 1, 6, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (7, 1, 7, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (8, 1, 8, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (9, 1, 9, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (10, 1, 10, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (11, 1, 11, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (12, 1, 12, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (13, 1, 13, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (14, 1, 14, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (15, 1, 15, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (16, 1, 16, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (17, 1, 17, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (18, 1, 18, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (19, 1, 19, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (20, 1, 20, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (21, 1, 21, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (22, 1, 22, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (23, 1, 23, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (24, 1, 24, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (25, 1, 25, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (26, 1, 26, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (27, 1, 27, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (28, 1, 28, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (29, 1, 29, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (30, 1, 30, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (31, 1, 31, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (32, 1, 32, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (33, 1, 33, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (34, 1, 34, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (35, 1, 35, 1)
SET IDENTITY_INSERT [dbo].[spAllowedRoleMenusweb] OFF






