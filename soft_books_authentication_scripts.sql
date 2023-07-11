

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
INSERT [dbo].[spUsers] ([Id], [RoleId], [UserName], [Password], [Status], [Locked], [IsDeleted], [SystemId], [Surname], [OtherNames], [NationalID], [DateOfBirth], [Gender], [Telephone], [Email], [DateJoined], [InformBy], [Photo], [password_hash], [password_salt]) VALUES (1, 1, N'sys', N'FzFGn3pfew/iiG9tfEoBwg==', N'A', 0, 0, N'ws', N'w', N't', N'5465', CAST(0x6E3A0B00 AS Date), N'M', N'0721268059', N'wambugumbugguss@gmail', CAST(0xE6440B00 AS Date), N'EMAIL', N'D:\wakxpx\csharp\visualstudio\2010\SBPayroll\winSBPayroll\Resources\bluewebmage.jpg', N'C088FCCADD6D9838202FC79FA920619EBA9015C1E6D3141B7163814D26E8F867B8D10942FCD9AAC65FC31110381242FB910F984BFC02FDE4C2ABCBD79E02ECBF', N'A30A0ADC5023418C8A2FF0EC33636B7D8D9186FC7D3ADAA5C5A8B900212589041DCBCF88C9A6E442513021E20430E24FD9CA475025A9D8FE2AFF9C71001BC108') 
SET IDENTITY_INSERT [dbo].[spUsers] OFF





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


