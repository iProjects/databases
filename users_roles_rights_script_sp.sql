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
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (1, N'btnShowPDF', N'Show PDF')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (2, N'btnShowExcel', N'Show Excel')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (3, N'btnShowCsv', N'Show Csv')
SET IDENTITY_INSERT [dbo].[spReportsMenuItems] OFF





/****** Object:  Table [dbo].[spMenus]    Script Date: 11/22/2022 14:39:40 ******/
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
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (1, N'mnuDataEntry', N'Data Entry - Menu') 
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (2, N'subMenuSettings', N'Settings - Sub Menu') 
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (3, N'subMenuReports', N'Reports - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (4, N'mnuAdministrator', N'Administrator - Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (5, N'subMenuEmployers', N'Employers - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (6, N'subMenuRoles', N'Roles - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (7, N'subMenuUsers', N'Users - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (8, N'subMenuUsersRoles', N'User Roles - Sub Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (9, N'subMenuRights', N'Rights - Sub Menu') 
SET IDENTITY_INSERT [dbo].[spMenus] OFF





/****** Object:  Table [dbo].[spMenuItems]    Script Date: 11/22/2022 14:39:40 ******/
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
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (1, N'dataEntryToolStripMenuItem', N'Data Entry Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (2, N'administrationToolStripMenuItem', N'Administration Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (3, N'reportsToolStripMenuItem', N'Reports Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (4, N'changePasswordToolStripMenuItem', N'Change Password Menu') 
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (5, N'employeesToolStripMenuItem', N'Employees Menu') 
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (6, N'departmentsToolStripMenuItem', N'Departments Menu') 
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (7, N'usersToolStripMenuItem', N'Users Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (8, N'rightsToolStripMenuItem', N'Rights Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (9, N'rolesToolStripMenuItem', N'Roles Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (10, N'settingsToolStripMenuItem', N'Settings Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (11, N'employerToolStripMenuItem', N'Employer Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (12, N'databaseControlPanelToolStripMenuItem', N'Database Control Panel Menu') 
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (13, N'pdfReportsToolStripMenuItem', N'Reports Menu')  
SET IDENTITY_INSERT [dbo].[spMenuItems] OFF 








/****** Object:  Table [dbo].[spAllowedRoleMenus]    Script Date: 11/22/2022 14:39:38 ******/
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






/****** Object:  Table [dbo].[spAllowedReportsRolesMenus]    Script Date: 11/22/2022 14:39:38 ******/
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
