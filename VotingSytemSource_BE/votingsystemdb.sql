USE [db_a9fadd_votingsystem]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/17/2023 8:30:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[userName] [varchar](36) NOT NULL,
	[password] [varchar](50) NULL,
	[createAt] [datetime] NOT NULL,
	[status] [bit] NOT NULL,
	[token] [varchar](1200) NULL,
	[roleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Activity]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[activityId] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[content] [nvarchar](500) NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[activityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActivityContent]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityContent](
	[activityContentId] [uniqueidentifier] NOT NULL,
	[content] [nvarchar](500) NOT NULL,
	[activityId] [uniqueidentifier] NOT NULL,
	[candidateId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ActivityContent] PRIMARY KEY CLUSTERED 
(
	[activityContentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Campaign]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaign](
	[campaignId] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](200) NOT NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[description] [nvarchar](500) NULL,
	[visibility] [varchar](10) NOT NULL,
	[imgURL] [varchar](500) NULL,
	[process] [nvarchar](50) NOT NULL,
	[isApprove] [bit] NOT NULL,
	[status] [bit] NOT NULL,
	[userId] [varchar](36) NOT NULL,
	[categoryId] [uniqueidentifier] NOT NULL,
	[visibilityCandidate] [bit] NOT NULL,
	[representative] [bit] NOT NULL,
	[publishTheResult] [bit] NOT NULL,
 CONSTRAINT [PK_Campaign] PRIMARY KEY CLUSTERED 
(
	[campaignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[candidateId] [uniqueidentifier] NOT NULL,
	[description] [nvarchar](800) NULL,
	[fullName] [nvarchar](100) NULL,
	[avatarURL] [varchar](500) NULL,
	[status] [bit] NOT NULL,
	[userId] [varchar](36) NULL,
	[campaignId] [uniqueidentifier] NOT NULL,
	[groupId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CandidateProfile] PRIMARY KEY CLUSTERED 
(
	[candidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryId] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](200) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Design]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Design](
	[designId] [nchar](10) NOT NULL,
	[textColor] [varchar](100) NULL,
	[Icon] [varchar](1000) NULL,
	[backgroundImage] [varchar](1000) NULL,
	[description1] [nvarchar](1000) NULL,
	[description2] [nvarchar](1000) NULL,
	[description3] [nvarchar](1000) NULL,
	[description4] [nvarchar](1000) NULL,
	[logo1] [varchar](1000) NULL,
	[logo2] [varchar](1000) NULL,
	[logo3] [varchar](1000) NULL,
	[logo4] [varchar](1000) NULL,
	[time1] [varchar](50) NULL,
	[time2] [varchar](50) NULL,
	[time3] [varchar](50) NULL,
	[time4] [varchar](50) NULL,
 CONSTRAINT [PK_Design] PRIMARY KEY CLUSTERED 
(
	[designId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Element]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Element](
	[elementId] [uniqueidentifier] NOT NULL,
	[content] [nvarchar](100) NULL,
	[status] [bit] NOT NULL,
	[questionId] [uniqueidentifier] NOT NULL,
	[score] [decimal](10, 0) NOT NULL,
 CONSTRAINT [PK_Element] PRIMARY KEY CLUSTERED 
(
	[elementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[feedBackId] [uniqueidentifier] NOT NULL,
	[content] [nvarchar](100) NULL,
	[createDate] [date] NOT NULL,
	[status] [bit] NOT NULL,
	[userId] [varchar](36) NOT NULL,
	[campaignId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[feedBackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Form]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Form](
	[formId] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[visibility] [varchar](10) NOT NULL,
	[isApprove] [bit] NOT NULL,
	[status] [bit] NOT NULL,
	[categoryId] [uniqueidentifier] NOT NULL,
	[userId] [varchar](36) NOT NULL,
 CONSTRAINT [PK_Form] PRIMARY KEY CLUSTERED 
(
	[formId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[groupId] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[isVoter] [bit] NOT NULL,
	[description] [nvarchar](200) NULL,
	[campaignId] [uniqueidentifier] NOT NULL,
	[isStudentMajor] [bit] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[groupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupUser]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupUser](
	[groupUserId] [uniqueidentifier] NOT NULL,
	[userId] [varchar](36) NOT NULL,
	[groupId] [uniqueidentifier] NOT NULL,
	[campaignId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_GroupUser] PRIMARY KEY CLUSTERED 
(
	[groupUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoryAction]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryAction](
	[historyActionId] [uniqueidentifier] NOT NULL,
	[description] [nvarchar](500) NULL,
	[time] [datetime] NOT NULL,
	[typeActionId] [uniqueidentifier] NOT NULL,
	[userId] [varchar](36) NOT NULL,
 CONSTRAINT [PK_HistoryAction] PRIMARY KEY CLUSTERED 
(
	[historyActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[notificationId] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[message] [nvarchar](200) NOT NULL,
	[createDate] [date] NOT NULL,
	[isRead] [bit] NOT NULL,
	[status] [bit] NOT NULL,
	[username] [varchar](36) NOT NULL,
	[campaignId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[notificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[questionId] [uniqueidentifier] NOT NULL,
	[content] [nvarchar](100) NOT NULL,
	[status] [bit] NOT NULL,
	[formId] [uniqueidentifier] NOT NULL,
	[typeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[questionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratio]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratio](
	[ratioGroupId] [uniqueidentifier] NOT NULL,
	[proportion] [float] NOT NULL,
	[groupVoterId] [uniqueidentifier] NOT NULL,
	[campaignId] [uniqueidentifier] NOT NULL,
	[groupCandidateId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Ratio] PRIMARY KEY CLUSTERED 
(
	[ratioGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleId] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[roleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[scoreId] [uniqueidentifier] NOT NULL,
	[point] [float] NOT NULL,
	[candidateId] [uniqueidentifier] NOT NULL,
	[stageId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Score] PRIMARY KEY CLUSTERED 
(
	[scoreId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage](
	[stageId] [uniqueidentifier] NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[content] [nvarchar](500) NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[process] [nvarchar](50) NOT NULL,
	[limitVote] [int] NOT NULL,
	[isUseForm] [bit] NOT NULL,
	[status] [bit] NOT NULL,
	[campaignId] [uniqueidentifier] NOT NULL,
	[formId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Stage] PRIMARY KEY CLUSTERED 
(
	[stageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[typeId] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](200) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[typeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeAction]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeAction](
	[typeActionId] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeAction] PRIMARY KEY CLUSTERED 
(
	[typeActionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userId] [varchar](36) NOT NULL,
	[fullName] [nvarchar](100) NULL,
	[phone] [varchar](12) NULL,
	[gender] [nvarchar](10) NULL,
	[address] [nvarchar](50) NULL,
	[dob] [date] NULL,
	[email] [varchar](55) NULL,
	[avatarURL] [varchar](500) NULL,
	[status] [bit] NOT NULL,
	[permission] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voting]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voting](
	[votingId] [uniqueidentifier] NOT NULL,
	[sendingTime] [datetime] NOT NULL,
	[visibility] [varchar](10) NULL,
	[status] [bit] NOT NULL,
	[ratioGroupId] [uniqueidentifier] NOT NULL,
	[userId] [varchar](36) NOT NULL,
	[candidateId] [uniqueidentifier] NOT NULL,
	[stageId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Voting] PRIMARY KEY CLUSTERED 
(
	[votingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VotingDetail]    Script Date: 11/17/2023 8:30:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VotingDetail](
	[votingDetailId] [uniqueidentifier] NOT NULL,
	[createTime] [datetime] NOT NULL,
	[elementId] [uniqueidentifier] NOT NULL,
	[votingId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_VotingDetail] PRIMARY KEY CLUSTERED 
(
	[votingDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([roleId])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[ActivityContent]  WITH CHECK ADD  CONSTRAINT [FK_ActivityContent_Activity] FOREIGN KEY([activityId])
REFERENCES [dbo].[Activity] ([activityId])
GO
ALTER TABLE [dbo].[ActivityContent] CHECK CONSTRAINT [FK_ActivityContent_Activity]
GO
ALTER TABLE [dbo].[ActivityContent]  WITH CHECK ADD  CONSTRAINT [FK_ActivityContent_Candidate] FOREIGN KEY([candidateId])
REFERENCES [dbo].[Candidate] ([candidateId])
GO
ALTER TABLE [dbo].[ActivityContent] CHECK CONSTRAINT [FK_ActivityContent_Candidate]
GO
ALTER TABLE [dbo].[Campaign]  WITH CHECK ADD  CONSTRAINT [FK_Campaign_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([categoryId])
GO
ALTER TABLE [dbo].[Campaign] CHECK CONSTRAINT [FK_Campaign_Category]
GO
ALTER TABLE [dbo].[Campaign]  WITH CHECK ADD  CONSTRAINT [FK_Campaign_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Campaign] CHECK CONSTRAINT [FK_Campaign_User]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_Group] FOREIGN KEY([groupId])
REFERENCES [dbo].[Group] ([groupId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_Group]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_CandidateProfile_Campaign] FOREIGN KEY([campaignId])
REFERENCES [dbo].[Campaign] ([campaignId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_CandidateProfile_Campaign]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_CandidateProfile_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_CandidateProfile_User]
GO
ALTER TABLE [dbo].[Element]  WITH CHECK ADD  CONSTRAINT [FK_Element_Question] FOREIGN KEY([questionId])
REFERENCES [dbo].[Question] ([questionId])
GO
ALTER TABLE [dbo].[Element] CHECK CONSTRAINT [FK_Element_Question]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_Campaign] FOREIGN KEY([campaignId])
REFERENCES [dbo].[Campaign] ([campaignId])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_Campaign]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_User]
GO
ALTER TABLE [dbo].[Form]  WITH CHECK ADD  CONSTRAINT [FK_Form_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([categoryId])
GO
ALTER TABLE [dbo].[Form] CHECK CONSTRAINT [FK_Form_Category]
GO
ALTER TABLE [dbo].[Form]  WITH CHECK ADD  CONSTRAINT [FK_Form_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Form] CHECK CONSTRAINT [FK_Form_User]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Campaign] FOREIGN KEY([campaignId])
REFERENCES [dbo].[Campaign] ([campaignId])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Campaign]
GO
ALTER TABLE [dbo].[GroupUser]  WITH CHECK ADD  CONSTRAINT [FK_GroupUser_Campaign] FOREIGN KEY([campaignId])
REFERENCES [dbo].[Campaign] ([campaignId])
GO
ALTER TABLE [dbo].[GroupUser] CHECK CONSTRAINT [FK_GroupUser_Campaign]
GO
ALTER TABLE [dbo].[GroupUser]  WITH CHECK ADD  CONSTRAINT [FK_GroupUser_Group] FOREIGN KEY([groupId])
REFERENCES [dbo].[Group] ([groupId])
GO
ALTER TABLE [dbo].[GroupUser] CHECK CONSTRAINT [FK_GroupUser_Group]
GO
ALTER TABLE [dbo].[GroupUser]  WITH CHECK ADD  CONSTRAINT [FK_GroupUser_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[GroupUser] CHECK CONSTRAINT [FK_GroupUser_User]
GO
ALTER TABLE [dbo].[HistoryAction]  WITH CHECK ADD  CONSTRAINT [FK_HistoryAction_TypeAction] FOREIGN KEY([typeActionId])
REFERENCES [dbo].[TypeAction] ([typeActionId])
GO
ALTER TABLE [dbo].[HistoryAction] CHECK CONSTRAINT [FK_HistoryAction_TypeAction]
GO
ALTER TABLE [dbo].[HistoryAction]  WITH CHECK ADD  CONSTRAINT [FK_HistoryAction_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[HistoryAction] CHECK CONSTRAINT [FK_HistoryAction_User]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([userName])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Account]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Campaign] FOREIGN KEY([campaignId])
REFERENCES [dbo].[Campaign] ([campaignId])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Campaign]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Form] FOREIGN KEY([formId])
REFERENCES [dbo].[Form] ([formId])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Form]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Type] FOREIGN KEY([typeId])
REFERENCES [dbo].[Type] ([typeId])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Type]
GO
ALTER TABLE [dbo].[Ratio]  WITH CHECK ADD  CONSTRAINT [FK_Ratio_Campaign] FOREIGN KEY([campaignId])
REFERENCES [dbo].[Campaign] ([campaignId])
GO
ALTER TABLE [dbo].[Ratio] CHECK CONSTRAINT [FK_Ratio_Campaign]
GO
ALTER TABLE [dbo].[Ratio]  WITH CHECK ADD  CONSTRAINT [FK_Ratio_Group] FOREIGN KEY([groupVoterId])
REFERENCES [dbo].[Group] ([groupId])
GO
ALTER TABLE [dbo].[Ratio] CHECK CONSTRAINT [FK_Ratio_Group]
GO
ALTER TABLE [dbo].[Ratio]  WITH CHECK ADD  CONSTRAINT [FK_Ratio_Group1] FOREIGN KEY([groupCandidateId])
REFERENCES [dbo].[Group] ([groupId])
GO
ALTER TABLE [dbo].[Ratio] CHECK CONSTRAINT [FK_Ratio_Group1]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_Candidate] FOREIGN KEY([candidateId])
REFERENCES [dbo].[Candidate] ([candidateId])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_Candidate]
GO
ALTER TABLE [dbo].[Score]  WITH CHECK ADD  CONSTRAINT [FK_Score_Stage] FOREIGN KEY([stageId])
REFERENCES [dbo].[Stage] ([stageId])
GO
ALTER TABLE [dbo].[Score] CHECK CONSTRAINT [FK_Score_Stage]
GO
ALTER TABLE [dbo].[Stage]  WITH CHECK ADD  CONSTRAINT [FK_Stage_Campaign] FOREIGN KEY([campaignId])
REFERENCES [dbo].[Campaign] ([campaignId])
GO
ALTER TABLE [dbo].[Stage] CHECK CONSTRAINT [FK_Stage_Campaign]
GO
ALTER TABLE [dbo].[Stage]  WITH CHECK ADD  CONSTRAINT [FK_Stage_Form] FOREIGN KEY([formId])
REFERENCES [dbo].[Form] ([formId])
GO
ALTER TABLE [dbo].[Stage] CHECK CONSTRAINT [FK_Stage_Form]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Account] FOREIGN KEY([userId])
REFERENCES [dbo].[Account] ([userName])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Account]
GO
ALTER TABLE [dbo].[Voting]  WITH CHECK ADD  CONSTRAINT [FK_Voting_CandidateProfile] FOREIGN KEY([candidateId])
REFERENCES [dbo].[Candidate] ([candidateId])
GO
ALTER TABLE [dbo].[Voting] CHECK CONSTRAINT [FK_Voting_CandidateProfile]
GO
ALTER TABLE [dbo].[Voting]  WITH CHECK ADD  CONSTRAINT [FK_Voting_Ratio] FOREIGN KEY([ratioGroupId])
REFERENCES [dbo].[Ratio] ([ratioGroupId])
GO
ALTER TABLE [dbo].[Voting] CHECK CONSTRAINT [FK_Voting_Ratio]
GO
ALTER TABLE [dbo].[Voting]  WITH CHECK ADD  CONSTRAINT [FK_Voting_Stage] FOREIGN KEY([stageId])
REFERENCES [dbo].[Stage] ([stageId])
GO
ALTER TABLE [dbo].[Voting] CHECK CONSTRAINT [FK_Voting_Stage]
GO
ALTER TABLE [dbo].[Voting]  WITH CHECK ADD  CONSTRAINT [FK_Voting_User] FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Voting] CHECK CONSTRAINT [FK_Voting_User]
GO
ALTER TABLE [dbo].[VotingDetail]  WITH CHECK ADD  CONSTRAINT [FK_VotingDetail_Element] FOREIGN KEY([elementId])
REFERENCES [dbo].[Element] ([elementId])
GO
ALTER TABLE [dbo].[VotingDetail] CHECK CONSTRAINT [FK_VotingDetail_Element]
GO
ALTER TABLE [dbo].[VotingDetail]  WITH CHECK ADD  CONSTRAINT [FK_VotingDetail_Voting] FOREIGN KEY([votingId])
REFERENCES [dbo].[Voting] ([votingId])
GO
ALTER TABLE [dbo].[VotingDetail] CHECK CONSTRAINT [FK_VotingDetail_Voting]
GO
INSERT [dbo].[Role] ([roleId], [name]) VALUES (N'b49a878f-14ba-4b41-9866-02c1b45a4d87', N'user')
INSERT [dbo].[Role] ([roleId], [name]) VALUES (N'ec878698-e2fd-407c-8455-20a11dfff313', N'admin')
INSERT [dbo].[Role] ([roleId], [name]) VALUES (N'8dd26d32-eb73-4a75-abb6-40c509c36af3', N'moderator')
GO
INSERT [dbo].[Account] ([userName], [password], [createAt], [status], [token], [roleId]) VALUES (N'admin ', N'adminsystem1@', CAST(N'2023-06-14T08:16:03.470' AS DateTime), 1, N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJBZG1pbiIsIlVzZXJuYW1lIjoiYWRtaW4gIiwiUm9sZU5hbWUiOiJhZG1pbiIsIkF2YXRhciI6IiIsImlhdCI6IjExLzE3LzIwMjMgMTozNDowNiBBTSIsImV4cCI6MTcwMjc3Njg0NiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo0NDMwOSIsImF1ZCI6Imh0dHA6Ly9sb2NhbGhvc3Q6NDQzMDkifQ.3jT-UbSsCj3CwbqpVtJ1INJuLCLMZUo-Bc9QUaVvJXk', N'ec878698-e2fd-407c-8455-20a11dfff313')
INSERT [dbo].[Account] ([userName], [password], [createAt], [status], [token], [roleId]) VALUES (N'moderator', N'modersystem@', CAST(N'2023-08-04T08:16:03.470' AS DateTime), 1, N'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJVc2VyIiwiVXNlcm5hbWUiOiJtb2RlcmF0b3IiLCJSb2xlTmFtZSI6InVzZXIiLCJBdmF0YXIiOiJodHRwczovL3Jlcy5jbG91ZGluYXJ5LmNvbS9keGV2bHV3eXIvaW1hZ2UvdXBsb2FkL3YxNjk2MTMwMjI2L2JhM284Ym44bzZ6c3czemtqMGh0LmpwZyIsIlBlcm1pc3Npb24iOiIwIiwiaWF0IjoiMTEvMTUvMjAyMyA4OjM1OjM5IEFNIiwiZXhwIjoxNzAyNjI5MzM5LCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjQ0MzA5IiwiYXVkIjoiaHR0cDovL2xvY2FsaG9zdDo0NDMwOSJ9.YR8iC-7DxfhiFb8x8a5-h_Vb6BJmjsM_nouKpYuiraE', N'b49a878f-14ba-4b41-9866-02c1b45a4d87')
GO
INSERT [dbo].[Category] ([categoryId], [name], [description]) VALUES (N'f21abaa7-4582-4165-8748-09003227d402', N'Nhạc cụ', N'Chủ đề Nhạc cụ')
INSERT [dbo].[Category] ([categoryId], [name], [description]) VALUES (N'8171e2f0-43f8-471f-b750-3023011075ca', N'Giáo dục', NULL)
INSERT [dbo].[Category] ([categoryId], [name], [description]) VALUES (N'c34ba2e1-249e-4781-90ca-3990708bdff1', N'Thời trang', NULL)
INSERT [dbo].[Category] ([categoryId], [name], [description]) VALUES (N'7edb6147-85c3-4495-b19c-40589b7068e6', N'Công nghệ', NULL)
INSERT [dbo].[Category] ([categoryId], [name], [description]) VALUES (N'bd57d22e-f1e9-43c7-8888-a7f499806e86', N'Âm nhạc', N'string')
INSERT [dbo].[Category] ([categoryId], [name], [description]) VALUES (N'c5172c41-df9d-4ef0-8864-f0dbed0a5cb8', N'Ẩm thực', N'Chủ đề Ẩm thực')
GO
INSERT [dbo].[User] ([userId], [fullName], [phone], [gender], [address], [dob], [email], [avatarURL], [status], [permission]) VALUES (N'admin', N'huynh linh', N'822878279', N'undefined', N'thôn 3 hồng sơn hàm thuận bắc', CAST(N'2022-09-29' AS Date), NULL, NULL, 1, 0)
INSERT [dbo].[User] ([userId], [fullName], [phone], [gender], [address], [dob], [email], [avatarURL], [status], [permission]) VALUES (N'moderator', N'huynh ngoc linh', N'09654523651', N'female', N'thôn 3 hồng sơn hàm thuận bắc', CAST(N'2000-09-21' AS Date), NULL, N'https://res.cloudinary.com/dxevluwyr/image/upload/v1696130226/ba3o8bn8o6zsw3zkj0ht.jpg', 1, 0)
GO
INSERT [dbo].[Campaign] ([campaignId], [title], [startTime], [endTime], [description], [visibility], [imgURL], [process], [isApprove], [status], [userId], [categoryId], [visibilityCandidate], [representative], [publishTheResult]) VALUES (N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'Inspiring Instructor Awards 2024', CAST(N'2023-11-10T20:45:00.000' AS DateTime), CAST(N'2023-11-13T21:00:00.000' AS DateTime), N'Danh hiệu Inspiring Instructor Awards 2023 nhằm tôn vinh những nỗ lực, cống hiến của Giảng viên trong hành trình trao truyền kiến thức và cảm hứng đến sinh viên FPTU HCMC trong 3 học kỳ: Fall 2024, Spring 2024 và Summer 2024.', N'public', N'https://res.cloudinary.com/damhzdy3d/image/upload/v1699623529/abzr17nkcw3lvzmvmll4.jpg', N'Đang diễn ra', 1, 1, N'moderator', N'8171e2f0-43f8-471f-b750-3023011075ca', 0, 1, 1)
GO
INSERT [dbo].[Activity] ([activityId], [title], [content]) VALUES (N'09f3d562-b33d-48df-b094-859060fb27a6', N'Phong cách', NULL)
INSERT [dbo].[Activity] ([activityId], [title], [content]) VALUES (N'62737f1d-b959-4c57-ae8a-cb208ee98681', N'Sở thích', NULL)
INSERT [dbo].[Activity] ([activityId], [title], [content]) VALUES (N'1accf43f-a46f-45ae-8f06-f647bc2ef77b', N'Kinh nghiệm làm việc', NULL)
GO
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'14f0fd26-773f-4890-87fa-075d457e0646', N'Kỹ thuật phần mềm', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'14f0fd26-773f-4890-87fa-075d457e0647', N'An toàn thông tin', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'50df15f5-fe7e-4147-993b-0aa1dba1c514', N'Trí tuệ nhân tạo', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'8330ef31-27a6-4dd0-b17f-0f8de51431ce', N'Bộ môn Hoạt hình kỹ thuật số', 0, N'CN-Khối ngành Ngôn ngữ và Mỹ thuật', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'6101f9ff-55e1-4785-914f-216dadfbfae5', N'Bộ môn Tiếng Anh dự bị', 0, N'NC-Bộ môn Tiếng Anh dự bị', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'659f2617-9bc6-448a-9c77-26766e61c507', N'Ngôn ngữ Anh', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'566fa89f-5730-45cc-b97d-2842ba1199e7', N'Bộ môn Âm nhạc Truyền thống', 0, N'NC-Bộ môn Âm nhạc Truyền thống', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'b4be795e-566b-4530-880b-2ac2b3d4b7bf', N'Ngôn ngữ Nhật', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'f297cb0d-d09b-4dd1-86c7-2e6db62e19dc', N'Thiết kế Mỹ thuật số', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d', N'Bộ môn Quản trị Truyền thông đa phương tiện', 0, N'CN-Khối ngành Quản trị doanh nghiệp', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'Giai đoạn chuyên ngành (HK7-HK9)', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'cea89216-80f4-4134-8283-49f5c4aa7f74', N'Quản trị Truyền thông Đa phương tiện', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'5ca3197a-7eba-4384-ac4f-4d55819a85ac', N'Bộ môn tiếng Nhật', 0, N'CN-Khối ngành Ngôn ngữ và Mỹ thuật', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'Giai đoạn chuyên ngành (HK1-HK6)', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'577a94cd-3348-4ff7-9229-5d8012001b36', N'Bộ môn Quản trị doanh nghiệp', 0, N'CN-Khối ngành Quản trị doanh nghiệp', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'41916b33-4112-40d1-ac21-641a4cc1b0f3', N'Quản trị Khách sạn', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'767eb343-6f9b-4dfe-af17-662d089b58e3', N'Bộ môn Thiết kế đồ họa', 0, N'CN-Khối ngành Ngôn ngữ và Mỹ thuật', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'29f70d7d-94ea-41dc-b67b-67f9aad0c738', N'Bộ môn Tiếng Anh chuyên ngành', 0, N'CN-Khối ngành Ngôn ngữ và Mỹ thuật', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'66473545-ec63-4b4f-b7ff-7b993585f9aa', N'Bộ môn Quản trị Du lịch và khách sạn', 0, N'CN-Khối ngành Quản trị doanh nghiệp', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'2a2265c6-7b1a-4c29-949e-8de6d5457c19', N'Hệ thống thông tin', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'647be514-4a6a-4298-991d-912af5d16921', N'Giai đoạn dự bị', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'2ce4515d-7d52-4a20-82cc-92a65034ea27', N'Quản trị Dịch vụ Du lịch & Lữ hành', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'b06488dc-b436-4157-9d47-932b358e571e', N'Bộ môn CF', 0, N'CN-Khối ngành Kỹ thuật và Bộ môn Toán', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'111d4efc-6098-4276-a44c-a86962dca96c', N'Digital Marketing', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'56f08509-9ac1-4afb-be44-ae34072d1bc6', N'Bộ môn Phát triển khởi nghiệp', 0, N'NC-Bộ môn Phát triển khởi nghiệp', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'ce92cc69-b114-44b1-99c3-b60cff142c83', N'Kinh Doanh Quốc tế', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'98d60b6d-5c5e-4cdb-b289-be92ffc77206', N'Bộ môn Kỹ năng mềm', 0, N'NC-Bộ môn Kỹ năng mềm', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'018af142-72f3-46d8-a4ad-cd068cb0176d', N'Bộ môn Chính trị', 0, N'CN-Bộ môn Chính trị', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'399f187a-6aeb-4007-93d6-cd9c46ddeecd', N'Tài chính', 1, N'string', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'a18cc0b0-0781-4861-bfa2-d4f5e0668700', N'Bộ môn An toàn thông tin', 0, N'CN-Khối ngành Kỹ thuật và Bộ môn Toán', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'c5a820f6-1093-4355-80be-d814ae0dfad0', N'Bộ môn Toán', 0, N'CN-Khối ngành Kỹ thuật và Bộ môn Toán', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'629f5ee8-ec95-4b68-aa52-d8df60015bf6', N'Bộ môn Kỹ thuật phần mềm', 0, N'CN-Khối ngành Kỹ thuật và Bộ môn Toán', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2', N'Bộ môn Giáo dục thể chất', 0, N'NC-Bộ môn Giáo dục thể chất', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 1)
INSERT [dbo].[Group] ([groupId], [name], [isVoter], [description], [campaignId], [isStudentMajor]) VALUES (N'20603233-ff86-4a9b-96e1-f8d6abe6980b', N'Bộ môn ITS', 0, N'CN-Khối ngành Kỹ thuật và Bộ môn Toán', N'6097a517-11ad-4105-b26a-0e93bea2cb43', 0)
GO
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'57e08590-07f6-489f-88d0-00cb2868e323', NULL, N'Hoàng Thị Tố Loan', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'ea898ff3-5beb-4f3e-ae6c-0148edd56923', N'Người không vì mình, trời tru đất diệt". Nếu không học vì mình thì vì ai? Nếu không hạnh phúc vì mình thì vì ai?', N'Lê Thùy Trang', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878751/L%C3%AA_Thu%E1%BB%B3_Trang_Eng_ef2o93_dilke0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'2b56460d-4716-4a3f-bd69-0228097dc71c', NULL, N'Lê Thị Bích Loan', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'7b2392c0-2fe6-404a-a91c-0325af1b087d', N'Mục tiêu của giáo dục nên là thúc đẩy tính tự lập, ham học hỏi, tư duy và ý chí sáng tạo không ngừng của người học chứ không nên chỉ tập trung vào điểm số và bằng cấp', N'Nguyễn Thị Bích Phương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881643/Nguy%E1%BB%85n_Th%E1%BB%8B_B%C3%ADch_Ph%C6%B0%C6%A1ng_-_Eng_zgr0c3_osu3aq.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'6d910bb0-01f0-49e2-9ba0-03475d5a1b04', N'Hãy học để có kiến thức, điểm số sẽ tự đến', N'Lê Đình Thắng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880568/L%C3%AA_%C4%90%C3%ACnh_Th%E1%BA%AFng_Maths_mgiamp_sjmt9d.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'6901097d-902a-4a45-aabb-03645eade4b1', N'You define your own life. Don''t let other people write your script. - Oprah Winfrey -', N'Phạm Ngọc Trung', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697882891/Ph%E1%BA%A1m_Ng%E1%BB%8Dc_Trung_Eng_shhosy_zh9z1a.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'75125018-5dde-48c6-90dd-0372d39ca095', NULL, N'Nguyễn Phạm Hoàng Châu', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'9dfaebee-e2ca-4eed-a59f-038f0b9e9116', NULL, N'Nguyễn Minh Ngọc Quỳnh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'd753d425-a06d-4e7f-abba-03de52638645', N'Hãy tin tưởng vào khả năng của chính mình, vì không ai có thể biết bạn có thể làm gì cho đến khi bạn thực sự làm', N'Vi Văn Vương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697882937/Vi_V%C4%83n_V%C6%B0%C6%A1ng_%C3%82m_nh%E1%BA%A1c_Truy%E1%BB%81n_th%E1%BB%91ng_q8ghgf_ohlqpk.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'65864e43-456b-470d-a17d-0490ca1e1c7b', N'Đầu tư vào tri thức luôn là khoản đầu tư đúng đắn. Cố gắng lên nào, rồi bạn có thể làm được', N'Phương Ngô Kim', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697882974/Ph%C6%B0%C6%A1ng_Ng%C3%B4_Kim_Jap_wzkfnl_kadcq7.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'c54b578b-e1f1-43ee-acb1-06e8b88ce1f0', NULL, N'Mai Thanh Tuấn', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881255/Mai_Thanh_Tu%E1%BA%A5n_CF_ita3ci_r56mma.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'e3fece1f-e0b1-4343-be19-07b73bda8a71', N'Đừng để mình là sản phẩm của kì vọng quá mức, hãy trở thành phiên bản tốt hơn của mình, kiên trì, kỉ luật với bản thân, thành công sẽ đến với bạn', N'Nguyễn Ba Lê', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881563/Nguy%E1%BB%85n_Ba_L%C3%AA_Biz_kj3tci_ssistv.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0086b502-04f6-4d02-ad0a-08237937683e', NULL, N'Lê Phát Minh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'696a1801-200f-4674-b208-084d3eb4f4ea', NULL, N'Lâm Thị Hoàng Diễm', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'2e095a42-026f-4463-b06f-09bd4887b561', N'Người biết đủ sẽ luôn luôn hạnh phúc', N'Nguyễn Thị Kiều Ân', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881647/Nguy%E1%BB%85n_Th%E1%BB%8B_Ki%E1%BB%81u_%C3%82n_Maths_tzwvvg_kvmv3x.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'c9a6e905-35ce-41b7-8964-09f592320dbd', NULL, N'Nguyễn Phùng Khởi Phụng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'db8e66c8-4668-4ef4-9496-0b433a1edcf2', NULL, N'Đỗ Vũ Thiện Nhân', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'1e52273c-f218-48db-a090-0bfdab47fa57', N'Hãy đi học vì tương lai, đừng vì deadline!', N'Huỳnh Phạm Ngọc Lâm', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880383/Hu%E1%BB%B3nh_Ph%E1%BA%A1m_Ng%E1%BB%8Dc_L%C3%A2m_GD_lt1rip_zfnpvh.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'491e8095-43ac-4c37-8ad3-127f3e5d7093', NULL, N'Đoàn Nguyễn Thành Hòa', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'3b49ab6e-d81a-4011-a3f2-12bc05ad77eb', N'Đừng lo lắng vì mình bước đi không nhanh như các bạn khác. Điều quan trọng là bạn phải xác định rõ được đích đến của mình ở đâu và hãy cố gắng đi nhanh hơn bước đi của mình ngày hôm qua', N'Phạm Thị Kim Long', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697882895/Ph%E1%BA%A1m_Th%E1%BB%8B_Kim_Long_%C3%82m_nh%E1%BA%A1c_Truy%E1%BB%81n_th%E1%BB%91ng_zj4upj_o5qnzo.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'8da3ccd4-dbdc-4462-8fe8-12d9ca75929e', NULL, N'Nguyễn Hoàng Phương Linh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'4a330758-f793-4136-8a56-1324190aaef4', NULL, N'Nguyễn Kim Ngân', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'c9c78a6c-167b-4d1a-9048-14944bb68835', NULL, N'Lâm Kỳ Phương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'8330ef31-27a6-4dd0-b17f-0f8de51431ce')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'faec2f36-c0e2-4459-8273-14fd8ff5bea2', NULL, N'Xa Doãn Hồng Lợi', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'7eacff6f-6345-444e-afbe-1546787fcc37', NULL, N'Hồ Hải', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'a18cc0b0-0781-4861-bfa2-d4f5e0668700')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'5b5212d8-f869-4bc3-9fc9-15c85fe804df', NULL, N'Lê Vũ Trường', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'8ace1c6a-6f98-4803-86bf-15ecfd7a8cff', N'Lone eagles, soaring in the clouds, fly with silent, peaceful poise. - William Arthur Ward -', N'Hoàng Vũ Quốc Anh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880039/Ho%C3%A0ng_V%C5%A9_Qu%E1%BB%91c_Anh_MC_yzm5ap_uw7jm5.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'edbf68a3-76b7-45af-a5d0-1612948f7aa9', N'Học tập không phải là một nhiệm vụ, mà là một cơ hội để mở rộng tầm mắt và tâm hồn của bạn', N'Đỗ Thị Ngọc Diễm', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878917/%C4%90%E1%BB%97_Th%E1%BB%8B_Ng%E1%BB%8Dc_Di%E1%BB%85m_Eng.P_zebb4h_ydmjyo.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'4c8e86df-2aa4-4b8d-95d2-1639b0b14c21', NULL, N'Võ Hoàng Minh Vân', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'f5b93874-1945-4a33-bdc1-177c477eb0ae', NULL, N'Nguyễn Mai Lan', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'4838181e-a55a-451b-b702-18f9ffc2ccdb', NULL, N'Nguyễn Duy Minh Tuệ', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'bf8794bb-9857-4a03-bb9e-19f6afd51d1b', NULL, N'Vũ Thanh Phong', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'14c98a14-64b9-413c-855a-1c9b30b59d9b', N'Có đi mới tới.', N'Phan Hồng Trung', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883843/Phan_H%E1%BB%93ng_Trung_CF_wutfpi_lif1kk.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'f944f091-2bf0-472f-8558-218ca2313df0', N'Học như chinh phục người yêu, cứ dành thời gian cho người yêu thì sẽ điều thú vị sẽ đến', N'Nguyễn Khánh An', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881622/Nguy%E1%BB%85n_Kh%C3%A1nh_An_%C3%82m_nh%E1%BA%A1c_Truy%E1%BB%81n_th%E1%BB%91ng_xpvs1i_fe6qgd.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'd75a6b20-e7c4-4b9f-b58f-21f0433e8a05', NULL, N'Trần Hòa Phú', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'c10613a3-1e96-4fbb-8f11-24aabbfa2903', NULL, N'Nguyễn Thị Hoài Nương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'ef7d7be5-c524-4aba-9024-24bf6c9b8178', N'The longer the wait, the sweeter the fruit.
 
Có nỗ lực thì sẽ đạt được thành công', N'Phó Thị Mỹ Hạnh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883036/Ph%C3%B3_Th%E1%BB%8B_M%E1%BB%B9_H%E1%BA%A1nh_Biz_mluvxf_qfkdr2.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'ec8c77f1-ecf2-46ec-98f2-25f93d3ea8c2', N'Có chí thì nên', N'Nguyễn Thị Thanh Nhàn', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881653/Nguy%E1%BB%85n_Th%E1%BB%8B_Thanh_Nh%C3%A0n_Biz_zx7mfk_xh60tn.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'01aa2e98-88b9-4fe9-97a8-2643da89cdf8', N'We chose to go to the moon. We choose to go to the moon in this decade and do the other things not because they are easy, but because they are hard. Because that goal will serve to organize and measure the best of our energies and skills, because that challenge is one that we’re willing to accept. - John F. Kennedy -', N'Nguyễn Trần Hương Thảo', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881659/Nguy%E1%BB%85n_Tr%E1%BA%A7n_H%C6%B0%C6%A1ng_Th%E1%BA%A3o_MC_qjbyb4_dfy1bt.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0cf35988-9037-44f6-b652-26be44ffa2cc', NULL, N'Lê Thị Mỹ Danh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'09edb769-ce5d-463e-8486-273bbfb1fa79', N'Đừng chỉ làm việc siêng năng, hãy làm việc thông minh!', N'Hoàng Phương Thảo', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697879774/Ho%C3%A0ng_Ph%C6%B0%C6%A1ng_Th%E1%BA%A3o_MC_sffnfl_gkyvid.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'772b83a4-7456-4fd3-9631-285e0c427ebc', N'Học là hành trình không bao giờ kết thúc. Hãy khám phá, học hỏi và trưởng thành mỗi ngày để trở thành phiên bản tốt hơn của chính bạn', N'Đồng Quin', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697879238/%C4%90%E1%BB%93ng_Quin_ED_kkt3vz_dnt9qo.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'56f08509-9ac1-4afb-be44-ae34072d1bc6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'36853d01-f8e4-4596-85e7-28702a1e3236', NULL, N'Nguyễn Đức Lợi', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b64b246e-4801-4389-a155-288c5c49b108', NULL, N'Lê Tiến Dũng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'a18cc0b0-0781-4861-bfa2-d4f5e0668700')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'2cb49145-2db0-4874-9b36-28cebf8e8695', N'Hãy làm những gì bạn có thể với tất cả những gì bạn có', N'Hồ Trúc Chi', N'https://res.cloudinary.com/damhzdy3d/image/upload/v1699437547/candidate/H%E1%BB%93_Tr%C3%BAc_Chi_Eng_p1zdb7_bs2eg6.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'8c89a085-8a67-4423-8eb7-294cf79c1f85', NULL, N'Dương Thị Thúy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0b850c8a-ff96-4ec3-8c87-2c88fc6e7057', N'Với mình công việc giảng dạy tại bộ môn Âm nhạc truyền thống ngoài sự đam mê còn là niềm vui lớn, vì qua đó các bạn sinh viên sẽ cảm nhận được phần nào các giá trị văn hóa truyền thống tốt đẹp của dân tộc thông qua âm nhạc', N'Lê Thị Bích Hợp', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880687/L%C3%AA_Th%E1%BB%8B_B%C3%ADch_H%E1%BB%A3p_%C3%82m_nh%E1%BA%A1c_Truy%E1%BB%81n_th%E1%BB%91ng_eroifz_w1yppu.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'7a2f92bf-bff3-4beb-9b33-2dd5314e9051', NULL, N'Nguyễn Anh Tuấn', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'05eaca61-085d-4bbd-a2e2-2e79115ee175', NULL, N'Nguyễn Thị Anh Thư', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'18efcc9c-112d-4379-b8a7-2f3d6030afc5', NULL, N'Nguyễn Đăng Quang', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'96df1aae-48d4-4718-b58c-2fe437d6e428', NULL, N'Hoàng Hà', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'232590b4-f3a6-4c9d-b256-3096bcb6de1b', N'Hạnh phúc không bắt nguồn từ kết quả, mà ẩn chứa trong quá trình đắm chìm học tập, hãy tận hưởng mỗi bước đi, học với tâm hồn đầy tình yêu, để tri thức trở thành cảm hứng vô tận và niềm vui là nguồn năng lượng tiến xa hơn trong hành trình học tập', N'Võ Thị Minh Phương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883243/V%C3%B5_Th%E1%BB%8B_Minh_Ph%C6%B0%C6%A1ng_Biz_jxay11_d3zbxq.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0d0b2533-ffa4-4206-ab4e-317c1de9f55e', NULL, N'Phan Thành Trung', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'c06948b8-9c9f-4c04-9f5a-32f5ad39ad7d', N'Làm việc chăm chỉ, không phàn nàn nhiều, lặng lẽ rèn luyện', N'Nguyễn Vương Hồng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881676/Nguy%E1%BB%85n_V%C6%B0%C6%A1ng_H%E1%BB%93ng_GD_zl6sx6_bdx8eh.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'c83ebc8c-824e-4f6d-9481-3351370264ef', NULL, N'Ngô Đăng Hà An', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'72145aff-2612-48b0-ae41-354fcad32dd4', NULL, N'Trương Đình Hồng Thụy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'3d0984b2-5658-4816-9ff6-3787c9785139', N'You can do it if you really want', N'Đỗ Đình Cường', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878517/%C4%90%E1%BB%97_%C4%90%C3%ACnh_C%C6%B0%E1%BB%9Dng_GD_zvcpwx_xocelw.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'6677148d-aa0c-4462-ade4-3a690e1ee088', N'Always keep smiling and be happy!', N'Đặng Ngọc Minh Đức', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878189/%C4%90%E1%BA%B7ng_Ng%E1%BB%8Dc_Minh_%C4%90%E1%BB%A9c_CF_rwlsda_quo9au.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'925cdca4-2101-4d1c-9668-3b22e07b444d', NULL, N'Trần Đình Gia Bảo', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'2bf36d57-729e-4453-b068-3b42f44d9af1', N'If somebody offers you an amazing opportunity but you are not sure you can do it, say yes – then learn how to do it later! - Richard Branson - ', N'Dư Tiểu Dương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697879237/D%C6%B0_Ti%E1%BB%83u_D%C6%B0%C6%A1ng_Biz_zmnwgo_i3yuub.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'8104ced3-aece-45bf-87b3-3c5519d9aac7', NULL, N'Lương Sơn Bá', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'46069b96-bd03-4a96-88b1-3c997bfb4710', NULL, N'Nguyễn Thiên Thanh Trúc', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'892037f9-9d32-4f43-b7be-3da7b1b28169', N'- Giáo viên là người truyền đạt kiến thức và nhiệt huyết;
- Còn thực hiện tất cả đều phụ thuộc vào bạn;
- Tập trung vào mục tiêu của bạn, đừng nhìn về hướng nào mà hãy nhìn về phía trước;
 - Đừng cố trở nên hoàn hảo, chỉ cần cố gắng trở nên tốt hơn bạn của ngày hôm qua; 
- Tất cả những cố gắng của bạn đều là hi vọng và niềm tự hào của những người bạn thương yêu ', N'Trương Kim Kiều Giang', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883335/Tr%C6%B0%C6%A1ng_Kim_Ki%E1%BB%81u_Giang_Gi%C3%A1o_d%E1%BB%A5c_th%E1%BB%83_ch%E1%BA%A5t_jp3yv5_vwvfqa.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'8b8dc113-e749-435d-9873-40eab70e7f0a', N'Nhà là nơi chốn ấm áp và cũng là nơi đầu tiên chúng ta biết ít nhất một ngôn ngữ. Sau này nếu có cơ hội biết thêm nhiều ngôn ngữ thì cảnh cửa thế giới sẽ mở ra và khi đi đến đâu, các em đều có nhà ở đó', N'Trần Anh Thư', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883949/Tr%E1%BA%A7n_Anh_Th%C6%B0_Jap_copy_dfz2gi_tqjybi.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'dad872ee-d68a-4b24-ac1c-42717cc723de', NULL, N'Nguyễn Thị Kim Nguyệt', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'1734da8d-4ecf-449e-aaf1-427936a1195d', NULL, N'Bùi Thanh Hùng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'6ce770bf-b8d9-4850-83b2-431c7f1c40c1', N'Có câu "nghệ thuật vị nhân sinh", nhưng "có thực mới vực được đạo", và sau tất cả "con người quyết định mọi việc". Kiến thức và kỹ năng có thể tốt dần theo thời gian, miễn là chúng ta có chủ đích và  đặt cái tâm vào những việc mình làm', N'Phan Bảo Châu', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697884004/Phan_B%E1%BA%A3o_Ch%C3%A2u_Thi%E1%BA%BFt_k%E1%BA%BF_m%E1%BB%B9_thu%E1%BA%ADt_s%E1%BB%91_ncp0hx_oisjfd.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'8330ef31-27a6-4dd0-b17f-0f8de51431ce')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'c1568c74-b62c-4de8-aeb0-43fcbd4e79c7', NULL, N'Lê Việt Hà', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'69424c14-6444-48d9-b52d-44fdcd62c6d1', NULL, N'Bùi Hữu Đông', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'449daf40-1078-4e4f-815a-4689d637ca34', NULL, N'Nguyễn Long Quốc', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'2a1f8398-70e9-4dae-bf0d-46b2d575ee4f', NULL, N'Trần Thiên Lâm', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'3f7f0404-9a72-476e-85f9-472f2b5fac79', NULL, N'Nguyễn Văn Cường', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'afcae172-e98a-4e86-ae3c-475359a6bf30', N'We are all ordinary. We are all boring. We are all spectacular. We are all shy. We are all bold. We are all heroes. We are all helpless. It just depends on the day. - Brad Meltzer - ', N'Đỗ Trần Ngọc Anh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878917/%C4%90%E1%BB%97_Tr%E1%BA%A7n_Ng%E1%BB%8Dc_Anh_Eng_dgg9qp_gztz2a.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'4329b286-4762-41e1-855a-484bc817acc5', NULL, N'Trần Thanh Nguyên', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'23b06719-6280-44c4-8ff9-4bbf4638f8f1', N'Go confidently in the direction of your dreams! Live the life you''ve imagined. - Henry David Thoreau -', N'Nguyễn Văn Tiến', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881667/Nguy%E1%BB%85n_V%C4%83n_Ti%E1%BA%BFn_Maths_cxhzml_mntb8h.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'9148d2fc-5fb6-4809-bd37-4be0482a75cb', NULL, N'Võ Nguyên Linh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'c73111fd-d9f0-4b8b-ba23-4d10d87ca86b', NULL, N'Nguyễn Phúc Thịnh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'54dde659-604e-4fea-bbeb-4ec391b86239', NULL, N'Vũ Thị Thanh Thúy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'9d95748a-1ef8-41e3-9619-4ecce3762817', N'Chỉ cần bạn cố gắng mọi việc sẽ thành công!', N'Phạm Hoàng Phước', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697882862/Ph%E1%BA%A1m_Ho%C3%A0ng_Ph%C6%B0%E1%BB%9Bc_Gi%C3%A1o_d%E1%BB%A5c_th%E1%BB%83_ch%E1%BA%A5t_uomcsz_dpofsn.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'972d8862-e061-41cc-8385-4f7e7dcd5811', N'In learning you will teach, and in teaching you will learn', N'Đỗ Huỳnh Bảo Ngọc', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878517/%C4%90%E1%BB%97_Hu%E1%BB%B3nh_B%E1%BA%A3o_Ng%E1%BB%8Dc_Eng.P_ftgtvq_zkrhd9.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'47c26f69-dca4-48e6-a2e3-503454254418', N'Không có gì là không thể thực hiện, các bạn cứ làm với sự tận tâm thì sẽ có ngày đạt được điều bạn mong muốn', N'Nguyễn Tấn Danh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881639/Nguy%E1%BB%85n_T%E1%BA%A5n_Danh_CF_xmr89a_emmhoh.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'9b96fd9a-a265-48d8-aa61-506df04274d1', NULL, N'Hoàng Tùng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'ba855fb2-03a1-4f31-86a3-51ae71bb599e', NULL, N'Nguyễn Tú Thảo', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'ec2a1716-d31b-4622-abfe-52c2e03c5fda', NULL, N'Nguyễn Trọng Tài', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'fb39c8a6-bdf5-49b4-beb5-52c62ad542e5', N'Trong mỗi chúng ta không ai hoàn hảo hết, vậy nên đừng quá tiêu cực với bản thân. Hãy làm những điều mình thích và có trách nhiệm với những điều mình làm. Tìm tòi học hỏi và tạo nên những điều mới mẻ cho cuộc sống đầy thi vị nhé. Thành công không đến với những kẻ lười biếng!!', N'Lê Thị Bảo Châu', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880685/L%C3%AA_Th%E1%BB%8B_B%E1%BA%A3o_Ch%C3%A2u_Gi%C3%A1o_d%E1%BB%A5c_th%E1%BB%83_ch%E1%BA%A5t_kp3rzp_dv7buv.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'6bb19f39-b3cb-415f-a4d8-531a772b384b', NULL, N'Trần Trịnh Mạnh Dũng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'6fd44dda-55b2-4c8f-b318-537b95b7b021', N'Nổ lực hết mình, thành quả sẽ đến', N'Trương Tùng Chinh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883290/Tr%C6%B0%C6%A1ng_T%C3%B9ng_Chinh_Ho%E1%BA%A1t_h%C3%ACnh_K%E1%BB%B9_thu%E1%BA%ADt_s%E1%BB%91_gxtryv_mqmvmf.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'8330ef31-27a6-4dd0-b17f-0f8de51431ce')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'6899cb49-461f-45e6-b3fb-55dd7e549a27', N'Làm điều mình thích là tự do, thích điều mình làm là hạnh phúc', N'Vũ Thị Thuỳ Dương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883249/V%C5%A9_Th%E1%BB%8B_Thu%E1%BB%B3_D%C6%B0%C6%A1ng_CF_bts0oy_qkb3sp.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'd6f9f77c-a79e-4629-86c5-56f96a37a8e5', NULL, N'Đỗ Khánh Hòa', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'59a23985-cbec-4022-8d7a-57d4053b419f', N'Kiến thức có đầu, nhưng không có cuối', N'Trần Ngọc Châu', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883367/Tr%E1%BA%A7n_Ng%E1%BB%8Dc_Ch%C3%A2u_Biz_rnsmz5_thhzqw.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'7294fbc6-58e7-47b8-afa5-582f2211a617', NULL, N'Huỳnh Tấn Hội', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'7c5be3ef-5e27-4441-87c9-587d4625634a', N'Kiến thức là kho báu, việc thực hành chính là chìa khóa để mở kho báu đó', N'Nguyễn Trúc Mai Anh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881662/Nguy%E1%BB%85n_Tr%C3%BAc_Mai_Anh_CF_zz6xln_g2epos.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'096700cc-a482-4465-8262-597376be5dc8', N'Khả năng tự học, tự nghiên cứu sẽ giúp bạn thành công 80%', N'Nguyễn Thanh Điền', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881641/Nguy%E1%BB%85n_Thanh_%C4%90i%E1%BB%81n_CF_t5dxzw_ifzmc7.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'aed48a12-52f9-4aa5-88d4-5a4995bb3efc', N'Học đi đôi với hành. Thực hiện phương châm này đúng cách ta sẽ đạt hiệu quả cao trong học tập, tạo điều kiện thuận lợi cho sự nghiệp sau này', N'Mai Hoàng Đỉnh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881251/Mai_Ho%C3%A0ng_%C4%90%E1%BB%89nh_IA_dhvxqa_lu6hwi.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'a18cc0b0-0781-4861-bfa2-d4f5e0668700')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'724e303f-7703-4ed8-8cbc-5c165ce3aeb6', NULL, N'Nguyễn Nguyên Bình', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'87336d3a-53da-4108-943b-5d1bf8450b00', N'Mỗi người là một cá thể riêng biệt, vì thế đừng cố so sánh bản thân hoặc phải thay đổi để được như người khác. Mà thay vào đó hãy hoàn thiện bản thân mình mỗi ngày để trở thành một phiên bản tốt nhất có thể', N'Nguyễn Hoài Khánh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881563/Nguy%E1%BB%85n_Ho%C3%A0i_Kh%C3%A1nh_Jap_pyw3a7_ibyyet.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'68e754ce-8527-4e74-8ea6-5e0181852c29', NULL, N'Nguyễn Thị Kim Ngọc', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'8c2680b7-4753-44a1-99ba-5ebd44d770ec', NULL, N'Hồ Hoàn Kiếm', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697879495/H%E1%BB%93_Ho%C3%A0n_Ki%E1%BA%BFm_CF_lm0x5c_ykwxdr.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'7766fa65-7bbc-4165-9759-5ee755c5cfb2', NULL, N'Hoàng Xuân Hồng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'90cd5e07-1bc5-4962-8cb2-601a53aeb643', NULL, N'Phạm Yên Thao', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'a18cc0b0-0781-4861-bfa2-d4f5e0668700')
GO
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'43fb3ee3-9e8b-4530-a65a-60c95b4f3daf', N'Nước mắt hôm nay, trái ngọt mai sau', N'Nguyễn Ngọc Lâm', N'https://res.cloudinary.com/damhzdy3d/image/upload/v1699437613/candidate/Nguy%E1%BB%85n_Ng%E1%BB%8Dc_L%C3%A2m_SE_xgg2se_xse0er.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'2f79cf29-c808-4aad-8cb5-6191b4754cbe', NULL, N'Đinh Thị Thu Thảo', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'83ba1a03-7d43-4a6d-8fa7-621e0ce82df1', NULL, N'Lê Phú Nguyên', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'542fc155-5d75-465e-8ec4-635bcaae7896', N'Hãy để tương lai cảm ơn về sự cố gắng của bạn ở hiện tại', N'Nguyễn Quốc Cường', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881637/Nguy%E1%BB%85n_Qu%E1%BB%91c_C%C6%B0%E1%BB%9Dng_Gi%C3%A1o_d%E1%BB%A5c_th%E1%BB%83_ch%E1%BA%A5t_slb9rd_nqxynv.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'01a8addd-6b9c-4fc3-a180-64643e20e38d', N'Cứ làm đi đừng sợ, sai thì cô sửa, chỉ có không làm mới không điểm mà thôi', N'Trương Thanh Tuyền', N'https://res.cloudinary.com/damhzdy3d/image/upload/v1699437665/candidate/Tr%C6%B0%C6%A1ng_Thanh_Tuy%E1%BB%81n_Soft_Skill_lzgs1j_eqh2qo.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0618f839-571c-43b8-a2e0-649952c9279c', NULL, N'Nguyễn Thị Thanh Trúc', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'c8de57d7-eaa8-45bb-a20d-6689d8a818fa', NULL, N'Nguyễn Trúc Mai Anh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 0, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'6757b9ba-80af-4eb1-8344-67eb79b54044', NULL, N'Hồ Hoàng Ngọc Thy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'08a4678c-4852-415b-b4d4-6863c3e8b1f3', N'Cố lên em, mọi thứ sẽ ổn!', N'Nguyễn Ngọc My Hà', N'https://res.cloudinary.com/damhzdy3d/image/upload/v1699437706/candidate/Nguy%E1%BB%85n_Ng%E1%BB%8Dc_My_H%C3%A0_GD_exxeah_lg0fda.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'56609e9f-98d4-4917-bd5c-687a63de595d', N'Đừng xấu hổ khi không biết, chỉ xấu hổ khi không học', N'Lê Vũ Trường', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880800/L%C3%AA_V%C5%A9_Tr%C6%B0%E1%BB%9Dng_Maths_f57ipg_ujzhoh.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'f225e739-420f-467e-8043-6896d317b097', N'Kiến thức là vô tận. Hãy học cách tự học', N'Huỳnh Nam', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880038/Hu%E1%BB%B3nh_Nam_CF_hpc4r7_o080ie.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'41b09762-0a63-415f-afda-6994e8caa70c', NULL, N'Mai Văn Duy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'425e7886-dc37-47c2-b081-699e1b2c74b6', N'Ngoài học kiến thức chuyên ngành thật tốt, các bạn nên tham gia các hoạt động ngoại khóa, các câu lạc bộ để trang bị thêm nhiều kiến thức, kỹ năng mềm, những yếu tố đó cũng rất quan trọng cho công việc sau này của các bạn', N'Phạm Công Minh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697882845/Ph%E1%BA%A1m_C%C3%B4ng_Minh_Gi%C3%A1o_d%E1%BB%A5c_th%E1%BB%83_ch%E1%BA%A5t_sqyfr8_znfwgy.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'511213fb-8212-4f9b-b1d7-6a9cededaaf0', N'Trong lòng rất nhiều người đều có than, nhưng để khơi dậy những tài năng này, bạn cần có một ngọn lửa, tức là tự thức tỉnh. Chỉ có một sự thức tỉnh trong chốc lát là không đủ, phải giữ cho những tài năng này bùng cháy, cuối cùng chúng ta mới có thể trở thành nhân tài', N'Vân Ngọc Quỳnh Như', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883114/V%C3%A2n_Ng%E1%BB%8Dc_Qu%E1%BB%B3nh_Nh%C6%B0__fdmpmb_pfzf47.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'66473545-ec63-4b4f-b7ff-7b993585f9aa')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'8f7eaa70-5b04-4b04-a654-6b2dc185945c', N'Cách bạn làm một việc là cách bạn làm mọi việc', N'Nguyễn Ngọc Minh Thư', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881629/Nguy%E1%BB%85n_Ng%E1%BB%8Dc_Minh_Th%C6%B0_Soft_Skill_spfqtq_x2mtoj.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'4cba7b29-5ed0-43e7-a1f7-6e0a3c8e3be4', NULL, N'Trần Đắc Tốt', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'a18cc0b0-0781-4861-bfa2-d4f5e0668700')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'49bba3ea-d679-438b-a3b5-7076aeba9805', NULL, N'Lý Thị Cẩm Linh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0026d522-9530-44b8-88f4-70f6b7bfd70d', N'Chúng ta có thể Thua mọi trận chiến, nhưng chỉ cần Thắng trận cuối cùng', N'Trương Long', N'https://res.cloudinary.com/damhzdy3d/image/upload/v1699437517/candidate/Giang_vien_Tr%C6%B0%C6%A1ng_Long_ipaj7e.jpg', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'20104638-747e-4c80-acc3-710952b6e542', N'Người đẹp nên chơi typo cũng phải đẹp', N'Hoàng Thị Cúc Phương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880036/Ho%C3%A0ng_Th%E1%BB%8B_C%C3%BAc_Ph%C6%B0%C6%A1ng_GD_b6sliv_tiuo6p.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'9ec12c89-1d7c-4f01-bb5e-717d5a3d8fc9', NULL, N'Nguyễn Hoài Nam', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'036ffbdc-97ce-4c8b-b2e9-725e8d454711', NULL, N'Kiều Minh Quyền', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'a37f2950-e45b-4d8a-84ab-726516bc5fd4', NULL, N'Võ Thị Thanh Vân', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'78d80076-7df2-47a7-9687-72735313320a', NULL, N'Bùi Thị Anh Thư', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'3229e56a-5f65-4b17-a1df-73fce7ce8ad2', NULL, N'Nguyễn Quốc Khang', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'fac8fc3c-3d2f-4c9a-ad77-7417e1c1e7bd', N'It’s not who I am underneath, but what I do, that defines me', N'Bùi Bình Khang', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697876357/B%C3%B9i_B%C3%ACnh_Khang_EngP_dpkqaa_chdpdm.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'01931c73-ee9d-4b80-9596-74696872d2aa', NULL, N'Nguyễn Hoàng Yến Như', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'7785d415-08e1-459f-b55b-74abf31719a8', N'Hãy hành động như thể những gì bạn làm tạo ra sự khác biệt', N'Phan Mai Chi', N'https://res.cloudinary.com/damhzdy3d/image/upload/v1699437702/candidate/Phan_Mai_Chi_GD_lsiqjf_gmakyo.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'955fe34c-9878-44f3-8d2e-756f765c40cd', NULL, N'Phan Lê Phong', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'8e294d71-a226-4cb6-a6ab-7574bf6d98a8', N'Âm nhạc là cuộc sống của chúng ta, hãy viết lên giai điệu ở bất cứ nơi nào bạn thích', N'Nguyễn Huy Vương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881621/Nguy%E1%BB%85n_Huy_V%C6%B0%C6%A1ng_%C3%82m_nh%E1%BA%A1c_Truy%E1%BB%81n_th%E1%BB%91ng_thosqs_ri6kwx.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'2ee6b1d2-68d0-4790-88cf-771b2cfe06d2', N'A teacher can open the door but you have to enter by yourself', N'Bhaskar Sen', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697876356/Bhaskar_Sen_CF_yao0om_kku2fs.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'5c4fcf21-9b4a-41fd-80cc-783914ea242b', NULL, N'Nguyễn Trí Thông', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'81b8c401-a09e-4863-965b-79079016ff3e', N'You only got these choices in life: Give up, give in, or give it all you got!

Câu này nhấn mạnh sự quan trọng của việc vượt qua giới hạn cá nhân, sử dụng tối đa kỹ năng, tài năng và nguồn lực của bản thân để dám dấn thân, và kiên trì mặc cho thất bại và khó khăn.

Với những ý nghĩa này, câu khuyến nghị rằng bản thân nên lựa chọn cống hiến hết mình. Đó là tư duy quyết đoán và kiên cường, và đòi hỏi bản thân luôn cập nhật, phải nỗ lực tối đa để đạt được mục tiêu và khám phá tiềm năng của chính mình. Khuyến nghị này khích lệ bản thân không bỏ cuộc, mà tiếp tục đối mặt với thách thức và vượt qua chúng trong công cuộc thích ứng với bối cảnh môi trờng đang hiện hữu xung quanh bản thân!', N'Nguyễn Thị Thới', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881656/Nguy%E1%BB%85n_Th%E1%BB%8B_Th%E1%BB%9Bi_Biz_njzsed_gjlcea.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'c2a83e1e-b016-4214-bcc8-79db639d72bf', N'Hành trình tự thân luôn là hành trình lắm chông gai và cũng nhiều hạnh phúc', N'Nguyễn Văn Bình', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881665/Nguy%E1%BB%85n_V%C4%83n_B%C3%ACnh_Soft_Skill_rlskxv_limlgi.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'018af142-72f3-46d8-a4ad-cd068cb0176d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b01a8eb3-7f65-44c7-ad3b-7a9f5ed51a14', NULL, N'Nguyễn Thị Thùy Hiền', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'58750a88-28cc-4970-bc0e-7cb2a4a99f4a', NULL, N'Đặng Thu Huyền', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'3fd8d196-e728-40ef-b9c0-7f39975ce45b', NULL, N'Nguyễn Hữu Khoa', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'48cf16d8-82ca-410a-ae21-81c556839a2a', NULL, N'Nguyễn Thị Phương Thảo', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'2d5381b1-6efc-4b6a-91f0-82613c0d0f8c', N'Mái hiên nhà người khác có rộng lớn đến đâu cũng không bằng chiếc ô cho của riêng mình', N'Võ Ngọc Hiền', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883275/V%C3%B5_Ng%E1%BB%8Dc_Hi%E1%BB%81n_Biz_ajiz0m_qv8zbe.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'44b223c2-81ae-44d5-9d71-83f4c1d2c5a1', N'Đối với ngành nghệ thuật tạo hình, việc giảng dạy thật khó hoàn hảo, nên mình chỉ mong muốn truyền được niềm đam mê Nghệ thuật của mình đến với các bạn sinh viên. Khi có đam mê các bạn sẽ thực hiện được những tác phẩm bằng con tim, sức lực và sự sáng tạo bất ngờ nhất ', N'Nguyễn Thị Minh Huế', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881649/Nguy%E1%BB%85n_Th%E1%BB%8B_Minh_Hu%E1%BA%BF_GD_ln0wwl_cyd9vt.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'096c47c1-974b-4447-8a9b-83f7449aadfe', N'Be nice, work hard, no excuse', N'Hồ Yên Thục', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697879597/H%E1%BB%93_Y%C3%AAn_Th%E1%BB%A5c_Soft_Skill_niqba6_ghpxbb.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'2c2f69a3-9e74-40e1-84bf-84200df5f8af', N'Education is a serious business, but who said it can''t be seriously fun? I hope to fill this exhilarating adventure with the giggles, the good memories and the ''aha'' moments', N'Tạ Minh Thảo', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697884194/T%E1%BA%A1_Minh_Th%E1%BA%A3o_Biz_nkchdo_pmnagv.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'e887f896-aaf1-4f23-af04-84d01cf71f4d', N'Teacher as a co-learner (giảng viên là người bạn đồng học của sinh viên) - Với mình, mình không dạy sinh viên. Mình chỉ đang đồng hành cùng các bạn ấy trong quá trình trao dồi kiến thức và trải nghiệm cho cả sinh viên và cho chính bản thân mình', N'Trần Vũ Nhật Quỳnh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883376/Tr%E1%BA%A7n_V%C5%A9_Nh%E1%BA%ADt_Qu%E1%BB%B3nh_K%E1%BB%B9_N%C4%83ng_M%E1%BB%81m_mt649g_ebunwx.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0853222f-f6ae-4858-8eea-8740dc37568c', N'Không ai sinh ra trên đời mà giỏi ngay cả, mà đó là quá trình dài của sự tích lũy, học hỏi từng chút mỗi ngày', N'Trương Thị Việt Trinh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883345/Tr%C6%B0%C6%A1ng_Th%E1%BB%8B_Vi%E1%BB%87t_Trinh__xa4yzs_d68cdd.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'9aaff5b2-ef67-49ae-b286-88cb84efb2cf', N'Không gì là không thể, chỉ là bạn muốn hay không muốn', N'Lê Trường Vũ', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880798/L%C3%AA_Tr%C6%B0%E1%BB%9Dng_V%C5%A9_Gi%C3%A1o_d%E1%BB%A5c_th%E1%BB%83_ch%E1%BA%A5t_imptrr_zgwk8c.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'4c7ee020-48f1-494f-90a1-88dbae8d440c', N'Mình vì mọi người, mọi người vì mình', N'Lê Văn Mạnh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880799/L%C3%AA_V%C4%83n_M%E1%BA%A1nh_Maths_yxxv97_yj4rni.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'44ad0034-e9a9-42f8-a211-8ac4ae9ff593', NULL, N'Hoàng Anh Vũ', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'3e33700f-9016-46f0-8799-8b7203471bce', NULL, N'Bùi Bá Hoàng Anh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'7a20a7ba-331b-4b17-b9a6-8df595047a87', NULL, N'Hà Xuân Lĩnh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'8b988aac-aeb0-4abd-8c22-8e5f6db58531', NULL, N'Lý Tuấn Anh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b8d371b0-627e-4acd-a0be-90340f7e5de5', NULL, N'Trần Công Mua', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'dda68c5e-524b-4c0b-a35a-904e392d7c4d', NULL, N'Mai Thị Thùy Dung', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'e7f63ab0-1d7c-4dd2-9365-90a6b4e901ae', NULL, N'Lê Minh Hóa', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'48fa3f65-bd28-4c71-9302-918f39255f93', N'Tôi thích câu nói của tác giả Paulo Coelho trong cuốn sách Nhà giả kim: "Khi bạn muốn điều gì, thì cả vũ trụ sẽ hợp lực giúp bạn đạt được nó". Vì vậy, khi bạn học, bạn hãy luôn nghĩ đến mục tiêu bạn mong muốn, luôn nghĩ đến con người bạn muốn trở thành, tất cả vũ trụ: môi trường FPT, thầy cô, bạn bè sẽ trợ lực cho bạn đạt được ước muốn đó', N'Huỳnh Ngọc Dũng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880096/Hu%E1%BB%B3nh_Ng%E1%BB%8Dc_D%C5%A9ng_Computing_Foundation_yahgnf_gp2kix.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'1f25e4cc-a17c-485c-a3c4-95745ac83321', NULL, N'Lê Phương Anh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'38820bc7-555a-45b6-b4e4-96c52a888c6e', N'Hãy cứ mạnh dạn bắt đầu cuộc hành trình của bạn, và những người hướng dẫn sẽ tự khắc xuất hiện, cũng như bạn sẽ thấy mình có nhiều khả năng và nghị lực hơn bạn từng nghĩ', N'Hồ Trung Chánh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697879631/H%E1%BB%93_Trung_Ch%C3%A1nh_QTDL_KS_hc0eib_nyanjt.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'66473545-ec63-4b4f-b7ff-7b993585f9aa')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'678cbc79-70eb-4309-8424-9883b3a47415', N'Live, love, learn and become better version of yourself', N'Ngô Thị Thanh Dung', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881448/Ng%C3%B4_Th%E1%BB%8B_Thanh_Dung_Soft_Skill_f6s3uj_zz20m1.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'98bcdf80-1a02-4f27-92b5-98d2c0696448', N'Mỗi bài tập, mỗi đoạn code tuy nhỏ nhưng khi em tự viết chúng và chạy được, em có vui không? Chúc mừng em đã tiến thêm một bước tới thành công của chính mình', N'Trương Thị Mỹ Ngọc', N'https://res.cloudinary.com/damhzdy3d/image/upload/v1699437570/candidate/Tr%C6%B0%C6%A1ng_Th%E1%BB%8B_M%E1%BB%B9_Ng%E1%BB%8Dc_CF_wmqgj7_narybb.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'f9c3167f-79a8-4678-9255-98d579ba9a44', N'Những khó khăn nếu có chỉ là tạm thời. Niềm đam mê mới là bất tận. Keep your passion to the end!', N'Nguyễn Tuấn Thanh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881664/Nguy%E1%BB%85n_Tu%E1%BA%A5n_Thanh_QTDL_KS_alzk2w_km4rfy.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'66473545-ec63-4b4f-b7ff-7b993585f9aa')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'a8cc1489-0d3e-41c8-a016-995b1b2e96d4', NULL, N'Huỳnh Thị Mộng Nhi', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'8f77d932-827b-4571-94d4-9a89714aa934', N'Không sợ mắc lỗi, chỉ sợ ngu ngốc! - "Don''t be afraid of making mistakes, be scared of being unwise instead!"', N'Nguyễn Ngọc Ánh Mai', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881626/Nguy%E1%BB%85n_Ng%E1%BB%8Dc_%C3%81nh_Mai_Eng.P_b4egeh_rqzvnt.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0b397561-7e8d-4417-84a8-9b6e78ca5e86', N'Đừng bao giờ nói chữ "Tưởng", sống và làm việc phải có lương tâm và trách nhiệm', N'Trần Thị Tường Vân', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883371/TRAN_THI_TUONG_VAN_EngP_tooqfg_jwob1x.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'29c33792-d3a2-497d-a6e9-9bc59fa2fc2c', NULL, N'Huỳnh Thị Trúc Liễu', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'6ca069e2-01d8-41ca-8a61-9bf38f62b931', NULL, N'Phan Nhật Trung', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'8330ef31-27a6-4dd0-b17f-0f8de51431ce')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'14a02f0e-0576-42b0-930b-9c0ae3453e76', NULL, N'Lâm Khả Hân', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b3f99668-9cda-4f52-a378-9c232c2ec8bf', N'Everything will be Ok. 
Mọi việc rồi sẽ ổn thôi. 
Câu nói đơn giản nhưng giúp các bạn vững tinh thần khi gặp bất kỳ khó khăn trong cuộc sống', N'Lê Thị Hồng Nga', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880688/L%C3%AA_Th%E1%BB%8B_H%E1%BB%93ng_Nga_CF_mii7mz_vgpjmw.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b9e470e7-208a-49ca-a74c-9c28c3119be7', NULL, N'Nguyễn Xuân Phú', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'da85e3da-5031-49d5-b4c1-9c7314c38cba', NULL, N'Nguyễn Quốc Thụy Phương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'1fa9747a-e77c-4cd4-97ad-9cb8b5ec9ade', NULL, N'Đặng Thị Minh Thuyết', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'5ae1bda3-fc55-42f1-b00d-9e20861fdb6c', NULL, N'Nguyễn Thị Minh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'c2a94056-1d59-4c6a-89f0-9e23eaeda899', N'The secret of success is to do the common thing uncommonly well. - John D. Rockefeller Jr -', N'Phan Phương Hảo', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883849/Phan_Ph%C6%B0%C6%A1ng_H%E1%BA%A3o_Soft_Skill_gjapx8_obgqah.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'140d693b-6e05-4fb3-a37d-a2b201c704f4', N'There is a will, there is a way. Play hard, study harder, let''s make your every moment glory', N'Tăng Quang Hiếu', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883945/T%C4%83ng_Quang_Hi%E1%BA%BFu_CF_dzzlod_xytzge.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0afe2cc6-51c1-4315-89a4-a2db4dfa8943', NULL, N'Trần Thị Duyên Phượng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'6f678fad-c090-4f71-addd-a4e7eee153a8', NULL, N'Phan Thanh Huy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'02e4287d-3562-4d16-903c-a7f1341b04e7', N'Người thầy tin tưởng vào khả năng tiềm ẩn của tất cả mọi người, và nỗ lực hết sức để thắp lên niềm tin này trong chính những người đi học, để họ hiểu hơn mình là ai và sử dụng được hết chiều kích năng lực bản thân. Trong chính quá trình ấy, người thầy cũng được học hỏi và trưởng thành ', N'Phạm Nguyễn Ngọc Nguyên', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697882893/Ph%E1%BA%A1m_Nguy%E1%BB%85n_Ng%E1%BB%8Dc_Nguy%C3%AAn_Soft_Skill_yxzfrp_fjyatj.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'21113619-d56d-44c9-afbc-a8864877a7f5', NULL, N'Lê Ngọc Huyền Mi', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'3582d1a3-84c4-4a60-8d44-a940eb81841e', NULL, N'Võ Đức Vĩnh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'a824327b-e0b4-4843-ac15-aa64d426717d', NULL, N'Ngô Khánh Duy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'018af142-72f3-46d8-a4ad-cd068cb0176d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'1317b9d0-7cb8-4d50-9a9b-adb999be5d26', N'Cuộc sống là một hành trình phiêu lưu đầy thú vị, hãy luôn sẵn sàng để khám phá những điều mới lạ và đối mặt với những thử thách bất ngờ. Bởi chính những trải nghiệm đó sẽ giúp các em phát triển và tự do', N'Hồ Trà Giang', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697879675/H%E1%BB%93_Tr%C3%A0_Giang_QTDL_KS_e4wxk0_hel9no.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'3b2b3b57-e0a1-4ec4-9b38-ade80b1d3842', N'"The journey of a thousand miles begins with a single step." _Lao Tzu_           Take baby steps until we make it!', N'Nguyễn Thị Như Ngọc', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881651/Nguy%E1%BB%85n_Th%E1%BB%8B_Nh%C6%B0_Ng%E1%BB%8Dc_Eng.P_eleks1_jlnfvg.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'd89b6aa5-cc41-4749-bfe5-af625dfc8b37', NULL, N'Hoàng Đức Huy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'7becf786-975b-467f-9df2-b06e741c7505', NULL, N'Võ Bảo Trân', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b2688964-a3db-4aee-8cd8-b0ef77c608bc', NULL, N'Võ Thị Minh Phương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'30f167aa-b78e-419c-ad87-b0f2154a1c14', NULL, N'Nguyễn Ngọc Hoàng Trâm', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'06f22918-9a23-4e46-8a34-b1f9bc13c344', NULL, N'Vũ Hương Diệp', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'af67d994-4314-4075-9b65-b1fc0e4d0d9a', NULL, N'Nguyễn Quốc Khánh Như', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'ca20c25b-2b77-4e4d-9067-b218a9ac7fac', N'Giỏi là khi biết mình vẫn… dở. Hãy luôn học hỏi thế giới xung quanh, không ngừng bù đắp kiến thức và kỹ năng, chúng ta sẽ đủ vững mạnh để chinh phục đỉnh cao công nghệ', N'Nguyễn Văn Vịnh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881669/Nguy%E1%BB%85n_V%C4%83n_V%E1%BB%8Bnh_IA_bfowgq_vgfpvq.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'a18cc0b0-0781-4861-bfa2-d4f5e0668700')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'a3f518c8-734d-42ee-89cf-b2b365a7e68c', N'Giáo dục là tấm hộ chiếu cho tương lai, cho ngày mai thuộc về những người chuẩn bị cho nó ngày hôm nay. - Malcolm X -', N'Thân Thị Ngọc Vân', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883944/Th%C3%A2n_Th%E1%BB%8B_Ng%E1%BB%8Dc_V%C3%A2n_CF_rgbxgw_wt3fop.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'a5f75b72-94c7-4677-b75d-b423bbe15128', NULL, N'Phan Thùy Thiên Hương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'1a2e9ac4-a3cb-49d8-89b1-b58d8f3fcebc', N'Dù bản thân có thực sự không giỏi nhưng nếu chúng ta kiên trì nổ lực, một ngày nào đó sẽ nhận ra mình đã mạnh mẽ và ưu tú hơn như thế nào. Hãy tự tin đặt mục tiêu cao hơn và sẵn sàng đón nhận những vấp ngã. Hành trình đi đến thành công có thể rất đơn độc, nhưng đừng sợ hãi vì một người dám độc lập là người mạnh mẽ và bản lĩnh', N'Đặng Diễm Phương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878188/%C4%90%E1%BA%B7ng_Di%E1%BB%85m_Ph%C6%B0%C6%A1ng_Biz_mbxtyn_rvmwen.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'e89fa8e9-a8aa-4c7c-b293-b5a5e1c28b53', NULL, N'Sử Nhật Hạ', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'33d45cb9-f5d8-4d0f-833b-b5cd09ca93fd', N'Be a better version of yourself today than you were yesterday', N'Lê Hà Vân', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880569/L%C3%AA_H%C3%A0_V%C3%A2n_Eng_cdzmlr_ezmxx4.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b6a78577-4823-48a5-8495-b65f9ed6b32d', N'Có 3 điều các bạn cần làm với tư cách sinh viên: Tự chăm sóc tốt bản thân, Trang bị cho mình một kỹ năng hữu dụng và Tận hưởng cuộc sống đại học. Những thứ khác đều không quan trọng', N'Vũ Lê Bảo Trinh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883247/V%C5%A9_L%C3%AA_B%E1%BA%A3o_Trinh_Jap_nwqafd_rwbiar.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'1f669391-ad4e-43f5-a852-b7c59026f352', N'Happiness is not by chance, but by choice', N'Phạm Hoàng Anh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697882846/Ph%E1%BA%A1m_Ho%C3%A0ng_Anh_Jap_ezf6pw_usmcq8.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'5362b771-b6be-4f96-9729-b84714917899', N'Giữ lửa trong tim
Happy Code | Happy Money | Happy Life
Do IT Now - Làm đi chờ chi', N'Nguyễn Thế Hoàng', N'https://res.cloudinary.com/damhzdy3d/image/upload/v1699437479/candidate/Nguy%E1%BB%85n_Th%E1%BA%BF_Ho%C3%A0ng_SE_tu1vvv_sf4m4x.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'12a83a32-550e-4e1a-8c19-b8a2a5b0a1d0', NULL, N'Vũ Chí Cường', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'31cca692-846c-4570-9868-b8cc7b6b7216', NULL, N'Lê Hồng Kỳ', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'fd0c4ccb-a0ad-4eee-908a-b95d5d2ae8ae', N'Life is a matter of choices, and every choice you make makes you. - John C.Maxwell - ', N'Trần Thị Ngọc Huyền', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883369/Tr%E1%BA%A7n_Th%E1%BB%8B_Ng%E1%BB%8Dc_Huy%E1%BB%81n__ykhgwh_hhbwfd.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'66473545-ec63-4b4f-b7ff-7b993585f9aa')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'44a7a7f0-e89d-46a4-bbfb-ba15972182cb', NULL, N'Bùi Thị Thu Thủy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0c6b9569-56f8-4bb8-87d0-ba229dba729b', NULL, N'Trần Công Đời', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'74e00453-d89e-4a84-a67e-ba40d98d5e9e', N'"Whether you think you can or you think you can''t, you''re right." - Henry Ford -', N'Phan Nguyễn Hoài Sang', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883847/Phan_Nguy%E1%BB%85n_Ho%C3%A0i_Sang_Eng.P_a3kzmg_ao8cjz.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
GO
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'90bd2295-46d3-465e-be5d-bbf37b2cad25', N'Hãy là người thầy Hạnh Phúc để có những người trò Hạnh Phúc', N'Nguyễn Thị Diệu Hiền', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881645/Nguy%E1%BB%85n_Th%E1%BB%8B_Di%E1%BB%87u_Hi%E1%BB%81n_Eng_loluoz_r5zbke.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'80ce6d2b-05fe-4fc0-a1b0-bc438fc9627b', NULL, N'Trần Đình Thành', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'774a90a2-2cce-4cbb-bab0-bcac23f69ba9', NULL, N'Ngô Tấn Lâm Huy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'56f08509-9ac1-4afb-be44-ae34072d1bc6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'7d82bbc9-8a8e-4688-9e60-bd93ccf9d738', N'"The only way to do great work is to love what you do." - Steve Jobs - ', N'Phan Hoàng Hà', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883851/Phan_Ho%C3%A0ng_H%C3%A0_Biz_s179il_rvmkmc.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'4f9ef84a-87af-4bf3-a90d-beae8bab77c6', NULL, N'Nguyễn Huỳnh Minh Tâm', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'e22eeda3-c6ea-4943-97ae-bf9c06385ba4', N'Đơn giản, dễ hiểu, đi vào lòng người và ở luôn trong đó!', N'Phan Thị Diệu Hà', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883407/Phan_Th%E1%BB%8B_Di%E1%BB%87u_H%C3%A0_ED_u9nrka_p4z9ze.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'56f08509-9ac1-4afb-be44-ae34072d1bc6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0969d656-cfa8-4d00-ac08-c0210048e8a6', N'Kiên trì là phương thức của hạnh phúc', N'Lại Đức Hùng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880385/L%E1%BA%A1i_%C4%90%E1%BB%A9c_H%C3%B9ng_SE_hmsx67_xp7mk1.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'99fae3ec-be23-4745-a8eb-c042ccea6db4', NULL, N'Nguyễn Minh Hằng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'56f08509-9ac1-4afb-be44-ae34072d1bc6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'18692f7c-d262-43bb-8c7b-c0ad08e053ca', NULL, N'Nguyễn Hoàng Bảo Nguyên', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'32dbd559-beed-4838-80b2-c0d8fb65c402', N'Học là hành trình để biết rằng mình không biết', N'Kiều Thị Thu Chung', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880384/Ki%E1%BB%81u_Th%E1%BB%8B_Thu_Chung_Solf_Skill_j9cn32_zhvr0c.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'018af142-72f3-46d8-a4ad-cd068cb0176d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'fcd5ac0a-7a51-45db-8c37-c1023b158bf9', NULL, N'Hoàng Minh Nam', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'47dda457-e716-4950-8278-c13ac31e9060', N'Ai sinh ra cũng có một tài năng vô hạn! Hãy khám phá trước khi nó hết hạn!', N'Phạm Thị Kim Thúy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697882897/Ph%E1%BA%A1m_Th%E1%BB%8B_Kim_Thu%C3%BD_Maths_kvawn6_cxw9ia.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'ec34f15b-e0bc-4563-9471-c184a580b371', NULL, N'Nguyễn Thị Huyền Trâm', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'56f08509-9ac1-4afb-be44-ae34072d1bc6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b6228f03-3ca5-417d-bb11-c1a01a7874c1', NULL, N'Lê Đình Ngọc Hoàn', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'cd9e0c1b-7315-4687-a7c6-c21130065a6d', N'Đừng đi tìm sự thành công, bạn chỉ cần có niềm đam mê và nỗ lực với nó - thành công sẽ tìm bạn', N'Nguyễn Viết Tân', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881673/Nguy%E1%BB%85n_Vi%E1%BA%BFt_T%C3%A2n_GD_cchok3_shuuv5.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'559cf8dd-8cba-4d7f-9d8a-c3058d043cb8', N'Tái ông thất mã, an tri hoa phúc', N'Nguyễn Thị Thanh Nhàn', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881655/Nguy%E1%BB%85n_Th%E1%BB%8B_Thanh_Nh%C3%A0n_CF_zjgzyq_pemg9l.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'34842e90-7a03-4ffa-89b9-c30be13044e3', NULL, N'La Thị Cẩm Tú', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b7878f0f-5088-40b6-8272-c34fcdf15792', N'Sức mạnh không đến từ năng lực thể chất. Nó xuất phát từ một ý chí bất khuất', N'Hàm Tấn Trà', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697879496/H%C3%A0m_T%C3%A2n_Tr%C3%A0_Gi%C3%A1o_d%E1%BB%A5c_th%E1%BB%83_ch%E1%BA%A5t_svmsmk_ucuden.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'd6592fce-90eb-4eee-81ba-c5853ec9ce3a', N'Hãy học hỏi và lắng nghe từ những người thất bại thay vì những thành công của họ, để chúng ta biết vì sao họ lại thất bại', N'Trần Duy Lâm', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883955/Tr%E1%BA%A7n_Duy_L%C3%A2m_Soft_Skill_mkzijq_ba4xom.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'018af142-72f3-46d8-a4ad-cd068cb0176d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'391a05f3-668a-42b7-b1ba-c6027b987aa3', N'Học để làm. Nhưng hơn thế nữa, học để bao dung!', N'Hoàng Thắng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880035/Ho%C3%A0ng_Th%E1%BA%AFng_Soft_Skill_cqyfxd_srgd0y.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'018af142-72f3-46d8-a4ad-cd068cb0176d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'e286aac9-b63f-4700-83ca-c66fc5314ec9', NULL, N'Lê Võ Minh Thư', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'a819653f-cca8-430d-bf29-c6ebaf3bc459', N'Các em hãy tiếp thu và chọn lọc kiến thức mọi lúc mọi nơi, kết quả các em sẽ thấy ở cuối năm học', N'Đặng Hồng Hiệp', N'https://res.cloudinary.com/damhzdy3d/image/upload/v1699437692/candidate/%C4%90%E1%BA%B7ng_H%E1%BB%93ng_Hi%E1%BB%87p_CF_siym9a_ucq5zu.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'ee3f981c-3fdc-43a8-a825-c7e9caa3f789', N'Không quan trọng bạn có thành công hay không mà quan trọng là bạn không hối hận về những gì bạn đã làm', N'Lê Thanh Tùng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880573/L%C3%AA_Thanh_T%C3%B9ng_CF_bnyw4s_gp4uwt.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'5092c6c6-110e-4fa0-996b-cba4eb015c18', N'Các bạn hãy thành thật, thầy luôn dành cho bạn một lối thoát trong mọi hoàn cảnh', N'Nguyễn Minh Sang', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881623/Nguy%E1%BB%85n_Minh_Sang_SE_copy_mqgyoq_xgsecx.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'cf3e83f6-e258-490c-bdff-ce8aea89d0e4', N'Các bạn phải tự học vì không ai học thế học dùm cho bạn, thầy cô chỉ mang kiến thức còn lại học hay không là chính bản thân các bạn', N'Tống Phước Quan', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883951/T%E1%BB%91ng_Ph%C6%B0%E1%BB%9Bc_Quan_CF_pmkg8i_chwspg.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'f0cb4467-0d7e-41fd-86dd-d05067da459e', NULL, N'Lai Văn Phút', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'e4358526-f2fc-4cdf-9b43-d058b16e0c72', NULL, N'Trần Lê Quang Huy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'8330ef31-27a6-4dd0-b17f-0f8de51431ce')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'84604e55-6d38-4606-b7e3-d0a04fed401a', N'Âm nhạc thực sự sống dậy khi ta đánh đàn bằng cả trái tim. Hãy hòa mình vào âm nhạc, thì những nốt nhạc mới thực sự tỏa sáng!', N'Nguyễn Vi Thảo Uyên', N'https://res.cloudinary.com/damhzdy3d/image/upload/v1699437714/candidate/Nguy%E1%BB%85n_Vi_Th%E1%BA%A3o_Uy%C3%AAn_%C3%82m_nh%E1%BA%A1c_Truy%E1%BB%81n_th%E1%BB%91ng_pt69re_vygyl4.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'4d071491-6f70-427b-b78c-d36a9cdccf1c', NULL, N'Trần Hoàng Bảo Châu', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'5493037c-a472-4e9d-b5d3-d3759e8d98f9', NULL, N'Nguyễn Huyền Trang', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'd554e8a5-c73e-4c81-9c71-d5e64fed1f23', NULL, N'Nguyễn Võ Tâm Như', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'3d9f1275-3e81-4276-b5c9-d73d66255900', N'Đừng bao giờ ngừng học và hết mình với công việc, nó sẽ mở ra cho các bạn nhiều cánh cửa mới và cơ hội quý báu mà các bạn không thể ngờ tới', N'Nguyễn Trần Lê Anh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881661/Nguy%E1%BB%85n_Tr%E1%BA%A7n_L%C3%AA_Anh_MC_eyjzfd_gyrcqq.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'6b0308be-c132-4901-b84b-d79463f4e271', NULL, N'Phạm Huỳnh Đức Minh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'cadeeed4-4d84-4316-90f1-d8052517e5cf', N'It’s not that I’m so smart, it’s just that I stay with problems longer. - Albert Einstein -', N'Trương Thị Thùy Vân', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883342/Tr%C6%B0%C6%A1ng_Th%E1%BB%8B_Thu%E1%BB%B3_V%C3%A2n_Biz_jr35mb_f4kuzr.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'92ee33ae-0373-451b-af75-d91afe30007c', NULL, N'Mai Thế Duy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'66edfc8e-5c3f-4a7a-a4ff-d947a7faa7ca', NULL, N'Đinh Thị Thanh Mai', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'66473545-ec63-4b4f-b7ff-7b993585f9aa')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'd6f7e7e9-6343-4768-b71a-d95a94e3ee44', NULL, N'Nguyễn Hoàng Linh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'78560092-8ddf-4002-93d8-d9e634f79f69', N'Thành công chỉ đến khi chúng ta cố gắng hết sức và không ngừng hoàn thiện bản thân mình. Mọi công việc thành đạt đều nhờ sự kiên trì và lòng say mê! ', N'La Hồng Anh Thi', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880385/La_H%E1%BB%93ng_Anh_Thi_GD_uubpax_j9zlfe.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'e4c2ec17-bcb1-4675-8842-da1810e00953', N'Không gì là không thể chủ yếu mình có muốn làm hay không', N'Dương Huỳnh Dung Hạ', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697879361/D%C6%B0%C6%A1ng_Hu%E1%BB%B3nh_Dung_H%E1%BA%A1_Gi%C3%A1o_d%E1%BB%A5c_th%E1%BB%83_ch%E1%BA%A5t_nxxtff_sxfzk9.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'5d30be07-43d2-48c5-8387-dbd0a07a93bd', N'Cuộc đời là của bạn vì thế đừng cầm bản đồ của người khác để dò đường đi của mình!', N'Nguyễn Thúy Phương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881658/Nguy%E1%BB%85n_Thu%C3%BD_Ph%C6%B0%C6%A1ng_qyeuzx_tuakbl.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'018af142-72f3-46d8-a4ad-cd068cb0176d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'c1801c69-6cdf-441c-b8f4-dc6442eae1bb', NULL, N'Huỳnh Trọng Thưa', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'cf807680-39db-47bf-9f19-e015bc7376e5', NULL, N'Nguyễn Thị Cẩm Hương', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'4994367d-156c-4eee-b446-e0702c86d83f', N'Learn with your mind. Live with your heart.
Gratitude and attitude take you a long way in life', N'Nguyễn Hoàng Linh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881565/Nguy%E1%BB%85n_Ho%C3%A0ng_Linh_Biz_xlfqhj_vpckff.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'd5e4b987-b4f7-40c9-a164-e0f5a70c06c4', NULL, N'Nguyễn Thị Huệ My', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b14b3beb-c2b6-462f-8865-e15c076fecbf', NULL, N'Nguyễn Ngọc Ái Thy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b30ec680-8a65-45ee-9ffb-e1a8cdf38771', NULL, N'Vũ Đức Lý', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'a18cc0b0-0781-4861-bfa2-d4f5e0668700')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'264acbc7-323b-4261-9973-e3983b2334f3', N'"Be the change you wish to see in the world", and never stop questioning what''s socially taken for granted', N'Nguyễn Phương Tú', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881636/Nguy%E1%BB%85n_Ph%C6%B0%C6%A1ng_T%C3%BA_Soft_Skill_mnfkop_ne07xt.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'3f8899df-7cde-4807-8716-e408a60afc42', NULL, N'Trần Thị Quyên Quyên', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'a274fd16-bf76-4d51-ba02-e5fa7478e020', N'Results are important, but the process of achieving those results is even more significant', N'Võ Thành Hồng Duyên', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883277/V%C3%B5_Th%C3%A0nh_H%E1%BB%93ng_Duy%C3%AAn_Eng.P_mpzn9h_anirch.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'd6ff29a9-0ef3-4262-8c30-e7002163965e', N'Life is short. SMILE while you still have TEETH', N'Nguyễn Thị Mỹ Hạnh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881650/Nguy%E1%BB%85n_Th%E1%BB%8B_M%E1%BB%B9_H%E1%BA%A1nh_Eng.P_qlx834_s1xrpa.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'449b2a6b-62b9-408d-b886-e7326b45087d', N'Cuốc sống sẽ luôn đáp lại những ai biết tận dụng tốt nhất những nguồn lực sẳn có, do đó không có vấn đề nào là không thể giải quyết, chỉ cần ta suy nghĩ theo hướng tích cực, có đủ sự quyết tâm, kiên nhẫn và luôn trang bị đủ kiến thức cho bản thân ', N'Phan Văn Mạnh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883427/Phan_V%C4%83n_M%E1%BA%A1nh_Gi%C3%A1o_d%E1%BB%A5c_th%E1%BB%83_ch%E1%BA%A5t_ygq8v0_oeihse.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0d433b4c-0374-4857-8668-e9dc739fe5a1', N'Hãy theo đuổi niềm đam mê của bạn và luôn tin tưởng vào khả năng của chính mình!', N'Lê Ngọc Phương Nguyên', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880570/L%C3%AA_Ng%E1%BB%8Dc_Ph%C6%B0%C6%A1ng_Nguy%C3%AAn_MC_qlv1fk_xqe1re.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'34c2acc8-b232-4abc-b847-ea4d961ea748', N'“Where there is a will, there is a way." - Pauline Kael - ', N'Võ Thị Vân Na', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883245/V%C3%B5_Th%E1%BB%8B_V%C3%A2n_Na__Biz_smazxu_f8v3d3.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'04fdb6e4-8431-4132-9dd8-ea8e5466c644', N'“Teaching is not done by talking alone. It is done by how you live your life. My life is my teaching. My life is my message." - Thich Nhat Hanh -', N'Nguyễn Phương Thủy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881634/Nguy%E1%BB%85n_Ph%C6%B0%C6%A1ng_Thu%E1%BB%B7_Eng.P_qd2gvo_i5tsji.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'a58d1e89-8c2f-4516-b991-eacd7b5194c3', N'Tương lai thuộc về người có năng lực. Hãy cố gắng giỏi, giỏi hơn và giỏi nhất', N'Dương Thị Thúy Thơ', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697879360/D%C6%B0%C6%A1ng_Th%E1%BB%8B_Th%C3%BAy_Th%C6%A1_Soft_Skill_ijlsjz_pfizbk.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'018af142-72f3-46d8-a4ad-cd068cb0176d')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'cc56e628-a757-494f-93f5-ec8abd053de6', N'Trước khi chiến thắng những khó khăn trong cuộc sống thì bạn phải chiến thắng được những thói quen xấu của chính bản thân', N'Ninh Thị Hà', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697882440/Ninh_Th%E1%BB%8B_H%C3%A0_Eng.P_x9jdmj_qzw9wa.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'26484cba-446c-47c1-ac5f-ed77313a8138', NULL, N'Trần Duy Khiêm', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'56f08509-9ac1-4afb-be44-ae34072d1bc6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b5ce30eb-fe09-4b42-bfc3-ed7ec5049964', N'Đã không làm thì thôi, Đã làm thì phải làm thật đàng hoàng', N'Kiều Trọng Khánh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880384/Ki%E1%BB%81u_Tr%E1%BB%8Dng_Kh%C3%A1nh_CF_lzxkm2_uhvxt8.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'93a2a344-99a6-4de0-b6f9-ef5632adaa62', NULL, N'Phan Tuấn Ly', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'4e9d98d6-4d61-4af0-9899-f0ed896c5fb0', N'Mưu cầu tri thức là một hành trình không bằng phẳng, nhưng đầy thú vị, nhằm mục đích khả thi hoá những giấc mơ hoang đường', N'Nguyễn Hữu Hoàng Giao', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881564/Nguy%E1%BB%85n_H%E1%BB%AFu_Ho%C3%A0ng_Giao_Biz_abxyeh_xvx4yd.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'f1496674-4aff-43e9-8ce4-f13907841f0c', NULL, N'Trần Ngọc Minh Như', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'd97367fe-0fc0-4c3f-89e8-f363a69bafbb', NULL, N'Đỗ Tấn Nhàn', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0f6290ff-b132-416a-8fbe-f3feaecdbe61', NULL, N'Bùi Anh Tuấn', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'3ad9489f-b65c-4965-a59c-f43d51df7539', NULL, N'Huỳnh Thị Quý Thuận', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'2ed8cb22-026a-4235-a576-f49a2d0d55c7', N'Khơi dậy niềm đam mê học tập của học trò là niềm vui, là trách nhiệm cao cả của người Thầy', N'Lê Thế Dũng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880684/L%C3%AA_Th%E1%BA%BF_D%C5%A9ng_CF_ti3e7z_tg6izi.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'd8bb2407-214b-4ac6-8c7c-f5548438ff3f', N'"Một người thầy tốt giống như ngọn nến - cháy hết mình để thắp sáng đường đi cho những người khác" - Mustafa Kemal Atatürk -', N'Nguyễn Như Ngọc', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881633/Nguy%E1%BB%85n_Nh%C6%B0_Ng%E1%BB%8Dc_Maths_klgs9r_ffmawq.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'a53b07e2-607e-4f47-ac63-f55701103366', N'Hãy làm những gì bạn có thể với tất cả những gì bạn có. - Theodore Roosevelt -', N'Nguyễn Minh Tuấn', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881625/Nguy%E1%BB%85n_Minh_Tu%E1%BA%A5n_%C3%82m_nh%E1%BA%A1c_Truy%E1%BB%81n_th%E1%BB%91ng_rakegj_pnc3in.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'f60ad868-00ea-4ae8-93b3-f59bab09ca1f', N'Vui viết app, buồn viết code', N'Lê Thanh Hải', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697880571/L%C3%AA_Thanh_H%E1%BA%A3i_ITS_bbzgv4_d1stvr.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'fca93e1b-d462-4378-84ce-f59f3ca1f207', NULL, N'Phan Nguyễn Kiến Nam', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'60125794-88e5-4361-9261-f69f882cf1ae', NULL, N'Nguyễn Đức Sơn', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'2c63e107-4ac3-4945-a0ab-f78e2054a518', NULL, N'Trần Anh Kiều', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'b18c5e3d-9878-4c40-9188-f79c0385ffe0', N'Học không biết chán, dạy không biết mỏi', N'Nguyễn Văn Vui', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697881670/Nguy%E1%BB%85n_V%C4%83n_Vui_%C3%82m_nh%E1%BA%A1c_Truy%E1%BB%81n_th%E1%BB%91ng_imwkbf_cpvaxq.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'94c22c8a-e424-446b-8d68-f874b7f5020a', NULL, N'Nguyễn Vũ Duy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0efb6589-174c-466f-bc6a-f9614e83cce3', NULL, N'Bùi Ngọc Châu', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'a9e1743e-4128-4f31-b88e-f980f847353f', N'Học phải vui, vui mới học được', N'Đặng Công Đoàn', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878119/%C4%90%E1%BA%B7ng_C%C3%B4ng_%C4%90o%C3%A0n_Jap_vgft8g_skpj3q.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'0cf1535b-ecca-49c1-9cc0-f9dd6d131b9f', N'Năng lực càng cao, càng dễ dàng hiện thực hóa ước mơ!', N'Trần Trọng Huỳnh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697883374/Tr%E1%BA%A7n_Tr%E1%BB%8Dng_Hu%E1%BB%B3nh_Maths_v6dvq4_t6tdey.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'9fa1797d-21f0-4bc0-b223-fa3fb5872e0b', N'“Yesterday is history. Tomorrow is a mystery, but today is a gift. That’s why it’s called the present.” 
Hãy luôn vui vẻ và lạc quan để chào đón ngày mới tràn đầy niềm tin và hy vọng bạn nhé vì ngày hôm nay chính là món quà tuyệt vời nhất. 
Chúc bạn luôn được yêu thương! ', N'Đỗ Thị Diễm Mi', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878916/%C4%90%E1%BB%97_Th%E1%BB%8B_Di%E1%BB%85m_Mi_Eng_eonzps_x4fd6h.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'47d7f03d-ef13-474e-94b0-fadf87e45358', NULL, N'Phan Gia Hoàng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'56f08509-9ac1-4afb-be44-ae34072d1bc6')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'bb81c957-42ef-4b86-a7f7-fb15787ba99f', NULL, N'Lê Thị Thanh Bình', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'1769cfce-8398-4bb9-8c6a-fb6949b80f10', NULL, N'Tô Thị Kim Hồng', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'65b0966f-cc7c-420a-8c5d-fbac147b8cf9', NULL, N'Đinh Thị Phương Mai', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'55b9f428-d25b-4974-a2ea-fbba9061f245', N'Khó khăn là một món quà
. Cho ta cơ hội vượt qua chính mình
. Tuổi trẻ học tập hết mình. 
Tương lai rực rỡ lung linh đón chào', N'Bùi Danh Hường', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697876357/B%C3%B9i_Danh_H%C6%B0%E1%BB%9Dng_CF_yd9bgn_du0sxj.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'6daf29e9-5180-49d8-af2b-fc4a040dff6f', NULL, N'Trang Linh Tâm', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'29bcbd42-945a-4240-b89a-fea6e6845cdc', NULL, N'Nguyễn Mai Huy', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'1b3e4a76-5d1c-4c6a-917f-feb2cfb320f9', NULL, N'Nguyễn Thị Quế Anh', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Candidate] ([candidateId], [description], [fullName], [avatarURL], [status], [userId], [campaignId], [groupId]) VALUES (N'f6174402-f1a2-401b-a943-fefcc3a071c0', NULL, N'Huỳnh Thanh Trúc', N'https://res.cloudinary.com/dvbqgtkbj/image/upload/v1697878552/frame-blank-typo_qkumpl_gxkmh0.png', 1, NULL, N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
GO
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'5e29018a-df96-42a7-baf4-00970f15e485', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'2d589c81-a0dd-44b2-8aa7-00f16100c9c7', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'8fa7cabf-fcc9-4393-b19f-035ecfbf53b5', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'8c497915-3c63-4080-abf7-08287eaf1dda', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'66473545-ec63-4b4f-b7ff-7b993585f9aa')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'eaae3fee-b67d-446f-9c58-0900c558281b', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'fcb980d8-bcd6-4164-af77-0df0ddf8990f', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'018af142-72f3-46d8-a4ad-cd068cb0176d')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'bc7adc80-7479-4a64-94de-130c53a258fe', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'56f08509-9ac1-4afb-be44-ae34072d1bc6')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'5d59baad-4d67-4038-ab1a-1df8aec6e9a8', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'c80f52a5-c903-42d4-b152-20781b0bfda6', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'66473545-ec63-4b4f-b7ff-7b993585f9aa')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'3af501ef-17b0-4602-8d70-20dfa50c7cbd', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'a9cf72f6-70a8-4aa9-a8b0-34385b4bae97', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'bfb187ee-8348-4ff1-b22a-34b2699b0ab4', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'd2e67a34-85ed-4135-9fa8-352c68bd52ad', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'12796d18-97a6-4f8a-a099-3eb4a666232f', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'8330ef31-27a6-4dd0-b17f-0f8de51431ce')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'b08a7b86-a28d-4d55-b0c3-3ec75d6db1ee', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'56f08509-9ac1-4afb-be44-ae34072d1bc6')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'2a25d090-59d8-405a-8076-45b8edd9b000', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'56f08509-9ac1-4afb-be44-ae34072d1bc6')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'6f2edd5f-c300-4d15-a3a1-499fe0567d64', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'2ade6af4-3503-42a8-a82e-4c796e5f5ab5', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'13427a6f-0b65-41c6-8710-520054d48883', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'018af142-72f3-46d8-a4ad-cd068cb0176d')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'1bb284a5-93ac-4bcb-bb5f-5bd468146913', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'66473545-ec63-4b4f-b7ff-7b993585f9aa')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'7a711e54-728a-4b4b-a7a4-6213ef1ba0a8', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'b328b149-a651-4364-ae4d-6743440f91b4', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'5c60d7a1-6ef1-484c-bcae-6c902e576618', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'7bd483f5-cb8d-4c1a-afc9-7468fb05ba30', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'872eed3f-ba1e-4d7a-b9be-7bb6d9806ed5', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'6a0c0286-8770-47a2-8af3-83f73aa0147d', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'a18cc0b0-0781-4861-bfa2-d4f5e0668700')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'a7214622-1255-48fa-a0aa-871660679ebd', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'a50dc8b5-f751-469c-b877-88930a306e41', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'8330ef31-27a6-4dd0-b17f-0f8de51431ce')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'7ba23157-3312-41ae-94b8-8a9a1c2616b4', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'98d60b6d-5c5e-4cdb-b289-be92ffc77206')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'990de14e-4757-4c9c-8dff-8f04f6b43a5d', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'fbc3d4b0-c75a-4cf4-96af-37a1dbd80d3d')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'f975ce7d-58fb-49b5-a484-90589ee5f0b2', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'4aece6fd-c635-4a96-a01c-91681feb8934', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'd8111aba-574e-4c2f-837a-e9a1cbfd36d2')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'6e0e1038-f12a-4e04-aa20-9285404a7507', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'ae9f8d2a-3a85-4c80-b62f-94fa7eb1e66c', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'a7bf15b3-17a5-44bc-a515-9638d276d829', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'fbbb92f3-1d83-4a7c-b880-9679e46cfe94', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'6101f9ff-55e1-4785-914f-216dadfbfae5')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'7691ca4c-d5a1-4495-925c-98ef62b537d4', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'c5a820f6-1093-4355-80be-d814ae0dfad0')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'8c14dfee-057f-43d4-a597-aad6e4a9bcfa', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'b06488dc-b436-4157-9d47-932b358e571e')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'4b12f3ad-1a7c-434a-8a9c-ab978234c0d3', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'018af142-72f3-46d8-a4ad-cd068cb0176d')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'5534db3a-af8a-4dcb-a001-b00c2db84089', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'4fa19427-24bb-4000-acb2-b09e693dfa4a', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'996262f5-915a-449a-a8d7-b2ba439be51a', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'a18cc0b0-0781-4861-bfa2-d4f5e0668700')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'2ffcf489-8a82-47a0-b4a6-b3399dbf553b', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'8330ef31-27a6-4dd0-b17f-0f8de51431ce')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'551dab30-8a74-46a7-b016-c117ea725739', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'a18cc0b0-0781-4861-bfa2-d4f5e0668700')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'b2caa38c-26b8-4b2b-8420-c42c08b264cf', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'c4e2ee87-d2da-4b50-a250-e0be939e39f1', 2, N'04fa2169-155c-4b42-8a9a-48aa3336d461', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'577a94cd-3348-4ff7-9229-5d8012001b36')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'3e81c2a5-4305-4045-92be-eb3411466736', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'5ca3197a-7eba-4384-ac4f-4d55819a85ac')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'197ed0cb-ce7f-4378-ab96-f3651e007938', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'29f70d7d-94ea-41dc-b67b-67f9aad0c738')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'99c6bd74-b699-46f1-adbc-f7905c39ef92', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'629f5ee8-ec95-4b68-aa52-d8df60015bf6')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'3488aaf2-b071-4a73-8414-f88bcbff9611', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'153a4d8e-37f2-4360-8f35-fa1c90e5608a', 1, N'647be514-4a6a-4298-991d-912af5d16921', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'20603233-ff86-4a9b-96e1-f8d6abe6980b')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'a2fe392a-67af-4383-ad73-fc464df6d8ab', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'566fa89f-5730-45cc-b97d-2842ba1199e7')
INSERT [dbo].[Ratio] ([ratioGroupId], [proportion], [groupVoterId], [campaignId], [groupCandidateId]) VALUES (N'ee780f6d-a830-4d0f-80f9-ff1dcff79938', 1, N'8307dd09-2299-49b4-85ad-5aba6e5c474a', N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'767eb343-6f9b-4dfe-af17-662d089b58e3')
GO
INSERT [dbo].[Stage] ([stageId], [title], [content], [startTime], [endTime], [process], [limitVote], [isUseForm], [status], [campaignId], [formId]) VALUES (N'6097a517-11ad-4105-b26a-0e93bea2cb43', N'Inspiring Instructor Awards 2024', N'string', CAST(N'2023-11-10T20:50:00.000' AS DateTime), CAST(N'2023-11-12T21:00:00.000' AS DateTime), N'Đang diễn ra', 3, 0, 1, N'6097a517-11ad-4105-b26a-0e93bea2cb43', NULL)
GO
INSERT [dbo].[Type] ([typeId], [name], [description]) VALUES (N'283a18e0-6d3b-4f71-83de-aa79513a3cd7', N'Bình chọn 1 câu trả lời', NULL)
INSERT [dbo].[Type] ([typeId], [name], [description]) VALUES (N'284a18e0-6d3b-4f71-83de-aa79513a3cd7', N'Bình chọn sao', NULL)
INSERT [dbo].[Type] ([typeId], [name], [description]) VALUES (N'285a18e0-6d3b-4f71-83de-aa79513a3cd7', N'Bình chọn nhiều câu trả lời', NULL)
GO
INSERT [dbo].[TypeAction] ([typeActionId], [name]) VALUES (N'4b5cf0a6-2d80-479a-b690-2d6a0297e225', N'voted')
INSERT [dbo].[TypeAction] ([typeActionId], [name]) VALUES (N'4adf1ac8-2ef8-48a8-bc92-823c511692fe', N'edit vote')
GO
INSERT [dbo].[Design] ([designId], [textColor], [Icon], [backgroundImage], [description1], [description2], [description3], [description4], [logo1], [logo2], [logo3], [logo4], [time1], [time2], [time3], [time4]) VALUES (N'1         ', N'#B83490', N'https://res.cloudinary.com/deo5fv4tw/image/upload/v1698917838/eomk7mtgh6y4jg3j0lio.png', N'https://res.cloudinary.com/deo5fv4tw/image/upload/v1698917840/kpgfmkyhn3kgxwctemdr.png', N'Test 1', N'Test2', N'Test 3', N'Test 4', N'https://res.cloudinary.com/deo5fv4tw/image/upload/v1698917844/za1272augp6rei33vxhy.png', N'https://res.cloudinary.com/deo5fv4tw/image/upload/v1698917844/xvfoxpgzzbhxoygc1onw.png', N'https://res.cloudinary.com/deo5fv4tw/image/upload/v1698917846/wh9tdzzg7eb991zcl0wl.png', N'https://res.cloudinary.com/deo5fv4tw/image/upload/v1698917848/k2qvxlcmvhfkqpzs41uj.png', N'12/12/2023', N'13/12/2023', N'14/12/2023', N'15/12/2023')
GO
