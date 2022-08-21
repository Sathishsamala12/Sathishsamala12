USE [master]
GO
/****** Object:  Database [ATI_OES]    Script Date: 21-08-2022 14:43:20 ******/
CREATE DATABASE [ATI_OES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ATI_OES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ATI_OES.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ATI_OES_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ATI_OES_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ATI_OES] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ATI_OES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ATI_OES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ATI_OES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ATI_OES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ATI_OES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ATI_OES] SET ARITHABORT OFF 
GO
ALTER DATABASE [ATI_OES] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ATI_OES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ATI_OES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ATI_OES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ATI_OES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ATI_OES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ATI_OES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ATI_OES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ATI_OES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ATI_OES] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ATI_OES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ATI_OES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ATI_OES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ATI_OES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ATI_OES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ATI_OES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ATI_OES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ATI_OES] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ATI_OES] SET  MULTI_USER 
GO
ALTER DATABASE [ATI_OES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ATI_OES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ATI_OES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ATI_OES] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ATI_OES] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ATI_OES] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ATI_OES] SET QUERY_STORE = OFF
GO
USE [ATI_OES]
GO
/****** Object:  User [Madhu]    Script Date: 21-08-2022 14:43:21 ******/
CREATE USER [Madhu] FOR LOGIN [Madhu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[BloodGroups]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BloodGroups](
	[BloodGroupId] [int] IDENTITY(1,1) NOT NULL,
	[BloodGroupName] [varchar](255) NULL,
	[BloodGroupCode] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[BloodGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Castes]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Castes](
	[CasteId] [int] IDENTITY(1,1) NOT NULL,
	[CasteName] [varchar](255) NULL,
	[CasteCode] [varchar](255) NULL,
	[ReligionId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CasteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CollegeInstitutes]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollegeInstitutes](
	[CollegeInstituteId] [int] IDENTITY(1,1) NOT NULL,
	[CollegeInstituteName] [varchar](255) NULL,
	[CollegeInstituteCode] [varchar](255) NULL,
	[UniversityBoardId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CollegeInstituteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactNumbers]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactNumbers](
	[ContactNumberId] [int] IDENTITY(1,1) NOT NULL,
	[ContactNumber] [bigint] NULL,
	[isPermanentNumber] [bit] NULL,
	[isActive] [bit] NULL,
	[PersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactNumberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Continents]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continents](
	[ContinentId] [int] IDENTITY(1,1) NOT NULL,
	[ContinentCode] [varchar](255) NULL,
	[ContinentName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContinentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](255) NULL,
	[CountryCode] [varchar](255) NULL,
	[ContinentId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](255) NULL,
	[CourseCode] [varchar](255) NULL,
	[CollegeInstituteId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Districts]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Districts](
	[DistrictId] [int] IDENTITY(1,1) NOT NULL,
	[DistrictName] [varchar](255) NULL,
	[DistrictCode] [varchar](255) NULL,
	[StateId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationDetails]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationDetails](
	[EducationId] [int] IDENTITY(1,1) NOT NULL,
	[EducationTypeId] [int] NOT NULL,
	[UniversityBoardId] [int] NOT NULL,
	[CollegeInstituteId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[MediumId] [int] NOT NULL,
	[StartYear] [int] NULL,
	[EndYear] [int] NULL,
	[Percentage] [int] NULL,
	[PersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationTypes]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationTypes](
	[EducationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[EducationName] [varchar](max) NULL,
	[EducationCode] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[EducationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emails]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emails](
	[EmailId] [int] NOT NULL,
	[Email] [varchar](255) NULL,
	[isPermanent] [bit] NULL,
	[isActive] [bit] NULL,
	[PersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[GenderId] [int] IDENTITY(1,1) NOT NULL,
	[GenderName] [varchar](32) NULL,
	[GenderCode] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[GenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentificationMarks]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentificationMarks](
	[IdentificationMarkId] [int] IDENTITY(1,1) NOT NULL,
	[IdentificationMark] [varchar](255) NULL,
	[PersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdentificationMarkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarritalStatuses]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarritalStatuses](
	[MarritalStatusId] [int] IDENTITY(1,1) NOT NULL,
	[MarritalStatusType] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MarritalStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mediums]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mediums](
	[MediumId] [int] IDENTITY(1,1) NOT NULL,
	[MediumName] [varchar](255) NULL,
	[MediumCode] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MediumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotherToungues]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotherToungues](
	[MotherToungueId] [int] IDENTITY(1,1) NOT NULL,
	[MotherToungueName] [varchar](255) NULL,
	[MotherToungueCode] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MotherToungueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nationalities]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationalities](
	[NationalityId] [int] IDENTITY(1,1) NOT NULL,
	[NationalityName] [varchar](255) NULL,
	[NationalityCode] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[NationalityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonAddresses]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonAddresses](
	[PersonAddressId] [int] NOT NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[Address3] [varchar](max) NULL,
	[StartYear] [date] NULL,
	[EndYear] [date] NULL,
	[IsActive] [bit] NULL,
	[PersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonDetails]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonDetails](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](max) NULL,
	[LastName] [varchar](max) NULL,
	[DOB] [date] NULL,
	[GenderId] [int] NOT NULL,
	[PinCode] [int] NULL,
	[NationalityId] [int] NOT NULL,
	[MotherToungueId] [int] NOT NULL,
	[ReligionId] [int] NOT NULL,
	[CasteId] [int] NOT NULL,
	[SubCasteId] [int] NOT NULL,
	[ContinentId] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[MaritalStatusId] [int] NULL,
	[BloodGroupId] [int] NULL,
	[UserTypeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhotoUploads]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoUploads](
	[PhotoUploadId] [int] IDENTITY(1,1) NOT NULL,
	[Photos] [varchar](max) NULL,
	[PersonId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PhotoUploadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Religions]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religions](
	[ReligionId] [int] IDENTITY(1,1) NOT NULL,
	[ReligionName] [varchar](255) NULL,
	[ReligionCode] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReligionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](255) NULL,
	[StateCode] [varchar](255) NULL,
	[CountryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCastes]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCastes](
	[SubCasteId] [int] IDENTITY(1,1) NOT NULL,
	[SubCasteName] [varchar](255) NULL,
	[SubCasteCode] [varchar](255) NULL,
	[CasteId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubCasteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UniversityBoards]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniversityBoards](
	[UniversityBoardId] [int] IDENTITY(1,1) NOT NULL,
	[UniversityBoardName] [varchar](max) NULL,
	[UniversityBoardCode] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[UniversityBoardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 21-08-2022 14:43:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[UserTypeId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](255) NULL,
	[UserCode] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Castes]  WITH CHECK ADD FOREIGN KEY([ReligionId])
REFERENCES [dbo].[Religions] ([ReligionId])
GO
ALTER TABLE [dbo].[CollegeInstitutes]  WITH CHECK ADD FOREIGN KEY([UniversityBoardId])
REFERENCES [dbo].[UniversityBoards] ([UniversityBoardId])
GO
ALTER TABLE [dbo].[ContactNumbers]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[PersonDetails] ([PersonId])
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD FOREIGN KEY([ContinentId])
REFERENCES [dbo].[Continents] ([ContinentId])
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD FOREIGN KEY([CollegeInstituteId])
REFERENCES [dbo].[CollegeInstitutes] ([CollegeInstituteId])
GO
ALTER TABLE [dbo].[Districts]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([StateId])
GO
ALTER TABLE [dbo].[EducationDetails]  WITH CHECK ADD FOREIGN KEY([CollegeInstituteId])
REFERENCES [dbo].[CollegeInstitutes] ([CollegeInstituteId])
GO
ALTER TABLE [dbo].[EducationDetails]  WITH CHECK ADD FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[EducationDetails]  WITH CHECK ADD FOREIGN KEY([EducationTypeId])
REFERENCES [dbo].[EducationTypes] ([EducationTypeId])
GO
ALTER TABLE [dbo].[EducationDetails]  WITH CHECK ADD FOREIGN KEY([MediumId])
REFERENCES [dbo].[Mediums] ([MediumId])
GO
ALTER TABLE [dbo].[EducationDetails]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[PersonDetails] ([PersonId])
GO
ALTER TABLE [dbo].[EducationDetails]  WITH CHECK ADD FOREIGN KEY([UniversityBoardId])
REFERENCES [dbo].[UniversityBoards] ([UniversityBoardId])
GO
ALTER TABLE [dbo].[Emails]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[PersonDetails] ([PersonId])
GO
ALTER TABLE [dbo].[IdentificationMarks]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[PersonDetails] ([PersonId])
GO
ALTER TABLE [dbo].[PersonAddresses]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[PersonDetails] ([PersonId])
GO
ALTER TABLE [dbo].[PersonDetails]  WITH CHECK ADD FOREIGN KEY([CasteId])
REFERENCES [dbo].[Castes] ([CasteId])
GO
ALTER TABLE [dbo].[PersonDetails]  WITH CHECK ADD FOREIGN KEY([ContinentId])
REFERENCES [dbo].[Continents] ([ContinentId])
GO
ALTER TABLE [dbo].[PersonDetails]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[PersonDetails]  WITH CHECK ADD FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Districts] ([DistrictId])
GO
ALTER TABLE [dbo].[PersonDetails]  WITH CHECK ADD FOREIGN KEY([GenderId])
REFERENCES [dbo].[Genders] ([GenderId])
GO
ALTER TABLE [dbo].[PersonDetails]  WITH CHECK ADD FOREIGN KEY([MotherToungueId])
REFERENCES [dbo].[MotherToungues] ([MotherToungueId])
GO
ALTER TABLE [dbo].[PersonDetails]  WITH CHECK ADD FOREIGN KEY([NationalityId])
REFERENCES [dbo].[Nationalities] ([NationalityId])
GO
ALTER TABLE [dbo].[PersonDetails]  WITH CHECK ADD FOREIGN KEY([ReligionId])
REFERENCES [dbo].[Religions] ([ReligionId])
GO
ALTER TABLE [dbo].[PersonDetails]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([StateId])
GO
ALTER TABLE [dbo].[PersonDetails]  WITH CHECK ADD FOREIGN KEY([SubCasteId])
REFERENCES [dbo].[SubCastes] ([SubCasteId])
GO
ALTER TABLE [dbo].[PersonDetails]  WITH CHECK ADD FOREIGN KEY([UserTypeId])
REFERENCES [dbo].[UserTypes] ([UserTypeId])
GO
ALTER TABLE [dbo].[PhotoUploads]  WITH CHECK ADD FOREIGN KEY([PersonId])
REFERENCES [dbo].[PersonDetails] ([PersonId])
GO
ALTER TABLE [dbo].[States]  WITH CHECK ADD FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[SubCastes]  WITH CHECK ADD FOREIGN KEY([CasteId])
REFERENCES [dbo].[Castes] ([CasteId])
GO
USE [master]
GO
ALTER DATABASE [ATI_OES] SET  READ_WRITE 
GO
