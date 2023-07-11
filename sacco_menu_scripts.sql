

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
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (1, N'ClientsToolStripMenuItem', N'Clients Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (2, N'PersonsToolStripMenuItem', N'Persons  Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (3, N'SolidarityGroupsToolStripMenuItem', N'Solidarity Groups Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (4, N'NonSolidarityGroupsToolStripMenuItem', N'Non Solidarity Groups Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (5, N'CorporatesToolStripMenuItem', N'Corporates Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (6, N'dataEntryToolStripMenuItem', N'Data Entry Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (7, N'LoanProductsToolStripMenuItem', N'Loan Products Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (8, N'savingProductsToolStripMenuItem', N'Savings Products Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (9, N'CollateralProductsToolStripMenuItem', N'Collateral Products Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (10, N'ContractsToolStripMenuItem', N'Contracts Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (11, N'SearchContractToolStripMenuItem', N'Search Contracts  Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (12, N'reasignContractsToolStripMenuItem', N'Reassign Contracts  Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (13, N'accountingToolStripMenuItem', N'Accounting Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (14, N'ChartOfAccountsToolStripMenuItem', N'Chart Of Accounts Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (15, N'accountingRulesToolStripMenuItem', N'Accounting Rules Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (16, N'trialBalanceToolStripMenuItem', N'Trial Balance Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (17, N'generalLedgerToolStripMenuItem', N'General Ledger Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (18, N'manualEntriesToolStripMenuItem', N'Manual Entries Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (19, N'standardBookingsToolStripMenuItem', N'Standard Bookings Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (20, N'exportTransactionsToolStripMenuItem', N'Export Transactions Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (21, N'accountClosureToolStripMenuItem', N'Account Closure Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (22, N'financialPeriodToolStripMenuItem', N'Financial Period  Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (23, N'ConfigurationToolStripMenuItem', N'Configuration Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (24, N'UsersToolStripMenuItem', N'Users Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (25, N'rolesToolStripMenuItem', N'Roles Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (26, N'rightstoolStripMenuItem', N'Rights Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (27, N'tellersToolStripMenuItem', N'Tellers Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (28, N'branchesToolStripMenuItem', N'Branches Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (29, N'FundingLinesToolStripMenuItem', N'Funding Lines Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (30, N'economicActivitiesToolStripMenuItem', N'Economic Activities Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (31, N'LocationsToolStripMenuItem', N'Locations Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (32, N'ContractCodeToolStripMenuItem', N'Contract Code Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (33, N'InstallmentTypesToolStripMenuItem', N'Installment Types Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (34, N'exchangeRateToolStripMenuItem', N'Exchange Rates Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (35, N'exoticSchedulesToolStripMenuItem', N'Exotic Schedules Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (36, N'currenciesToolStripMenuItem', N'Currencies Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (37, N'PaymentMethodToolStripMenuItem', N'Payment Methods Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (38, N'ApplicationDateToolStripMenuItem', N'Application Date Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (39, N'generalSettingToolStripMenuItem', N'General Settings Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (40, N'userSettingsToolStripMenuItem', N'User Settings Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (41, N'settingsToolStripMenuItem', N'Settings Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (42, N'customizableFieldsToolStripMenuItem', N'Customizable Fields Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (43, N'ViewToolStripMenuItem', N'View Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (44, N'AuditTrailToolStripMenuItem', N'Audit Trail Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (45, N'tellerManagementToolStripMenuItem', N'Teller Management Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (46, N'tellerOperationsToolStripMenuItem', N'Teller Operations Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (47, N'closeTellerToolStripMenuItem', N'Close Teller Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (48, N'dataBaseManagementToolStripMenuItem', N'DataBase Management Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (49, N'DatabaseControlPanelToolStripMenuItem', N'Database Control Panel Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (50, N'DatabaseMaintenanceToolStripMenuItem', N'Database Maintenance Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (51, N'uploadDownloadWizardToolStripMenuItem', N'Upload Download Wizard Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (52, N'ReportsToolStripMenuItem', N'Reports Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (53, N'clientsReportToolStripMenuItem', N'Clients Report Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (54, N'loansReportToolStripMenuItem', N'Loans Report Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (55, N'savingsReportToolStripMenuItem', N'Savings Report Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (56, N'consolidatedReportToolStripMenuItem', N'Consolidated Report Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (57, N'accountingReportToolStripMenuItem', N'Accounting Report Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (58, N'starredReportToolStripMenuItem', N'Starred Reports Rates Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (59, N'allReportsToolStripMenuItem', N'All Reports Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (60, N'allReportsToolStripButton', N'All Reports Button')
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
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (1, N'ClientsToolStripMenuItem', N'Clients Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (2, N'PersonsToolStripMenuItem', N'Persons  Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (3, N'SolidarityGroupsToolStripMenuItem', N'Solidarity Groups Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (4, N'NonSolidarityGroupsToolStripMenuItem', N'Non Solidarity Groups Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (5, N'CorporatesToolStripMenuItem', N'Corporates Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (6, N'dataEntryToolStripMenuItem', N'Data Entry Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (7, N'LoanProductsToolStripMenuItem', N'Loan Products Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (8, N'savingProductsToolStripMenuItem', N'Savings Products Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (9, N'CollateralProductsToolStripMenuItem', N'Collateral Products Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (10, N'ContractsToolStripMenuItem', N'Contracts Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (11, N'SearchContractToolStripMenuItem', N'Search Contracts  Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (12, N'reasignContractsToolStripMenuItem', N'Reassign Contracts  Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (13, N'accountingToolStripMenuItem', N'Accounting Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (14, N'ChartOfAccountsToolStripMenuItem', N'Chart Of Accounts Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (15, N'accountingRulesToolStripMenuItem', N'Accounting Rules Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (16, N'trialBalanceToolStripMenuItem', N'Trial Balance Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (17, N'generalLedgerToolStripMenuItem', N'General Ledger Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (18, N'manualEntriesToolStripMenuItem', N'Manual Entries Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (19, N'standardBookingsToolStripMenuItem', N'Standard Bookings Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (20, N'exportTransactionsToolStripMenuItem', N'Export Transactions Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (21, N'accountClosureToolStripMenuItem', N'Account Closure Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (22, N'financialPeriodToolStripMenuItem', N'Financial Period  Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (23, N'ConfigurationToolStripMenuItem', N'Configuration Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (24, N'UsersToolStripMenuItem', N'Users Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (25, N'rolesToolStripMenuItem', N'Roles Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (26, N'rightstoolStripMenuItem', N'Rights Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (27, N'tellersToolStripMenuItem', N'Tellers Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (28, N'branchesToolStripMenuItem', N'Branches Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (29, N'FundingLinesToolStripMenuItem', N'Funding Lines Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (30, N'economicActivitiesToolStripMenuItem', N'Economic Activities Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (31, N'LocationsToolStripMenuItem', N'Locations Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (32, N'ContractCodeToolStripMenuItem', N'Contract Code Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (33, N'InstallmentTypesToolStripMenuItem', N'Installment Types Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (34, N'exchangeRateToolStripMenuItem', N'Exchange Rates Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (35, N'exoticSchedulesToolStripMenuItem', N'Exotic Schedules Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (36, N'currenciesToolStripMenuItem', N'Currencies Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (37, N'PaymentMethodToolStripMenuItem', N'Payment Methods Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (38, N'ApplicationDateToolStripMenuItem', N'Application Date Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (39, N'generalSettingToolStripMenuItem', N'General Settings Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (40, N'userSettingsToolStripMenuItem', N'User Settings Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (41, N'settingsToolStripMenuItem', N'Settings Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (42, N'customizableFieldsToolStripMenuItem', N'Customizable Fields Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (43, N'ViewToolStripMenuItem', N'View Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (44, N'AuditTrailToolStripMenuItem', N'Audit Trail Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (45, N'tellerManagementToolStripMenuItem', N'Teller Management Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (46, N'tellerOperationsToolStripMenuItem', N'Teller Operations Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (47, N'closeTellerToolStripMenuItem', N'Close Teller Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (48, N'dataBaseManagementToolStripMenuItem', N'DataBase Management Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (49, N'DatabaseControlPanelToolStripMenuItem', N'Database Control Panel Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (50, N'DatabaseMaintenanceToolStripMenuItem', N'Database Maintenance Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (51, N'uploadDownloadWizardToolStripMenuItem', N'Upload Download Wizard Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (52, N'ReportsToolStripMenuItem', N'Reports Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (53, N'clientsReportToolStripMenuItem', N'Clients Report Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (54, N'loansReportToolStripMenuItem', N'Loans Report Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (55, N'savingsReportToolStripMenuItem', N'Savings Report Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (56, N'consolidatedReportToolStripMenuItem', N'Consolidated Report Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (57, N'accountingReportToolStripMenuItem', N'Accounting Report Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (58, N'starredReportToolStripMenuItem', N'Starred Reports Rates Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (59, N'allReportsToolStripMenuItem', N'All Reports Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (60, N'allReportsToolStripButton', N'All Reports Button')
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
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (1, N'clientsToolStripMenuItem', N'Clents Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (2, N'clientAndLoanStatisticsToolStripMenuItem', N'Client And Loan Statistics Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (3, N'clientInformationToolStripMenuItem', N'Client Information Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (4, N'clientsAndShareOfWomenToolStripMenuItem', N'Client And Share Of Women Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (5, N'statisticsPerGenderToolStripMenuItem', N'Statistics Per Gender Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (6, N'dormantCustomersToolStripMenuItem', N'Dormant Customers Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (7, N'guarantorsToolStripMenuItem', N'Guarantors Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (8, N'oLBPerClientToolStripMenuItem', N'OLB Per Client Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (9, N'badClientsToolStripMenuItem', N'Bad Clients Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (10, N'loan1ToolStripMenuItem', N'Loans 1 Reports Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (11, N'abadonedAndRefusedLoansToolStripMenuItem', N'Abadoned And Refused Loans Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (12, N'anticipatedTotallyRepaidLoansToolStripMenuItem', N'Anticipated Totally Repaid Loans Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (13, N'activeLoansToolStripMenuItem', N'Active Loans Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (14, N'closedContractsToolStripMenuItem', N'Closed Contracts Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (15, N'collateralReportsToolStripMenuItem', N'Collateral Reports Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (16, N'collectionSheetToolStripMenuItem', N'Collection Sheet Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (17, N'loanCompulsorySavingsToolStripMenuItem', N'Loan Compulsary Savings Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (18, N'creditCommitteeToolStripMenuItem', N'Credit Committee Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (19, N'creditLifeInsuranceToolStripMenuItem', N'Credit Life Insurance Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (20, N'disbursementsToolStripMenuItem', N'Disbursements Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (21, N'disbursementsAndReimbursementsToolStripMenuItem', N'Disbursements And Reimbursements Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (22, N'disbursementOfTranchesToolStripMenuItem', N'Disbursements Of Tranches Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (23, N'disbursementsPerActivityToolStripMenuItem', N'Disbursements Per Activity Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (24, N'dropOutReportToolStripMenuItem', N'Drop Out Report Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (25, N'exchangeRateGainLossToolStripMenuItem', N'Exchange Rate Gain Loss Sub-Menu')				 
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (26, N'loanCycleToolStripMenuItem', N'Loan Cycle Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (27, N'loanLossProvisionToolStripMenuItem', N'Loan Loss Provision Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (28, N'loanOfficersDisbursementsAndReimbursementsToolStripMenuItem', N'Loan Officer Disbursements And Reimbursements Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (29, N'loanOfficersOLBAndPaRToolStripMenuItem', N'Loan Officer OLB And PAR Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (30, N'loanRenewalHelperToolStripMenuItem', N'Loan Renewal Helper Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (31, N'loansDisbursedToolStripMenuItem', N'Loans Disbursed Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (32, N'notDisbursedLoansToolStripMenuItem', N'Not Disbursed Loans Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (33, N'loan2ToolStripMenuItem', N'Loan 2 Reports Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (34, N'oLBAndLLPPerLoanToolStripMenuItem', N'OLB And LLP Per Loan Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (35, N'oLBPerCollateralToolStripMenuItem', N'OLB Per Collateral Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (36, N'pARAnalysisToolStripMenuItem', N'PAR Analysis Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (37, N'performingLoansToolStripMenuItem', N'Performing Loans Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (38, N'reassignedLoansToolStripMenuItem', N'ReAssigned Loans Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (39, N'repaymentsToolStripMenuItem', N'Repayments Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (40, N'resheduledLoansToolStripMenuItem', N'ReSheduled Loans Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (41, N'residualMaturityToolStripMenuItem', N'Residual Maturity Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (42, N'writtenOffLoansToolStripMenuItem', N'Written Off Loans Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (43, N'writtenOffPenaltiesToolStripMenuItem', N'Written Off Penalties Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (44, N'savingsToolStripMenuItem', N'Savings Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (45, N'activeSavingsToolStripMenuItem', N'Active Savings Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (46, N'compulsorySavingsToolStripMenuItem', N'Compulsory Savings Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (47, N'savingsContractsToolStripMenuItem', N'Savings Contracts Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (48, N'accountingToolStripMenuItem', N'Accounting Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (49, N'cashBookToolStripMenuItem', N'Cash Book Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (50, N'generalAccountingToolStripMenuItem', N'General Accounting Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (51, N'generalLedgerToolStripMenuItem', N'General Ledger Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (52, N'trialBalanceToolStripMenuItem', N'Trial Balance Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (53, N'consolidatedToolStripMenuItem', N'Consolidated Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (54, N'evolutionOfDisbursementToolStripMenuItem', N'Evolution Of Disbursements Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (55, N'evolutionOfOLBToolStripMenuItem', N'Evolution Of OLB Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (56, N'evolutionOfRepaymentsToolStripMenuItem', N'Evolution Of Repayments Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (57, N'evolutionOfPARToolStripMenuItem', N'Evolution Of PAR Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (58, N'evolutionOfTotalNoOfClientsToolStripMenuItem', N'Evolution Of Total No Of Clients Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (59, N'evolutionOfTotalNoOfContractsToolStripMenuItem', N'Evolution Of Total No Of Contracts Sub-Menu')
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
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (36, 1, 36, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (37, 1, 37, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (38, 1, 38, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (39, 1, 39, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (40, 1, 40, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (41, 1, 41, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (42, 1, 42, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (43, 1, 43, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (44, 1, 44, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (45, 1, 45, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (46, 1, 46, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (47, 1, 47, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (48, 1, 48, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (49, 1, 49, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (50, 1, 50, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (51, 1, 51, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (52, 1, 52, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (53, 1, 53, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (54, 1, 54, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (55, 1, 55, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (56, 1, 56, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (57, 1, 57, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (58, 1, 58, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (59, 1, 59, 1)
INSERT [dbo].[spAllowedRoleMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (60, 1, 60, 1)
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
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (13, 1, 13, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (14, 1, 14, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (15, 1, 15, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (16, 1, 16, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (17, 1, 17, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (18, 1, 18, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (19, 1, 19, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (20, 1, 20, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (21, 1, 21, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (22, 1, 22, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (23, 1, 23, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (24, 1, 24, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (25, 1, 25, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (26, 1, 26, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (27, 1, 27, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (28, 1, 28, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (29, 1, 29, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (30, 1, 30, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (31, 1, 31, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (32, 1, 32, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (33, 1, 33, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (34, 1, 34, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (35, 1, 35, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (36, 1, 36, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (37, 1, 37, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (38, 1, 38, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (39, 1, 39, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (40, 1, 40, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (41, 1, 41, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (42, 1, 42, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (43, 1, 43, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (44, 1, 44, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (45, 1, 45, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (46, 1, 46, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (47, 1, 47, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (48, 1, 48, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (49, 1, 49, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (50, 1, 50, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (51, 1, 51, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (52, 1, 52, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (53, 1, 53, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (54, 1, 54, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (55, 1, 55, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (56, 1, 56, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (57, 1, 57, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (58, 1, 58, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (59, 1, 59, 1)
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
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (36, 1, 36, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (37, 1, 37, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (38, 1, 38, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (39, 1, 39, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (40, 1, 40, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (41, 1, 41, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (42, 1, 42, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (43, 1, 43, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (44, 1, 44, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (45, 1, 45, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (46, 1, 46, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (47, 1, 47, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (48, 1, 48, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (49, 1, 49, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (50, 1, 50, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (51, 1, 51, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (52, 1, 52, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (53, 1, 53, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (54, 1, 54, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (55, 1, 55, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (56, 1, 56, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (57, 1, 57, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (58, 1, 58, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (59, 1, 59, 1)
INSERT [dbo].[spAllowedRoleMenusweb] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (60, 1, 60, 1)
SET IDENTITY_INSERT [dbo].[spAllowedRoleMenusweb] OFF




