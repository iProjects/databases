/****** Object:  ForeignKey [FK_Accounts_AccountTypes]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Accounts_AccountTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts] DROP CONSTRAINT [FK_Accounts_AccountTypes]
GO
/****** Object:  ForeignKey [FK_NodeNode]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NodeNode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Node]'))
ALTER TABLE [dbo].[Node] DROP CONSTRAINT [FK_NodeNode]
GO
/****** Object:  ForeignKey [FK_TransactionChainNode_TransactionChainNode]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TransactionChainNode_TransactionChainNode]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransactionChainNode]'))
ALTER TABLE [dbo].[TransactionChainNode] DROP CONSTRAINT [FK_TransactionChainNode_TransactionChainNode]
GO
/****** Object:  ForeignKey [FK_TransactionChainTree_TransactionChainNode]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TransactionChainTree_TransactionChainNode]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransactionChainTree]'))
ALTER TABLE [dbo].[TransactionChainTree] DROP CONSTRAINT [FK_TransactionChainTree_TransactionChainNode]
GO
/****** Object:  ForeignKey [FK_Transactions_Accounts]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transactions_Accounts]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transactions]'))
ALTER TABLE [dbo].[Transactions] DROP CONSTRAINT [FK_Transactions_Accounts]
GO
/****** Object:  ForeignKey [FK_Transactions_TransactionTypes]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transactions_TransactionTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transactions]'))
ALTER TABLE [dbo].[Transactions] DROP CONSTRAINT [FK_Transactions_TransactionTypes]
GO
/****** Object:  ForeignKey [FK_NodeTreeNode]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NodeTreeNode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tree]'))
ALTER TABLE [dbo].[Tree] DROP CONSTRAINT [FK_NodeTreeNode]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transactions]') AND type in (N'U'))
DROP TABLE [dbo].[Transactions]
GO
/****** Object:  Table [dbo].[Tree]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tree]') AND type in (N'U'))
DROP TABLE [dbo].[Tree]
GO
/****** Object:  Table [dbo].[TransactionChainTree]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionChainTree]') AND type in (N'U'))
DROP TABLE [dbo].[TransactionChainTree]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND type in (N'U'))
DROP TABLE [dbo].[Accounts]
GO
/****** Object:  Table [dbo].[AccountTypes]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypes]') AND type in (N'U'))
DROP TABLE [dbo].[AccountTypes]
GO
/****** Object:  Table [dbo].[COA]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COA]') AND type in (N'U'))
DROP TABLE [dbo].[COA]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[DiaryProgramControl]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiaryProgramControl]') AND type in (N'U'))
DROP TABLE [dbo].[DiaryProgramControl]
GO
/****** Object:  Table [dbo].[Node]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Node]') AND type in (N'U'))
DROP TABLE [dbo].[Node]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Settings]') AND type in (N'U'))
DROP TABLE [dbo].[Settings]
GO
/****** Object:  Table [dbo].[SettingsGroups]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SettingsGroups]') AND type in (N'U'))
DROP TABLE [dbo].[SettingsGroups]
GO
/****** Object:  Table [dbo].[STO]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STO]') AND type in (N'U'))
DROP TABLE [dbo].[STO]
GO
/****** Object:  Table [dbo].[TieredDet]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TieredDet]') AND type in (N'U'))
DROP TABLE [dbo].[TieredDet]
GO
/****** Object:  Table [dbo].[TieredTable]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TieredTable]') AND type in (N'U'))
DROP TABLE [dbo].[TieredTable]
GO
/****** Object:  Table [dbo].[TransactionChainNode]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionChainNode]') AND type in (N'U'))
DROP TABLE [dbo].[TransactionChainNode]
GO
/****** Object:  Table [dbo].[ValueDatedTransactions]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ValueDatedTransactions]') AND type in (N'U'))
DROP TABLE [dbo].[ValueDatedTransactions]
GO
/****** Object:  Table [dbo].[TransactionTypes]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionTypes]') AND type in (N'U'))
DROP TABLE [dbo].[TransactionTypes]
GO
/****** Object:  Default [DF_Customers_CreatedDate]    Script Date: 07/11/2023 15:26:39 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Customers_CreatedDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Customers_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [DF_Customers_CreatedDate]
END


End
GO
/****** Object:  Table [dbo].[TransactionTypes]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TransactionTypes](
	[TransactionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DebitCredit] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ShortCode] [nvarchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TxnClass] [smallint] NULL,
	[Description] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DefaultAmount] [money] NULL,
	[AmountExpression] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DefaultMainAccount] [int] NULL,
	[DefaultContraAccount] [int] NULL,
	[NarrativeFlag] [smallint] NULL,
	[DefaultMainNarrative] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DefaultContraNarrative] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TxnTypeView] [smallint] NULL,
	[ChargeCommission] [bit] NULL,
	[ChargeCommissionToTransaction] [bit] NULL,
	[CommissionAmountExpression] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CommissionDrAnotherAccount] [bit] NULL,
	[CommissionDrAccount] [int] NULL,
	[CommissionCrAccount] [int] NULL,
	[CommissionNarrativeFlag] [smallint] NULL,
	[CommissionMainNarrative] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CommissionContraNarrative] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CommComputationMethod] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Absolute] [bit] NULL,
	[TieredTableId] [int] NULL,
	[CommissionAmount] [decimal](18, 0) NULL,
	[DialogFlag] [smallint] NULL,
	[ForcePost] [bit] NULL,
	[Screen] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ValueDateOffset] [smallint] NULL,
	[ChargeWho] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DrCommCalcMethod] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CrCommCalcMethod] [nvarchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_TransactionTypes] PRIMARY KEY CLUSTERED 
(
	[TransactionTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[TransactionTypes] ON
INSERT [dbo].[TransactionTypes] ([TransactionTypeID], [DebitCredit], [ShortCode], [TxnClass], [Description], [DefaultAmount], [AmountExpression], [DefaultMainAccount], [DefaultContraAccount], [NarrativeFlag], [DefaultMainNarrative], [DefaultContraNarrative], [TxnTypeView], [ChargeCommission], [ChargeCommissionToTransaction], [CommissionAmountExpression], [CommissionDrAnotherAccount], [CommissionDrAccount], [CommissionCrAccount], [CommissionNarrativeFlag], [CommissionMainNarrative], [CommissionContraNarrative], [CommComputationMethod], [Absolute], [TieredTableId], [CommissionAmount], [DialogFlag], [ForcePost], [Screen], [ValueDateOffset], [ChargeWho], [DrCommCalcMethod], [CrCommCalcMethod]) VALUES (1, N'D', N'LES', NULL, N'Loan Established', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 104, NULL, NULL, NULL, NULL, N'T', 0, 1, NULL, NULL, NULL, NULL, NULL, N'D', N'T', NULL)
INSERT [dbo].[TransactionTypes] ([TransactionTypeID], [DebitCredit], [ShortCode], [TxnClass], [Description], [DefaultAmount], [AmountExpression], [DefaultMainAccount], [DefaultContraAccount], [NarrativeFlag], [DefaultMainNarrative], [DefaultContraNarrative], [TxnTypeView], [ChargeCommission], [ChargeCommissionToTransaction], [CommissionAmountExpression], [CommissionDrAnotherAccount], [CommissionDrAccount], [CommissionCrAccount], [CommissionNarrativeFlag], [CommissionMainNarrative], [CommissionContraNarrative], [CommComputationMethod], [Absolute], [TieredTableId], [CommissionAmount], [DialogFlag], [ForcePost], [Screen], [ValueDateOffset], [ChargeWho], [DrCommCalcMethod], [CrCommCalcMethod]) VALUES (2, N'C', N'CSD', NULL, N'Cash Deposited', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL, N'T', 0, 2, NULL, NULL, NULL, NULL, NULL, N'C', NULL, N'T')
INSERT [dbo].[TransactionTypes] ([TransactionTypeID], [DebitCredit], [ShortCode], [TxnClass], [Description], [DefaultAmount], [AmountExpression], [DefaultMainAccount], [DefaultContraAccount], [NarrativeFlag], [DefaultMainNarrative], [DefaultContraNarrative], [TxnTypeView], [ChargeCommission], [ChargeCommissionToTransaction], [CommissionAmountExpression], [CommissionDrAnotherAccount], [CommissionDrAccount], [CommissionCrAccount], [CommissionNarrativeFlag], [CommissionMainNarrative], [CommissionContraNarrative], [CommComputationMethod], [Absolute], [TieredTableId], [CommissionAmount], [DialogFlag], [ForcePost], [Screen], [ValueDateOffset], [ChargeWho], [DrCommCalcMethod], [CrCommCalcMethod]) VALUES (3, N'D', N'CWD', NULL, N'Cash Withdrawn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL, N'T', 1, 3, NULL, NULL, NULL, NULL, NULL, N'D', N'T', NULL)
INSERT [dbo].[TransactionTypes] ([TransactionTypeID], [DebitCredit], [ShortCode], [TxnClass], [Description], [DefaultAmount], [AmountExpression], [DefaultMainAccount], [DefaultContraAccount], [NarrativeFlag], [DefaultMainNarrative], [DefaultContraNarrative], [TxnTypeView], [ChargeCommission], [ChargeCommissionToTransaction], [CommissionAmountExpression], [CommissionDrAnotherAccount], [CommissionDrAccount], [CommissionCrAccount], [CommissionNarrativeFlag], [CommissionMainNarrative], [CommissionContraNarrative], [CommComputationMethod], [Absolute], [TieredTableId], [CommissionAmount], [DialogFlag], [ForcePost], [Screen], [ValueDateOffset], [ChargeWho], [DrCommCalcMethod], [CrCommCalcMethod]) VALUES (4, N'D', N'TRF', NULL, N'Transfer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, N'T', 0, 4, NULL, NULL, NULL, NULL, NULL, N'D', N'T', NULL)
INSERT [dbo].[TransactionTypes] ([TransactionTypeID], [DebitCredit], [ShortCode], [TxnClass], [Description], [DefaultAmount], [AmountExpression], [DefaultMainAccount], [DefaultContraAccount], [NarrativeFlag], [DefaultMainNarrative], [DefaultContraNarrative], [TxnTypeView], [ChargeCommission], [ChargeCommissionToTransaction], [CommissionAmountExpression], [CommissionDrAnotherAccount], [CommissionDrAccount], [CommissionCrAccount], [CommissionNarrativeFlag], [CommissionMainNarrative], [CommissionContraNarrative], [CommComputationMethod], [Absolute], [TieredTableId], [CommissionAmount], [DialogFlag], [ForcePost], [Screen], [ValueDateOffset], [ChargeWho], [DrCommCalcMethod], [CrCommCalcMethod]) VALUES (5, N'D', N'MWD', NULL, N'Mpesa Withdrawn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 106, NULL, NULL, NULL, NULL, N'T', 1, 3, NULL, NULL, NULL, NULL, NULL, N'D', N'T', NULL)
INSERT [dbo].[TransactionTypes] ([TransactionTypeID], [DebitCredit], [ShortCode], [TxnClass], [Description], [DefaultAmount], [AmountExpression], [DefaultMainAccount], [DefaultContraAccount], [NarrativeFlag], [DefaultMainNarrative], [DefaultContraNarrative], [TxnTypeView], [ChargeCommission], [ChargeCommissionToTransaction], [CommissionAmountExpression], [CommissionDrAnotherAccount], [CommissionDrAccount], [CommissionCrAccount], [CommissionNarrativeFlag], [CommissionMainNarrative], [CommissionContraNarrative], [CommComputationMethod], [Absolute], [TieredTableId], [CommissionAmount], [DialogFlag], [ForcePost], [Screen], [ValueDateOffset], [ChargeWho], [DrCommCalcMethod], [CrCommCalcMethod]) VALUES (6, N'C', N'MSD', NULL, N'Mpesa Deposited', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, N'T', 0, 2, NULL, NULL, NULL, NULL, NULL, N'C', NULL, N'T')
SET IDENTITY_INSERT [dbo].[TransactionTypes] OFF
/****** Object:  Table [dbo].[ValueDatedTransactions]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ValueDatedTransactions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ValueDatedTransactions](
	[id] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
/****** Object:  Table [dbo].[TransactionChainNode]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionChainNode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TransactionChainNode](
	[NodeId] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[Descripion] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TransactionType] [int] NOT NULL,
 CONSTRAINT [PK_TransactionChain] PRIMARY KEY CLUSTERED 
(
	[NodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[TieredTable]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TieredTable]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TieredTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_TieredTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[TieredTable] ON
INSERT [dbo].[TieredTable] ([Id], [Description]) VALUES (1, N'Loan Establish Rule')
INSERT [dbo].[TieredTable] ([Id], [Description]) VALUES (2, N'Cash Deposit Rule')
INSERT [dbo].[TieredTable] ([Id], [Description]) VALUES (3, N'Cash Withdraw Rule')
INSERT [dbo].[TieredTable] ([Id], [Description]) VALUES (4, N'Transfer Rule')
SET IDENTITY_INSERT [dbo].[TieredTable] OFF
/****** Object:  Table [dbo].[TieredDet]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TieredDet]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TieredDet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TieredID] [int] NULL,
	[Min] [decimal](18, 0) NULL,
	[Max] [decimal](18, 0) NULL,
	[Rate] [decimal](18, 0) NULL,
	[Absolute] [bit] NULL,
 CONSTRAINT [PK_TieredDet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[TieredDet] ON
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (1, 1, CAST(0 AS Decimal(18, 0)), CAST(999 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (2, 1, CAST(1000 AS Decimal(18, 0)), CAST(1999 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (3, 1, CAST(2000 AS Decimal(18, 0)), CAST(2999 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (4, 1, CAST(3000 AS Decimal(18, 0)), CAST(3999 AS Decimal(18, 0)), CAST(8 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (5, 1, CAST(4000 AS Decimal(18, 0)), CAST(4999 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (6, 1, CAST(5000 AS Decimal(18, 0)), CAST(5999 AS Decimal(18, 0)), CAST(11 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (7, 1, CAST(6000 AS Decimal(18, 0)), CAST(6999 AS Decimal(18, 0)), CAST(13 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (8, 1, CAST(7000 AS Decimal(18, 0)), CAST(7999 AS Decimal(18, 0)), CAST(15 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (9, 1, CAST(8000 AS Decimal(18, 0)), CAST(8999 AS Decimal(18, 0)), CAST(16 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (10, 1, CAST(9000 AS Decimal(18, 0)), CAST(10000000 AS Decimal(18, 0)), CAST(19 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (11, 2, CAST(0 AS Decimal(18, 0)), CAST(999 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (12, 2, CAST(1000 AS Decimal(18, 0)), CAST(1999 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (13, 2, CAST(2000 AS Decimal(18, 0)), CAST(2999 AS Decimal(18, 0)), CAST(8 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (14, 2, CAST(3000 AS Decimal(18, 0)), CAST(3999 AS Decimal(18, 0)), CAST(12 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (15, 2, CAST(4000 AS Decimal(18, 0)), CAST(4999 AS Decimal(18, 0)), CAST(15 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (16, 2, CAST(5000 AS Decimal(18, 0)), CAST(5999 AS Decimal(18, 0)), CAST(17 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (17, 2, CAST(6000 AS Decimal(18, 0)), CAST(6999 AS Decimal(18, 0)), CAST(21 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (18, 2, CAST(7000 AS Decimal(18, 0)), CAST(7999 AS Decimal(18, 0)), CAST(24 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (19, 2, CAST(8000 AS Decimal(18, 0)), CAST(8999 AS Decimal(18, 0)), CAST(25 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (20, 2, CAST(9000 AS Decimal(18, 0)), CAST(1000000 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (21, 3, CAST(0 AS Decimal(18, 0)), CAST(999 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (22, 3, CAST(1000 AS Decimal(18, 0)), CAST(1999 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (23, 3, CAST(2000 AS Decimal(18, 0)), CAST(2999 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (24, 3, CAST(3000 AS Decimal(18, 0)), CAST(3999 AS Decimal(18, 0)), CAST(11 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (25, 3, CAST(4000 AS Decimal(18, 0)), CAST(4999 AS Decimal(18, 0)), CAST(12 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (26, 3, CAST(5000 AS Decimal(18, 0)), CAST(5999 AS Decimal(18, 0)), CAST(13 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (27, 3, CAST(6000 AS Decimal(18, 0)), CAST(6999 AS Decimal(18, 0)), CAST(14 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (28, 3, CAST(7000 AS Decimal(18, 0)), CAST(7999 AS Decimal(18, 0)), CAST(16 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (29, 3, CAST(8000 AS Decimal(18, 0)), CAST(8999 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (30, 3, CAST(9000 AS Decimal(18, 0)), CAST(9999999999 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (31, 4, CAST(0 AS Decimal(18, 0)), CAST(999 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (32, 4, CAST(1000 AS Decimal(18, 0)), CAST(1999 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (33, 4, CAST(2000 AS Decimal(18, 0)), CAST(2999 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (34, 4, CAST(3000 AS Decimal(18, 0)), CAST(3999 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (35, 4, CAST(4000 AS Decimal(18, 0)), CAST(4999 AS Decimal(18, 0)), CAST(6 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (36, 4, CAST(5000 AS Decimal(18, 0)), CAST(5999 AS Decimal(18, 0)), CAST(7 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (37, 4, CAST(6000 AS Decimal(18, 0)), CAST(6999 AS Decimal(18, 0)), CAST(8 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (38, 4, CAST(7000 AS Decimal(18, 0)), CAST(7999 AS Decimal(18, 0)), CAST(9 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (39, 4, CAST(8000 AS Decimal(18, 0)), CAST(8999 AS Decimal(18, 0)), CAST(11 AS Decimal(18, 0)), 1)
INSERT [dbo].[TieredDet] ([Id], [TieredID], [Min], [Max], [Rate], [Absolute]) VALUES (40, 4, CAST(9000 AS Decimal(18, 0)), CAST(1000000 AS Decimal(18, 0)), CAST(12 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[TieredDet] OFF
/****** Object:  Table [dbo].[STO]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NextPayDate] [date] NOT NULL,
	[Interval] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [date] NULL,
	[STOType] [int] NOT NULL,
	[PartialPay] [bit] NULL,
	[DrAccount] [int] NOT NULL,
	[CrAccount] [int] NOT NULL,
	[PayAmount] [money] NOT NULL,
	[NoOfPayments] [smallint] NULL,
	[TotalToPay] [money] NULL,
	[AmountPaid] [money] NULL,
	[FeesFlag] [smallint] NULL,
	[CreateDate] [datetime] NULL,
	[LimitFlag] [smallint] NULL,
	[DrTxnType] [int] NULL,
	[CrTxnType] [int] NULL,
 CONSTRAINT [PK_STO] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[SettingsGroups]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SettingsGroups]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SettingsGroups](
	[Id] [int] NOT NULL,
	[GroupName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Parent] [int] NOT NULL,
 CONSTRAINT [PK_SettingsGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 07/11/2023 15:26:39 ******/
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
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[SSKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Node]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Node]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Node](
	[NodeId] [int] NOT NULL,
	[ParentId] [int] NULL,
	[NodeName] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Node] PRIMARY KEY CLUSTERED 
(
	[NodeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UK_NodeName] UNIQUE NONCLUSTERED 
(
	[NodeName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[DiaryProgramControl]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DiaryProgramControl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DiaryProgramControl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastRun] [datetime] NULL,
	[NextRun] [datetime] NULL,
 CONSTRAINT [PK_DiaryProgramControl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[DiaryProgramControl] ON
INSERT [dbo].[DiaryProgramControl] ([Id], [LastRun], [NextRun]) VALUES (1, CAST(0x0000AFB6014711C8 AS DateTime), CAST(0x0000AFB7014711C8 AS DateTime))
SET IDENTITY_INSERT [dbo].[DiaryProgramControl] OFF
/****** Object:  Table [dbo].[Customers]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerNo] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Address] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Telephone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Branch] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BillToName] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BillToAddress] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BillToTelephone] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BillToEmail] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MemberId] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Customers_1] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Customers]') AND name = N'IX_Customers')
CREATE UNIQUE NONCLUSTERED INDEX [IX_Customers] ON [dbo].[Customers] 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT [dbo].[Customers] ([CustomerId], [CustomerNo], [Name], [Address], [Telephone], [Email], [Branch], [BillToName], [BillToAddress], [BillToTelephone], [BillToEmail], [MemberId], [CreatedDate]) VALUES (64, N'1', N'Fanikiwa', NULL, N'0715714457', N'info@softwareproviders.co.ke', NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A2F000F5E177 AS DateTime))
INSERT [dbo].[Customers] ([CustomerId], [CustomerNo], [Name], [Address], [Telephone], [Email], [Branch], [BillToName], [BillToAddress], [BillToTelephone], [BillToEmail], [MemberId], [CreatedDate]) VALUES (115, NULL, N'kevin', NULL, NULL, N'kevinmk30@gmail.com', NULL, NULL, NULL, NULL, NULL, 39, CAST(0x0000A33900B5F02C AS DateTime))
SET IDENTITY_INSERT [dbo].[Customers] OFF
/****** Object:  Table [dbo].[COA]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COA](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShortCode] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[COALevel] [int] NOT NULL,
	[Parent] [int] NOT NULL,
	[Rorder] [int] NOT NULL,
 CONSTRAINT [PK_COA_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[COA] ON
INSERT [dbo].[COA] ([Id], [ShortCode], [Description], [COALevel], [Parent], [Rorder]) VALUES (1, N'ASSET     ', N'Assets', 1, 1, 1)
INSERT [dbo].[COA] ([Id], [ShortCode], [Description], [COALevel], [Parent], [Rorder]) VALUES (2, N'LIAB      ', N'Liabilities', 1, 1, 2)
INSERT [dbo].[COA] ([Id], [ShortCode], [Description], [COALevel], [Parent], [Rorder]) VALUES (3, N'INC       ', N'Income', 1, 1, 3)
INSERT [dbo].[COA] ([Id], [ShortCode], [Description], [COALevel], [Parent], [Rorder]) VALUES (4, N'CAP       ', N'Capital', 1, 1, 4)
INSERT [dbo].[COA] ([Id], [ShortCode], [Description], [COALevel], [Parent], [Rorder]) VALUES (5, N'EXP       ', N'Expenses', 1, 1, 5)
SET IDENTITY_INSERT [dbo].[COA] OFF
/****** Object:  Table [dbo].[AccountTypes]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AccountTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AccountTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShortCode] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_AccountTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[AccountTypes] ON
INSERT [dbo].[AccountTypes] ([Id], [ShortCode], [Description]) VALUES (1, N'MCA       ', N'Members Current Account')
INSERT [dbo].[AccountTypes] ([Id], [ShortCode], [Description]) VALUES (2, N'MLA       ', N'Members Loan Account')
INSERT [dbo].[AccountTypes] ([Id], [ShortCode], [Description]) VALUES (3, N'MIA       ', N'Members Investment Accounts')
SET IDENTITY_INSERT [dbo].[AccountTypes] OFF
/****** Object:  Table [dbo].[Accounts]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Accounts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[AccountName] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[AccountNo] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[AccountTypeId] [int] NOT NULL,
	[COAId] [int] NOT NULL,
	[Branch] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PassFlag] [smallint] NULL,
	[BookBalance] [money] NOT NULL,
	[ClearedBalance] [money] NOT NULL,
	[InterestRate] [float] NOT NULL,
	[AccruedInt] [money] NOT NULL,
	[Limit] [money] NOT NULL,
	[LimitFlag] [smallint] NULL,
	[LimitCheckFlag] [smallint] NULL,
	[Bal30] [money] NULL,
	[Bal60] [money] NULL,
	[Bal90] [money] NULL,
	[BalOver90] [money] NULL,
	[IntRate30] [float] NULL,
	[IntRate60] [float] NULL,
	[IntRate90] [float] NULL,
	[IntRateOver90] [float] NULL,
	[Closed] [bit] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON
INSERT [dbo].[Accounts] ([AccountID], [CustomerId], [AccountName], [AccountNo], [AccountTypeId], [COAId], [Branch], [PassFlag], [BookBalance], [ClearedBalance], [InterestRate], [AccruedInt], [Limit], [LimitFlag], [LimitCheckFlag], [Bal30], [Bal60], [Bal90], [BalOver90], [IntRate30], [IntRate60], [IntRate90], [IntRateOver90], [Closed]) VALUES (100, 64, N'LOANREPAYMENTACCOUNT', NULL, 1, 1, NULL, 4, 0.0000, 0.0000, 0, 0.0000, 0.0000, 6, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0, 0, 0, 0)
INSERT [dbo].[Accounts] ([AccountID], [CustomerId], [AccountName], [AccountNo], [AccountTypeId], [COAId], [Branch], [PassFlag], [BookBalance], [ClearedBalance], [InterestRate], [AccruedInt], [Limit], [LimitFlag], [LimitCheckFlag], [Bal30], [Bal60], [Bal90], [BalOver90], [IntRate30], [IntRate60], [IntRate90], [IntRateOver90], [Closed]) VALUES (104, 64, N'CASHACCOUNT', NULL, 1, 1, NULL, 0, -59605.0000, -59605.0000, 0, 0.0000, 0.0000, 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0, 0, 0, 0)
INSERT [dbo].[Accounts] ([AccountID], [CustomerId], [AccountName], [AccountNo], [AccountTypeId], [COAId], [Branch], [PassFlag], [BookBalance], [ClearedBalance], [InterestRate], [AccruedInt], [Limit], [LimitFlag], [LimitCheckFlag], [Bal30], [Bal60], [Bal90], [BalOver90], [IntRate30], [IntRate60], [IntRate90], [IntRateOver90], [Closed]) VALUES (105, 64, N'COMMISSIONACCOUNT', NULL, 1, 1, NULL, 0, 3750.0000, 3750.0000, 0, 0.0000, 0.0000, 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0, 0, 0, 0)
INSERT [dbo].[Accounts] ([AccountID], [CustomerId], [AccountName], [AccountNo], [AccountTypeId], [COAId], [Branch], [PassFlag], [BookBalance], [ClearedBalance], [InterestRate], [AccruedInt], [Limit], [LimitFlag], [LimitCheckFlag], [Bal30], [Bal60], [Bal90], [BalOver90], [IntRate30], [IntRate60], [IntRate90], [IntRateOver90], [Closed]) VALUES (106, 64, N'MPESACASHACCOUNT', NULL, 1, 1, NULL, 0, 8750.0000, 8750.0000, 0, 0.0000, 0.0000, 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0, 0, 0, 0)
INSERT [dbo].[Accounts] ([AccountID], [CustomerId], [AccountName], [AccountNo], [AccountTypeId], [COAId], [Branch], [PassFlag], [BookBalance], [ClearedBalance], [InterestRate], [AccruedInt], [Limit], [LimitFlag], [LimitCheckFlag], [Bal30], [Bal60], [Bal90], [BalOver90], [IntRate30], [IntRate60], [IntRate90], [IntRateOver90], [Closed]) VALUES (260, 115, N'kevin Curr A/c', NULL, 1, 2, NULL, 0, 7400.0000, 7400.0000, 0, 0.0000, 0.0000, 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0, 0, 0, 0)
INSERT [dbo].[Accounts] ([AccountID], [CustomerId], [AccountName], [AccountNo], [AccountTypeId], [COAId], [Branch], [PassFlag], [BookBalance], [ClearedBalance], [InterestRate], [AccruedInt], [Limit], [LimitFlag], [LimitCheckFlag], [Bal30], [Bal60], [Bal90], [BalOver90], [IntRate30], [IntRate60], [IntRate90], [IntRateOver90], [Closed]) VALUES (261, 115, N'kevin Loan A/c', NULL, 2, 1, NULL, 0, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0, 0, 0, 0)
INSERT [dbo].[Accounts] ([AccountID], [CustomerId], [AccountName], [AccountNo], [AccountTypeId], [COAId], [Branch], [PassFlag], [BookBalance], [ClearedBalance], [InterestRate], [AccruedInt], [Limit], [LimitFlag], [LimitCheckFlag], [Bal30], [Bal60], [Bal90], [BalOver90], [IntRate30], [IntRate60], [IntRate90], [IntRateOver90], [Closed]) VALUES (262, 115, N'kevin Inv A/c', NULL, 3, 1, NULL, 0, 0.0000, 0.0000, 0, 0.0000, 0.0000, 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
/****** Object:  Table [dbo].[TransactionChainTree]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionChainTree]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TransactionChainTree](
	[NodeId] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
	[Level] [int] NOT NULL,
 CONSTRAINT [PK_TransactionChainTree] PRIMARY KEY CLUSTERED 
(
	[NodeId] ASC,
	[ParentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tree]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tree]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tree](
	[NodeId] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
	[Level] [int] NOT NULL,
 CONSTRAINT [PK_Tree] PRIMARY KEY CLUSTERED 
(
	[NodeId] ASC,
	[ParentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UK_Level] UNIQUE NONCLUSTERED 
(
	[NodeId] ASC,
	[Level] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 07/11/2023 15:26:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transactions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Transactions](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionTypeId] [int] NOT NULL,
	[AccountID] [int] NOT NULL,
	[Amount] [money] NOT NULL,
	[PostDate] [datetime] NOT NULL,
	[RecordDate] [datetime] NOT NULL,
	[ValueDate] [datetime] NULL,
	[Narrative] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ForcePostFlag] [bit] NULL,
	[StatementFlag] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Authorizer] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UserID] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Reference] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContraReference] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Transactions] ON
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (368, 2, 104, -1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (369, 2, 260, 1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (370, 2, 104, -1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (371, 2, 260, 1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (372, 2, 104, -1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (373, 2, 260, 1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (374, 2, 104, -1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (375, 2, 260, 1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (376, 2, 104, -1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (377, 2, 260, 1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (378, 2, 104, -1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (379, 2, 260, 1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (380, 2, 104, -1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (381, 2, 260, 1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (382, 2, 104, -1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (383, 2, 260, 1000.0000, CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), CAST(0x0000A33B00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (384, 3, 260, -600.0000, CAST(0x0000A33C00000000 AS DateTime), CAST(0x0000A33C00000000 AS DateTime), CAST(0x0000A33C00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (385, 3, 104, 600.0000, CAST(0x0000A33C00000000 AS DateTime), CAST(0x0000A33C00000000 AS DateTime), CAST(0x0000A33C00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (386, 3, 105, -12.0000, CAST(0x0000A33C00000000 AS DateTime), CAST(0x0000A33C00000000 AS DateTime), CAST(0x0000A33C00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Transactions] ([TransactionID], [TransactionTypeId], [AccountID], [Amount], [PostDate], [RecordDate], [ValueDate], [Narrative], [ForcePostFlag], [StatementFlag], [Authorizer], [UserID], [Reference], [ContraReference]) VALUES (387, 3, 105, 12.0000, CAST(0x0000A33C00000000 AS DateTime), CAST(0x0000A33C00000000 AS DateTime), CAST(0x0000A33C00000000 AS DateTime), NULL, 0, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Transactions] OFF
/****** Object:  Default [DF_Customers_CreatedDate]    Script Date: 07/11/2023 15:26:39 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Customers_CreatedDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Customers_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END


End
GO
/****** Object:  ForeignKey [FK_Accounts_AccountTypes]    Script Date: 07/11/2023 15:26:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Accounts_AccountTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_AccountTypes] FOREIGN KEY([AccountTypeId])
REFERENCES [dbo].[AccountTypes] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Accounts_AccountTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Accounts]'))
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_AccountTypes]
GO
/****** Object:  ForeignKey [FK_NodeNode]    Script Date: 07/11/2023 15:26:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NodeNode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Node]'))
ALTER TABLE [dbo].[Node]  WITH CHECK ADD  CONSTRAINT [FK_NodeNode] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Node] ([NodeId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NodeNode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Node]'))
ALTER TABLE [dbo].[Node] CHECK CONSTRAINT [FK_NodeNode]
GO
/****** Object:  ForeignKey [FK_TransactionChainNode_TransactionChainNode]    Script Date: 07/11/2023 15:26:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TransactionChainNode_TransactionChainNode]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransactionChainNode]'))
ALTER TABLE [dbo].[TransactionChainNode]  WITH CHECK ADD  CONSTRAINT [FK_TransactionChainNode_TransactionChainNode] FOREIGN KEY([ParentId])
REFERENCES [dbo].[TransactionChainNode] ([NodeId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TransactionChainNode_TransactionChainNode]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransactionChainNode]'))
ALTER TABLE [dbo].[TransactionChainNode] CHECK CONSTRAINT [FK_TransactionChainNode_TransactionChainNode]
GO
/****** Object:  ForeignKey [FK_TransactionChainTree_TransactionChainNode]    Script Date: 07/11/2023 15:26:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TransactionChainTree_TransactionChainNode]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransactionChainTree]'))
ALTER TABLE [dbo].[TransactionChainTree]  WITH CHECK ADD  CONSTRAINT [FK_TransactionChainTree_TransactionChainNode] FOREIGN KEY([NodeId])
REFERENCES [dbo].[TransactionChainNode] ([NodeId])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TransactionChainTree_TransactionChainNode]') AND parent_object_id = OBJECT_ID(N'[dbo].[TransactionChainTree]'))
ALTER TABLE [dbo].[TransactionChainTree] CHECK CONSTRAINT [FK_TransactionChainTree_TransactionChainNode]
GO
/****** Object:  ForeignKey [FK_Transactions_Accounts]    Script Date: 07/11/2023 15:26:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transactions_Accounts]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transactions]'))
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Accounts] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Accounts] ([AccountID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transactions_Accounts]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transactions]'))
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Accounts]
GO
/****** Object:  ForeignKey [FK_Transactions_TransactionTypes]    Script Date: 07/11/2023 15:26:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transactions_TransactionTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transactions]'))
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_TransactionTypes] FOREIGN KEY([TransactionTypeId])
REFERENCES [dbo].[TransactionTypes] ([TransactionTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Transactions_TransactionTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[Transactions]'))
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_TransactionTypes]
GO
/****** Object:  ForeignKey [FK_NodeTreeNode]    Script Date: 07/11/2023 15:26:39 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NodeTreeNode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tree]'))
ALTER TABLE [dbo].[Tree]  WITH CHECK ADD  CONSTRAINT [FK_NodeTreeNode] FOREIGN KEY([NodeId])
REFERENCES [dbo].[Node] ([NodeId])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NodeTreeNode]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tree]'))
ALTER TABLE [dbo].[Tree] CHECK CONSTRAINT [FK_NodeTreeNode]
GO
