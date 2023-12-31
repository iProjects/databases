/****** Object:  Table [dbo].[STO]    Script Date: 07/11/2023 15:25:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STO]') AND type in (N'U'))
DROP TABLE [dbo].[STO]
GO
/****** Object:  Table [dbo].[ValueDatedTransactions]    Script Date: 07/11/2023 15:25:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ValueDatedTransactions]') AND type in (N'U'))
DROP TABLE [dbo].[ValueDatedTransactions]
GO
/****** Object:  Table [dbo].[ValueDatedTransactions]    Script Date: 07/11/2023 15:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ValueDatedTransactions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ValueDatedTransactions](
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
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[STO]    Script Date: 07/11/2023 15:25:39 ******/
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
