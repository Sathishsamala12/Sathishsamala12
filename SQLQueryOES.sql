create database OESNew

select *from [Categories]
select *from [PersonCategories]
select *from [PersonImages]
select *from [Persons]
select *from [PersonSkills]
select *from [Skills]



USE [OESNew]
GO
/** Object:  Table [dbo].[Categories]    Script Date: 16-07-2022 10:35:57 **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](255) NULL,
	[CategoryCode] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/** Object:  Table [dbo].[PersonCategories]    Script Date: 16-07-2022 10:35:57 **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonCategories](
	[PersonCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/** Object:  Table [dbo].[PersonImages]    Script Date: 16-07-2022 10:35:57 **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonImages](
	[PersonImageId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NULL,
	[Images] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/** Object:  Table [dbo].[Persons]    Script Date: 16-07-2022 10:35:57 **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](255) NULL,
	[LastName] [varchar](255) NULL,
	[DateOfBirth] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/** Object:  Table [dbo].[PersonSkills]    Script Date: 16-07-2022 10:35:57 **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonSkills](
	[PersonSkillId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [int] NULL,
	[SkillId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonSkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/** Object:  Table [dbo].[Skills]    Script Date: 16-07-2022 10:35:57 **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [varchar](255) NULL,
	[SkillCode] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PersonCategories]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[PersonCategories]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([PersonId])
GO
ALTER TABLE [dbo].[PersonImages]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([PersonId])
GO
ALTER TABLE [dbo].[PersonSkills]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[Persons] ([PersonId])
GO
ALTER TABLE [dbo].[PersonSkills]  WITH CHECK ADD FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO