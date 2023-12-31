/****** Object:  Table [dbo].[GSMError]    Script Date: 07/11/2023 15:27:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GSMError]') AND type in (N'U'))
DROP TABLE [dbo].[GSMError]
GO
/****** Object:  Table [dbo].[MessageStore]    Script Date: 07/11/2023 15:27:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessageStore]') AND type in (N'U'))
DROP TABLE [dbo].[MessageStore]
GO
/****** Object:  Table [dbo].[MessageStore]    Script Date: 07/11/2023 15:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MessageStore]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MessageStore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserDataText] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OriginatingAddress] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SCTimestamp] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MessageStatus] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Storage] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SmscAddressType] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SmscAddress] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OriginatingAddressType] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MessageType] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MessageIndex] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MessageBody] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Processed] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_MessageStore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[MessageStore] ON
INSERT [dbo].[MessageStore] ([Id], [UserDataText], [OriginatingAddress], [SCTimestamp], [MessageStatus], [Storage], [SmscAddressType], [SmscAddress], [OriginatingAddressType], [MessageType], [MessageIndex], [MessageBody], [Status], [Processed], [IsDeleted]) VALUES (69, N'FC70VQ860 Confirmed.
You have received Ksh1,000.00 from
FRANCIS MURAYA 254715413144
on 25/5/14 at 4:37 PM
New M-PESA balance is Ksh1,000.00.PIN YAKO SIRI YAKO', N'MPESA', N'5/25/2014 4:37:48 PM +0300', N'Read', N'SM', N'', N'', N'208', N'SmsDeliver', N'1', N'FC70VQ860 Confirmed.
You have received Ksh1,000.00 from
FRANCIS MURAYA 254715413144
on 25/5/14 at 4:37 PM
New M-PESA balance is Ksh1,000.00.PIN YAKO SIRI YAKO', N'ReceivedRead', 1, NULL)
INSERT [dbo].[MessageStore] ([Id], [UserDataText], [OriginatingAddress], [SCTimestamp], [MessageStatus], [Storage], [SmscAddressType], [SmscAddress], [OriginatingAddressType], [MessageType], [MessageIndex], [MessageBody], [Status], [Processed], [IsDeleted]) VALUES (70, N'FB76UR265 Confirmed.
You have received Ksh1,000.00 from
FRANCIS MURAYA 254715413144
on 17/5/14 at 6:34 PM
New M-PESA balance is Ksh1,007.00.PIN YAKO SIRI YAKO', N'MPESA', N'5/17/2014 6:34:42 PM +0300', N'Read', N'SM', N'', N'', N'208', N'SmsDeliver', N'2', N'FB76UR265 Confirmed.
You have received Ksh1,000.00 from
FRANCIS MURAYA 254715413144
on 17/5/14 at 6:34 PM
New M-PESA balance is Ksh1,007.00.PIN YAKO SIRI YAKO', N'ReceivedRead', 1, NULL)
INSERT [dbo].[MessageStore] ([Id], [UserDataText], [OriginatingAddress], [SCTimestamp], [MessageStatus], [Storage], [SmscAddressType], [SmscAddress], [OriginatingAddressType], [MessageType], [MessageIndex], [MessageBody], [Status], [Processed], [IsDeleted]) VALUES (71, N'FB03CD316 Confirmed.
You have received Ksh1,000.00 from
FRANCIS MURAYA 254715413144
on 11/5/14 at 9:46 PM
New M-PESA balance is Ksh1,004.00.PIN YAKO SIRI YAKO', N'MPESA', N'5/11/2014 9:46:52 PM +0300', N'Read', N'SM', N'', N'', N'208', N'SmsDeliver', N'5', N'FB03CD316 Confirmed.
You have received Ksh1,000.00 from
FRANCIS MURAYA 254715413144
on 11/5/14 at 9:46 PM
New M-PESA balance is Ksh1,004.00.PIN YAKO SIRI YAKO', N'ReceivedRead', 1, NULL)
SET IDENTITY_INSERT [dbo].[MessageStore] OFF
/****** Object:  Table [dbo].[GSMError]    Script Date: 07/11/2023 15:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GSMError]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GSMError](
	[ErrorCode] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ErrorText] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [aaaaaGSMError_PK] PRIMARY KEY NONCLUSTERED 
(
	[ErrorCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 0 	', N'Phone failure')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 1 	', N'No connection to phone')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 10', N'	SIM not inserted')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 100', N'	Unknown error')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 103', N'	Illegal MS')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 106', N'	Illegal ME')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 107', N'	GPRS services not allowed')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 11', N'	SIM PIN required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 111', N'	PLMN not allowed')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 112', N'	Location area not allowed')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 113', N'	Roaming not allowed in this location area')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 12', N'	SIM PUK required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 126', N'	Operation temporary not allowed')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 13', N'	SIM failure')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 132', N'	Service operation not supported')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 133', N'	Requested service option not subscribed')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 134', N'	Service option temporary out of order')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 14', N'	SIM busy')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 148', N'	Unspecified GPRS error')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 149', N'	PDP authentication failure')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 15', N'	SIM wrong')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 150', N'	Invalid mobile class')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 16', N'	Incorrect password')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 17', N'	SIM PIN2 required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 18', N'	SIM PUK2 required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 2 	', N'Phone adapter link reserved')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 20', N'	Memory full')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 21', N'	Invalid index')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 22', N'	Not found')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 23', N'	Memory failure')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 24', N'	Text string too long')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 25', N'	Invalid characters in text string')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 256', N'	Operation temporarily not allowed')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 257', N'	Call barred')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 258', N'	Phone is busy')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 259', N'	User abort')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 26', N'	Dial string too long')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 260', N'	Invalid dial string')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 261', N'	SS not executed')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 262', N'	SIM Blocked')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 263', N'	Invalid block')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 27', N'	Invalid characters in dial string')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 3 	', N'Operation not allowed')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 30', N'	No network service')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 31', N'	Network timeout')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 32', N'	Network not allowed, emergency calls only')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 4 	', N'Operation not supported')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 40', N'	Network personalization PIN required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 41', N'	Network personalization PUK required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 42', N'	Network subset personalization PIN required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 43', N'	Network subset personalization PUK required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 44', N'	Service provider personalization PIN required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 45', N'	Service provider personalization PUK required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 46', N'	Corporate personalization PIN required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 47', N'	Corporate personalization PUK required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 48', N'	PH-SIM PUK required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 5 	', N'PH_SIM PIN required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 6 	', N'PH_FSIM PIN required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 7 	', N'PH_FSIM PUK required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 772', N'	SIM powered down')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 1 ', N'Unassigned number')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 10 ', N'Call bared')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 111 ', N'Protocol error, unspecified')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 127 ', N'Internetworking , unspecified')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 128 ', N'Telematic internetworking not supported')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 129 ', N'Short message type 0 not supported')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 130 ', N'Cannot replace short message')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 143 ', N'Unspecified TP-PID error')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 144 ', N'Data code scheme not supported')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 145 ', N'Message class not supported')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 159 ', N'Unspecified TP-DCS error')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 160 ', N'Command cannot be actioned')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 161 ', N'Command unsupported')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 175 ', N'Unspecified TP-Command error')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 176 ', N'TPDU not supported')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 192 ', N'SC busy')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 193 ', N'No SC subscription')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 194 ', N'SC System failure')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 195 ', N'Invalid SME address')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 196 ', N'Destination SME barred')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 197 ', N'SM Rejected-Duplicate SM')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 198 ', N'TP-VPF not supported')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 199 ', N'TP-VP not supported')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 208 ', N'D0 SIM SMS Storage full')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 209 ', N'No SMS Storage capability in SIM')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 21 ', N'Short message transfer rejected')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 210 ', N'Error in MS')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 211 ', N'Memory capacity exceeded')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 212 ', N'Sim application toolkit busy')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 213 ', N'SIM data download error')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 255 ', N'Unspecified error cause')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 27 ', N'Destination out of service')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 28 ', N'Unindentified subscriber')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 29 ', N'Facility rejected')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 30 ', N'Unknown subscriber')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 300 ', N'ME Failure')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 301 ', N'SMS service of ME reserved')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 302 ', N'Operation not allowed')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 303 ', N'Operation not supported')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 304 ', N'Invalid PDU mode parameter')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 305 ', N'Invalid Text mode parameter')
GO
print 'Processed 100 total records'
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 310 ', N'SIM not inserted')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 311 ', N'SIM PIN required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 312 ', N'PH-SIM PIN required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 313 ', N'SIM failure')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 314 ', N'SIM busy')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 315 ', N'SIM wrong')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 316 ', N'SIM PUK required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 317 ', N'SIM PIN2 required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 318 ', N'SIM PUK2 required')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 320 ', N'Memory failure')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 321 ', N'Invalid memory index')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 322 ', N'Memory full')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 330 ', N'SMSC address unknown')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 331 ', N'No network service')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 332 ', N'Network timeout')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 340 ', N'No +CNMA expected')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 38 ', N'Network out of order')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 41 ', N'Temporary failure')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 42 ', N'Congestion')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 47 ', N'Recources unavailable')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 50 ', N'Requested facility not subscribed')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 500 ', N'Unknown error')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 512 ', N'User abort')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 513 ', N'Unable to store')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 514 ', N'Invalid Status')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 515 ', N'Device busy or Invalid Character in string')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 516 ', N'Invalid length')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 517 ', N'Invalid character in PDU')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 518 ', N'Invalid parameter')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 519 ', N'Invalid length or character')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 520 ', N'Invalid character in text')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 521 ', N'Timer expired')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 522 ', N'Operation temporary not allowed')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 532 ', N'SIM not ready')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 534 ', N'Cell Broadcast error unknown')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 535 ', N'Protocol stack busy')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 538 ', N'Invalid parameter ')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 69 ', N'Requested facility not implemented')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 8 ', N'Operator determined barring')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 81 ', N'Invalid short message transfer reference value')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 95 ', N'Invalid message unspecified')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 96 ', N'Invalid mandatory information')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 97 ', N'Message type non existent or not implemented')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 98 ', N'Message not compatible with short message protocol')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CMS ERROR: 99 ', N'Information element non-existent or not implemente')
INSERT [dbo].[GSMError] ([ErrorCode], [ErrorText]) VALUES (N'CME ERROR: 515', N'Please wait, init or command in progress')
