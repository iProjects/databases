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
INSERT [dbo].[spUsers] ([Id], [RoleId], [UserName], [Password], [Status], [Locked], [IsDeleted], [SystemId], [Surname], [OtherNames], [NationalID], [DateOfBirth], [Gender], [Telephone], [Email], [DateJoined], [InformBy], [Photo], [password_hash], [password_salt]) VALUES (1, 1, N'sys', N'FzFGn3pfew/iiG9tfEoBwg==', N'A', 0, 0, N'ws', N'w', N't', N'5465', CAST(0x6E3A0B00 AS Date), N'M', N'0721268059', N'wambugumbugguss@gmail', CAST(0xE6440B00 AS Date), N'EMAIL', N'D:\wakxpx\csharp\visualstudio\2010\SBPayroll\winSBPayroll\Resources\bluewebmage.jpg', N'C088FCCADD6D9838202FC79FA920619EBA9015C1E6D3141B7163814D26E8F867B8D10942FCD9AAC65FC31110381242FB910F984BFC02FDE4C2ABCBD79E02ECBF', N'A30A0ADC5023418C8A2FF0EC33636B7D8D9186FC7D3ADAA5C5A8B900212589041DCBCF88C9A6E442513021E20430E24FD9CA475025A9D8FE2AFF9C71001BC108') 
SET IDENTITY_INSERT [dbo].[spUsers] OFF








SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[ShortCode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_roles] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_roles] ON
INSERT [dbo].[tbl_roles] ([role_id], [ShortCode], [Description], [IsDeleted]) VALUES (1, N'Administrator', N'Administrator', 0)
INSERT [dbo].[tbl_roles] ([role_id], [ShortCode], [Description], [IsDeleted]) VALUES (2, N'Employee', N'Employee', 0)
SET IDENTITY_INSERT [dbo].[tbl_roles] OFF







SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_ReportsMenuItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_ReportsMenuItems](
	[report_menu_Id] [int] IDENTITY(1,1) NOT NULL,
	[mnuName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_tbl_ReportsMenuItems] PRIMARY KEY CLUSTERED 
(
	[report_menu_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_ReportsMenuItems] ON
INSERT [dbo].[tbl_ReportsMenuItems] ([report_menu_Id], [mnuName], [Description]) VALUES (1, N'btnShowPDF', N'Show PDF')
INSERT [dbo].[tbl_ReportsMenuItems] ([report_menu_Id], [mnuName], [Description]) VALUES (2, N'btnShowExcel', N'Show Excel')
INSERT [dbo].[tbl_ReportsMenuItems] ([report_menu_Id], [mnuName], [Description]) VALUES (3, N'btnShowCsv', N'Show Csv')
SET IDENTITY_INSERT [dbo].[tbl_ReportsMenuItems] OFF





/****** Object:  Table [dbo].[tbl_Menus]    Script Date: 11/22/2022 14:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_Menus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_Menus](
	[menu_Id] [int] IDENTITY(1,1) NOT NULL,
	[mnuName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tbl_Menus] PRIMARY KEY CLUSTERED 
(
	[menu_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_Menus] ON 
INSERT [dbo].[tbl_Menus] ([menu_Id], [mnuName], [Description]) VALUES (1, N'mnuDataEntry', N'Data Entry - Menu') 
INSERT [dbo].[tbl_Menus] ([menu_Id], [mnuName], [Description]) VALUES (2, N'subMenuSettings', N'Settings - Sub Menu') 
INSERT [dbo].[tbl_Menus] ([menu_Id], [mnuName], [Description]) VALUES (3, N'subMenuReports', N'Reports - Sub Menu')
INSERT [dbo].[tbl_Menus] ([menu_Id], [mnuName], [Description]) VALUES (4, N'mnuAdministrator', N'Administrator - Menu')
INSERT [dbo].[tbl_Menus] ([menu_Id], [mnuName], [Description]) VALUES (5, N'subMenuEmployers', N'Employers - Sub Menu')
INSERT [dbo].[tbl_Menus] ([menu_Id], [mnuName], [Description]) VALUES (6, N'subMenuRoles', N'Roles - Sub Menu')
INSERT [dbo].[tbl_Menus] ([menu_Id], [mnuName], [Description]) VALUES (7, N'subMenuUsers', N'Users - Sub Menu')
INSERT [dbo].[tbl_Menus] ([menu_Id], [mnuName], [Description]) VALUES (8, N'subMenuUsersRoles', N'User Roles - Sub Menu')
INSERT [dbo].[tbl_Menus] ([menu_Id], [mnuName], [Description]) VALUES (9, N'subMenuRights', N'Rights - Sub Menu') 
SET IDENTITY_INSERT [dbo].[tbl_Menus] OFF





/****** Object:  Table [dbo].[tbl_MenuItems]    Script Date: 11/22/2022 14:39:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_MenuItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_MenuItems](
	[menu_item_Id] [int] IDENTITY(1,1) NOT NULL,
	[mnuName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_tbl_MenuItems] PRIMARY KEY CLUSTERED 
(
	[menu_item_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tbl_MenuItems] ON 
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (1, N'dataEntryToolStripMenuItem', N'Data Entry Menu')
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (2, N'administrationToolStripMenuItem', N'Administration Menu')
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (3, N'reportsToolStripMenuItem', N'Reports Menu')
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (4, N'changePasswordToolStripMenuItem', N'Change Password Menu') 
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (5, N'employeesToolStripMenuItem', N'Employees Menu') 
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (6, N'departmentsToolStripMenuItem', N'Departments Menu') 
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (7, N'usersToolStripMenuItem', N'Users Menu')
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (8, N'rightsToolStripMenuItem', N'Rights Menu')
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (9, N'rolesToolStripMenuItem', N'Roles Menu')
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (10, N'settingsToolStripMenuItem', N'Settings Menu')
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (11, N'employerToolStripMenuItem', N'Employer Menu')
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (12, N'databaseControlPanelToolStripMenuItem', N'Database Control Panel Menu') 
INSERT [dbo].[tbl_MenuItems] ([menu_item_Id], [mnuName], [Description]) VALUES (13, N'pdfReportsToolStripMenuItem', N'Reports Menu')  
SET IDENTITY_INSERT [dbo].[tbl_MenuItems] OFF 








/****** Object:  Table [dbo].[tbl_AllowedRoleMenus]    Script Date: 11/22/2022 14:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_AllowedRoleMenus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_AllowedRoleMenus](
	[allowed_role_menu_Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[MenuItemId] [int] NOT NULL,
	[Allowed] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_AllowedRoleMenus] PRIMARY KEY CLUSTERED 
(
	[allowed_role_menu_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO 






/****** Object:  Table [dbo].[tbl_AllowedReportsRolesMenus]    Script Date: 11/22/2022 14:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_AllowedReportsRolesMenus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbl_AllowedReportsRolesMenus](
	[allowed_report_role_menu_Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[MenuItemId] [int] NOT NULL,
	[Allowed] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_AllowedReportsRolesMenus] PRIMARY KEY CLUSTERED 
(
	[allowed_report_role_menu_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO 




