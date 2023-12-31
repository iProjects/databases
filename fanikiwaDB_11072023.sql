/****** Object:  View [dbo].[View_1]    Script Date: 07/11/2023 15:24:18 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_1]'))
DROP VIEW [dbo].[View_1]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07/11/2023 15:24:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 07/11/2023 15:24:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContactUs]') AND type in (N'U'))
DROP TABLE [dbo].[ContactUs]
GO
/****** Object:  Table [dbo].[Loans]    Script Date: 07/11/2023 15:24:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Loans]') AND type in (N'U'))
DROP TABLE [dbo].[Loans]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 07/11/2023 15:24:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Members]') AND type in (N'U'))
DROP TABLE [dbo].[Members]
GO
/****** Object:  Table [dbo].[OfferReceipients]    Script Date: 07/11/2023 15:24:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferReceipients]') AND type in (N'U'))
DROP TABLE [dbo].[OfferReceipients]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 07/11/2023 15:24:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Offers]') AND type in (N'U'))
DROP TABLE [dbo].[Offers]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 07/11/2023 15:24:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Settings]') AND type in (N'U'))
DROP TABLE [dbo].[Settings]
GO
/****** Object:  Table [dbo].[SettingsGroups]    Script Date: 07/11/2023 15:24:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SettingsGroups]') AND type in (N'U'))
DROP TABLE [dbo].[SettingsGroups]
GO
/****** Object:  Table [dbo].[SettingsGroups]    Script Date: 07/11/2023 15:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SettingsGroups]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SettingsGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Parent] [int] NOT NULL,
 CONSTRAINT [PK_SettingsGroups_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 07/11/2023 15:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Settings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Settings](
	[SSKey] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SSValue] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SSValueType] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SGroup] [int] NULL,
	[SSSystem] [bit] NULL,
 CONSTRAINT [PK_Settings_1] PRIMARY KEY CLUSTERED 
(
	[SSKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 07/11/2023 15:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Offers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Offers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Offerees] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OfferType] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ExpiryDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[Amount] [money] NULL,
	[Term] [int] NULL,
	[Interest] [float] NULL,
	[MemberId] [int] NOT NULL,
	[Description] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Offers_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Offers', N'COLUMN',N'MemberId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The member making this offer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Offers', @level2type=N'COLUMN',@level2name=N'MemberId'
GO
/****** Object:  Table [dbo].[OfferReceipients]    Script Date: 07/11/2023 15:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OfferReceipients]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OfferReceipients](
	[OfferReceipientId] [int] IDENTITY(1,1) NOT NULL,
	[OfferId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
 CONSTRAINT [PK_OfferReceipients_1] PRIMARY KEY CLUSTERED 
(
	[OfferReceipientId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Members]    Script Date: 07/11/2023 15:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Members]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Members](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OtherNames] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[Gender] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Telephone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[DateJoined] [date] NULL,
	[CustomerId] [int] NULL,
	[CurrentAccountId] [int] NULL,
	[LoanAccountId] [int] NULL,
	[InvestmentAccountId] [int] NULL,
	[Status] [nchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DateActivated] [datetime2](7) NULL,
	[RefferedBy] [int] NULL,
	[InformBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Members_1] PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [IX_Members] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Members', N'COLUMN',N'Status'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'N=New; D=Disabled; A=Activated' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Members', @level2type=N'COLUMN',@level2name=N'Status'
GO
SET IDENTITY_INSERT [dbo].[Members] ON
INSERT [dbo].[Members] ([MemberId], [Surname], [OtherNames], [DateOfBirth], [Gender], [Telephone], [Email], [DateJoined], [CustomerId], [CurrentAccountId], [LoanAccountId], [InvestmentAccountId], [Status], [DateActivated], [RefferedBy], [InformBy]) VALUES (39, N'kithinji', N'kevin mutugi', CAST(0x07000000000034150B AS DateTime2), N'M', N'254715413144', N'kevinmk30@gmail.com', CAST(0x94380B00 AS Date), 115, 260, 261, 262, N'N', NULL, 0, N'SMS')
SET IDENTITY_INSERT [dbo].[Members] OFF
/****** Object:  Table [dbo].[Loans]    Script Date: 07/11/2023 15:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Loans]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Loans](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[OfferId] [int] NOT NULL,
	[Amount] [money] NULL,
	[Interest] [float] NULL,
	[Term] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[MaturityDate] [datetime] NULL,
 CONSTRAINT [PK_Loans_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Loans', N'COLUMN',N'MemberId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The member making this offer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Loans', @level2type=N'COLUMN',@level2name=N'MemberId'
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 07/11/2023 15:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContactUs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ContactUs](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LastName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Telephone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Email] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Subject] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Comment] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
END
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07/11/2023 15:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Email] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Password] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ConfirmPassword] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND name = N'IX_Users')
CREATE NONCLUSTERED INDEX [IX_Users] ON [dbo].[Users] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
/****** Object:  View [dbo].[View_1]    Script Date: 07/11/2023 15:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[View_1]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[View_1]
AS
SELECT     dbo.Offers.*
FROM         dbo.OfferReceipients INNER JOIN
                      dbo.Offers ON dbo.OfferReceipients.OfferId = dbo.Offers.Id
WHERE     (dbo.OfferReceipients.MemberId = 1)
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'View_1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[21] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "OfferReceipients"
            Begin Extent = 
               Top = 26
               Left = 475
               Bottom = 149
               Right = 650
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Offers"
            Begin Extent = 
               Top = 0
               Left = 110
               Bottom = 239
               Right = 270
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'View_1', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
/****** Object:  Trigger [UpdateDefaultDates]    Script Date: 07/11/2023 15:24:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[UpdateDefaultDates]'))
EXEC dbo.sp_executesql @statement = N'CREATE trigger [dbo].[UpdateDefaultDates]
on [dbo].[Members]
after insert,update
as
set nocount on

begin

 update m
 set m.DateActivated = NULL
  from dbo.members as m
  where m.DateActivated = ''0001-01-01 00:00:00.0000000''

  update m
 set m.DateActivated = NULL
  from dbo.members as m
  where m.DateActivated = ''01/01/01 12:00:00 AM''
  
   update m
 set  m.DateOfBirth = NULL
  from dbo.members as m
  where   m.DateOfBirth = ''0001-01-01 00:00:00.0000000''

  update m
 set  m.DateOfBirth = NULL
  from dbo.members as m
  where m.DateOfBirth = ''01/01/01 12:00:00 AM''

  end'
GO
