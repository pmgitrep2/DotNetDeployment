﻿USE [ReferenceCore]
GO

/****** Object:  Table [dbo].[URLType]    Script Date: 9/23/2021 11:15:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[URLType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UniqueID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](250) NOT NULL,
	[APIName] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[LastEditUser] [nvarchar](100) NULL,
	[CreateTime] [datetime] NOT NULL,
	[LastEditTime] [datetime] NOT NULL,
 CONSTRAINT [PK_URLType_ID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_URLType_DisplayName] UNIQUE NONCLUSTERED 
(
	[DisplayName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_URLType_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_URLType_UniqueID] UNIQUE NONCLUSTERED 
(
	[UniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[URLType] ADD  CONSTRAINT [DF_URLType_UniqueID]  DEFAULT (newid()) FOR [UniqueID]
GO

ALTER TABLE [dbo].[URLType] ADD  CONSTRAINT [DF_URLType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[URLType] ADD  CONSTRAINT [DF_URLType_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO

ALTER TABLE [dbo].[URLType] ADD  CONSTRAINT [DF_URLType_LastEditUser]  DEFAULT (suser_sname()) FOR [LastEditUser]
GO

ALTER TABLE [dbo].[URLType] ADD  CONSTRAINT [DF_URLType_CreateTime]  DEFAULT (getutcdate()) FOR [CreateTime]
GO

ALTER TABLE [dbo].[URLType] ADD  CONSTRAINT [DF_URLType_LastEditTime]  DEFAULT (getutcdate()) FOR [LastEditTime]
GO


