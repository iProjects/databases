

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
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (1, N'dataEntryToolStripMenuItem', N'Data Entry Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (2, N'subjectsToolStripMenuItem', N'Subjects Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (3, N'programmesToolStripMenuItem', N'Programmes Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (4, N'teachersToolStripMenuItem', N'Teachers Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (5, N'classesToolStripMenuItem', N'Classes Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (6, N'studentsToolStripMenuItem', N'Students Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (7, N'customersToolStripMenuItem', N'Customers Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (8, N'gradingToolStripMenuItem', N'Grading Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (9, N'attendanceToolStripMenuItem', N'Attendance Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (10, N'roomsToolStripMenuItem', N'Rooms Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (11, N'locationsToolStripMenuItem', N'Locations Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (12, N'disciplineCategoriesToolStripMenuItem', N'Discipline Categories Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (13, N'examsToolStripMenuItem', N'Exams Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (14, N'examPeriodsToolStripMenuItem', N'Exam Periods Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (15, N'examTypesToolStripMenuItem', N'Exam Types Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (16, N'examsListToolStripMenuItem', N'Exams List Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (17, N'registerStudentsToolStripItem', N'Register Students Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (18, N'markSheetToolStripMenuItem', N'Mark Sheet Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (19, N'processExamsToolStripMenuItem', N'Process Exams Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (20, N'examResultsToolStripMenuItem', N'Exam Results Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (21, N'feesToolStripMenuItem', N'Fees Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (22, N'feeStructureToolStripMenuItem', N'Fee Structure Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (23, N'admissionFormToolStripMenuItem', N'Admission Form Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (24, N'generalLedgerToolStripMenuItem', N'General Ledger Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (25, N'chartOfAccountsToolStripMenuItem', N'Chart of Accounts Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (26, N'accountsToolStripMenuItem', N'Accounts Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (27, N'accountTypesToolStripMenuItem', N'Account Types Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (28, N'transactionTypesToolStripMenuItem', N'Transaction Types Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (29, N'transactionsAuthorizationsToolStripMenuItem', N'Transactions Authorization Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (30, N'banksToolStripMenuItem', N'Banks Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (31, N'enquiryToolStripMenuItem', N'Enquiry Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (32, N'postingToolStripMenuItem', N'Postings Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (33, N'payFeesToolStripMenuItem', N'Pay Fees Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (34, N'generalPostsToolStripMenuItem', N'General Posts Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (35, N'reportsToolStripMenuItem', N'Reports Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (36, N'allReportToolStripMenuItem', N'All Reports Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (37, N'readSMSToolStripMenuItem', N'read SMS Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (38, N'administrationToolStripMenuItem', N'Administrator Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (39, N'schoolSetUpToolStripMenuItem', N'School Set Up Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (40, N'rolesToolStripMenuItem', N'Roles Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (41, N'usersToolStripMenuItem', N'Users Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (42, N'rightsToolStripMenuItem', N'Rights Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (43, N'settingsToolStripMenuItem', N'Settings Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (44, N'timeTableToolStripMenuItem', N'Time Table Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (45, N'databaseControlPanelToolStripMenuItem', N'Database Control Panel Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (46, N'uploadDownloadWizardToolStripMenuItem', N'uploadDownloadWizard Sub-Menu')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (47, N'toolStripButtonReports', N'Reports Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (48, N'toolStripButtonStudents', N'Students Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (49, N'toolStripButtonAdmission', N'Admission Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (50, N'toolStripButtonChartofAccounts', N'Chart of Accounts Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (51, N'toolStripButtonGeneralPostings', N'General Postings Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (52, N'toolStripButtonPayFees', N'Pay Fees Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (53, N'toolStripButtonEnquiry', N'Enquiry Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (54, N'toolStripButtonExams', N'Exams Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (55, N'toolStripButtonRegisterStudents', N'Register Students Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (56, N'toolStripButtonMarkSheet', N'Mark Sheet Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (57, N'toolStripButtonProcessExams', N'Process Exams Button')
INSERT [dbo].[spMenus] ([Id], [mnuName], [Description]) VALUES (58, N'toolStripButtonExamResults', N'Exam Results Button')
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
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (1, N'dataEntryToolStripMenuItem', N'Data Entry Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (2, N'subjectsToolStripMenuItem', N'Subjects Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (3, N'programmesToolStripMenuItem', N'Programmes Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (4, N'teachersToolStripMenuItem', N'Teachers Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (5, N'classesToolStripMenuItem', N'Classes Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (6, N'studentsToolStripMenuItem', N'Students Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (7, N'customersToolStripMenuItem', N'Customers Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (8, N'gradingToolStripMenuItem', N'Grading Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (9, N'attendanceToolStripMenuItem', N'Attendance Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (10, N'roomsToolStripMenuItem', N'Rooms Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (11, N'locationsToolStripMenuItem', N'Locations Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (12, N'disciplineCategoriesToolStripMenuItem', N'Discipline Categories Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (13, N'examsToolStripMenuItem', N'Exams Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (14, N'examPeriodsToolStripMenuItem', N'Exam Periods Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (15, N'examTypesToolStripMenuItem', N'Exam Types Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (16, N'examsListToolStripMenuItem', N'Exams List Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (17, N'registerStudentsToolStripItem', N'Register Students Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (18, N'markSheetToolStripMenuItem', N'Mark Sheet Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (19, N'processExamsToolStripMenuItem', N'Process Exams Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (20, N'examResultsToolStripMenuItem', N'Exam Results Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (21, N'feesToolStripMenuItem', N'Fees Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (22, N'feeStructureToolStripMenuItem', N'Fee Structure Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (23, N'admissionFormToolStripMenuItem', N'Admission Form Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (24, N'generalLedgerToolStripMenuItem', N'General Ledger Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (25, N'chartOfAccountsToolStripMenuItem', N'Chart of Accounts Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (26, N'accountsToolStripMenuItem', N'Accounts Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (27, N'accountTypesToolStripMenuItem', N'Account Types Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (28, N'transactionTypesToolStripMenuItem', N'Transaction Types Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (29, N'transactionsAuthorizationsToolStripMenuItem', N'Transactions Authorization Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (30, N'banksToolStripMenuItem', N'Banks Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (31, N'enquiryToolStripMenuItem', N'Enquiry Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (32, N'postingToolStripMenuItem', N'Postings Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (33, N'payFeesToolStripMenuItem', N'Pay Fees Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (34, N'generalPostsToolStripMenuItem', N'General Posts Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (35, N'reportsToolStripMenuItem', N'Reports Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (36, N'allReportToolStripMenuItem', N'All Reports Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (37, N'readSMSToolStripMenuItem', N'read SMS Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (38, N'administrationToolStripMenuItem', N'Administrator Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (39, N'schoolSetUpToolStripMenuItem', N'School Set Up Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (40, N'rolesToolStripMenuItem', N'Roles Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (41, N'usersToolStripMenuItem', N'Users Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (42, N'rightsToolStripMenuItem', N'Rights Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (43, N'settingsToolStripMenuItem', N'Settings Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (44, N'timeTableToolStripMenuItem', N'Time Table Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (45, N'databaseControlPanelToolStripMenuItem', N'Database Control Panel Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (46, N'uploadDownloadWizardToolStripMenuItem', N'uploadDownloadWizard Sub-Menu')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (47, N'toolStripButtonReports', N'Reports Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (48, N'toolStripButtonStudents', N'Students Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (49, N'toolStripButtonAdmission', N'Admission Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (50, N'toolStripButtonChartofAccounts', N'Chart of Accounts Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (51, N'toolStripButtonGeneralPostings', N'General Postings Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (52, N'toolStripButtonPayFees', N'Pay Fees Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (53, N'toolStripButtonEnquiry', N'Enquiry Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (54, N'toolStripButtonExams', N'Exams Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (55, N'toolStripButtonRegisterStudents', N'Register Students Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (56, N'toolStripButtonMarkSheet', N'Mark Sheet Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (57, N'toolStripButtonProcessExams', N'Process Exams Button')
INSERT [dbo].[spMenuItems] ([Id], [mnuName], [Description]) VALUES (58, N'toolStripButtonExamResults', N'Exam Results Button')
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
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (1, N'studentListsToolStripMenuItem', N'Students Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (2, N'teachersListtoolStripMenuItem', N'Teachers Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (3, N'subjectListsToolStripMenuItem', N'Subjects Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (4, N'classListsToolStripMenuItem', N'Classes Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (5, N'programmeCourseListToolStripMenuItem', N'Programme Courses Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (6, N'examResultsToolStripMenuItem', N'Exam Results Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (7, N'examResultsbyClassToolStripMenuItem', N'Exam Results By Class Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (8, N'examResultsbySubjectToolStripMenuItem', N'Exam Results By Subject Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (9, N'examResultsbyExamTypeToolStripMenuItem', N'Exam Results By Exam Type Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (10, N'markSheetTableToolStripMenuItem', N'MarkSheet Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (11, N'preSchoolToolStripMenuItem', N'Pre School Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (12, N'primaryToolStripMenuItem', N'Primary Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (13, N'secondaryToolStripMenuItem', N'Secondary Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (14, N'tertiaryToolStripMenuItem', N'Tertiary Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (15, N'collegeToolStripMenuItem', N'College Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (16, N'universityToolStripMenuItem', N'University Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (17, N'academicReportsToolStripMenuItem', N'Academic Reports Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (18, N'studentAcademicToolStripMenuItem', N'Studen Academic Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (19, N'studentAcademicReportFormToolStripMenuItem', N'Student Academic Report Form Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (20, N'studentAcademicProgressFormToolStripMenuItem', N'Student Academic Progress Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (21, N'studentPerformanceByTargetToolStripMenuItem', N'Student Performance By Target Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (22, N'teacherAcademicToolStripMenuItem', N'Teacher Academic Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (23, N'teacherAcademicRepotFormToolStripMenuItem', N'Teacher Academic Report Form Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (24, N'teachersProgressFormToolStripMenuItem', N'Teacher Progress Report Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (25, N'classAcademicToolStripMenuItem', N'Class Academic Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (26, N'classesReportFormToolStripMenuItem', N'Class Academic Report Form Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (27, N'classesProgressFormToolStripMenuItem', N'Class Progress Report Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (28, N'classesPerformanceByTargetToolStripMenuItem', N'Class Performance By Target Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (29, N'classConsolidatedMarksheetToolStripMenuItem', N'Class Consolidated MarkSheet Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (30, N'schoolAcademicToolStripMenuItem', N'School Academic Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (31, N'schoolsReportFormToolStripMenuItem', N'School Report Form Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (32, N'schoolsProgressFormToolStripMenuItem', N'School Progress Report Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (33, N'schoolPerformanceByTargetToolStripMenuItem', N'School Performance By Target Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (34, N'schoolPerformanceInTheRegionToolStripMenuItem', N'School Performance In The Region Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (35, N'financialReportsToolStripMenuItem', N'Financial Reports Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (36, N'studentFinancialReportToolStripMenuItem', N'Student Financial Report Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (37, N'studentStatementToolStripMenuItem', N'Student Statement Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (38, N'studentAccountStatusToolStripMenuItem', N'Student Account Status Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (39, N'studentArrearsReceivablesToolStripMenuItem', N'Student Arrears Receivables Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (40, N'parentStatementToolStripMenuItem', N'Parent Statement Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (41, N'parentAccountStatusToolStripMenuItem', N'Parent Account status Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (42, N'paymentReceiptsToolStripMenuItem', N'Payment Receipts Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (43, N'studentFeesStructureToolStripMenuItem', N'Student Fee Structure Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (44, N'schoolFinancialReportToolStripMenuItem', N'School Financial Report Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (45, N'generalLToolStripMenuItem', N'General Ledger Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (46, N'profitAndLossToolStripMenuItem', N'Profit and Loss Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (47, N'balanceSheetToolStripMenuItem', N'Balance Sheet Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (48, N'bankStatementToolStripMenuItem', N'Bank Statement Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (49, N'cashBookToolStripMenuItem', N'Cash Book Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (50, N'schoolArrearsReceivablesToolStripMenuItem', N'School Arrears and Receivables Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (51, N'payablesToolStripMenuItem', N'Payables Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (52, N'feesStructureToolStripMenuItem', N'Fee Structure Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (53, N'feeStructurebyClassToolStripMenuItem', N'Fee Structure By Class Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (54, N'feeStructurebyProgrammeToolStripMenuItem', N'Fee Structure By Programme Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (55, N'feeStructurebyAccountTypesToolStripMenuItem', N'Fee Structure By Account Type Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (56, N'nonAcademicReportToolStripMenuItem', N'Non Academic Reports Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (57, N'nonAcademicstudentToolStripMenuItem', N'Non Academic Student Report Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (58, N'disciplineStatusToolStripMenuItem', N'Displine Status Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (59, N'disciplinaryRecordToolStripMenuItem', N'Displinary Record Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (60, N'extraCurriculaToolStripMenuItem', N'Extra Curricular Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (61, N'medicalRecordToolStripMenuItem', N'Medical Record Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (62, N'attendanceRecordToolStripMenuItem', N'Attendance Record Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (63, N'timetableReportToolStripMenuItem', N'Time Table Report Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (64, N'btnAccountStatement', N'Account Statement Button')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (65, N'listsToolStripDropDownButton', N'Lists DropDownButton')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (66, N'studentsListtoolStripMenuItem', N'Students List Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (67, N'teacherListstoolStripMenuItem', N'Teachers Lists Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (68, N'subjectsListstoolStripMenuItem', N'Subjects List Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (69, N'classesListstoolStripMenuItem', N'Classes List Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (70, N'programmesListstoolStripMenuItem', N'Programmes List Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (71, N'reportFormsToolStripDropDownButton', N'Report Forms DropDownButton')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (72, N'studentReportFormToolStripMenuItem', N'Student Report Form Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (73, N'teacherReportFormToolStripMenuItem', N'Teacher Report Form Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (74, N'classReportFormToolStripMenuItem', N'Class Report Form Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (75, N'schoolReportFormToolStripMenuItem', N'School Report Form Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (76, N'progressFormsToolStripDropDownButton', N'Progress Forms DropDownButton')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (77, N'studentProgressFormToolStripMenuItem', N'Student Progress Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (78, N'teacherProgressFormToolStripMenuItem', N'Teacher Progress Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (79, N'classProgressFormToolStripMenuItem', N'Class Progress Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (80, N'schoolProgressFormToolStripMenuItem', N'School Progress Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (81, N'PerformanceByTargetToolStripDropDownButton', N'Performance By Target DropDownButton')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (82, N'studentsPerformanceByTargetsToolStripMenuItem', N'Student Performance By Target Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (83, N'teachersPerformanceByTargetsToolStripMenuItem', N'Teacher Performance By Target Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (84, N'classPerformanceByTargetToolStripMenuItem', N'Class Performance By Target Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (85, N'schoolsPerformanceByTargetsToolStripMenuItem', N'School Performance By Target Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (86, N'examResultsToolStripDropDownButton', N'Exam Results DropDownButton')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (87, N'examsResultsbyClassToolStripMenuItem', N'Exam Results By Class Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (88, N'examsResultsBySubjectsToolStripMenuItem', N'Exam Results By Subjects Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (89, N'examsResultsByExamTypesToolStripMenuItem', N'Exam Results By Exam Types Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (90, N'marksTableFormsToolStripDropDownButton', N'Marks Table DropDownButton')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (91, N'primarySchoolsMarkSheetToolStripMenuItem', N'Primary School Mark Sheet Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (92, N'secondarySchoolsMarkSheetToolStripMenuItem', N'Secondary School Mark Sheet Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (93, N'tertiaryMarkSheetToolStripMenuItem', N'Tertiary Mark Sheet Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (94, N'collegeMarkSheetToolStripMenuItem', N'College Mark Sheet Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (95, N'universityMarkSheetToolStripMenuItem', N'University Mark Sheet Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (96, N'btnSearchbyAccount', N'Search By Account Button')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (97, N'btnSearchbyStudent', N'Search By Student Button')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (98, N'btnSearchExamPeriods', N'Search By Exam Period Button')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (99, N'teacherPerformanceByTargetToolStripMenuItem', N'Teacher Performance By Target Sub-Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (100, N'entityListsToolStripMenuItem', N'Lists Menu')
INSERT [dbo].[spReportsMenuItems] ([Id], [mnuName], [Description]) VALUES (101, N'preSchoolsMarkSheetToolStripMenuItem', N'Pre School Mark Sheet Sub-Menu')
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
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (60, 1, 60, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (61, 1, 61, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (62, 1, 62, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (63, 1, 63, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (64, 1, 64, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (65, 1, 65, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (66, 1, 66, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (67, 1, 67, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (68, 1, 68, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (69, 1, 69, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (70, 1, 70, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (71, 1, 71, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (72, 1, 72, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (73, 1, 73, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (74, 1, 74, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (75, 1, 75, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (76, 1, 76, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (77, 1, 77, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (78, 1, 78, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (79, 1, 79, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (80, 1, 80, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (81, 1, 81, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (82, 1, 82, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (83, 1, 83, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (84, 1, 84, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (85, 1, 85, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (86, 1, 86, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (87, 1, 87, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (88, 1, 88, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (89, 1, 89, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (90, 1, 90, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (91, 1, 91, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (92, 1, 92, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (93, 1, 93, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (94, 1, 94, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (95, 1, 95, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (96, 1, 96, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (97, 1, 97, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (98, 1, 98, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (99, 1, 99, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (100, 1, 100, 1)
INSERT [dbo].[spAllowedReportsRolesMenus] ([Id], [RoleId], [MenuItemId], [Allowed]) VALUES (101, 1, 101, 1)
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
SET IDENTITY_INSERT [dbo].[spAllowedRoleMenusweb] OFF










