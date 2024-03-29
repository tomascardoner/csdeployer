USE [master]
GO
/****** Object:  Database [CSDeployer]    Script Date: 20/08/2019 00:00:37 ******/
CREATE DATABASE [CSDeployer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CSDeployer', FILENAME = N'C:\Data\Cardoner Sistemas\Development\CS-Deployer\Database\CSDeployer.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CSDeployer_log', FILENAME = N'C:\Data\Cardoner Sistemas\Development\CS-Deployer\Database\CSDeployer_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CSDeployer] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSDeployer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSDeployer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CSDeployer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CSDeployer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CSDeployer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CSDeployer] SET ARITHABORT OFF 
GO
ALTER DATABASE [CSDeployer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CSDeployer] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CSDeployer] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [CSDeployer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CSDeployer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CSDeployer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CSDeployer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CSDeployer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CSDeployer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CSDeployer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CSDeployer] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CSDeployer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CSDeployer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CSDeployer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CSDeployer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CSDeployer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CSDeployer] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CSDeployer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CSDeployer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CSDeployer] SET  MULTI_USER 
GO
ALTER DATABASE [CSDeployer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CSDeployer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CSDeployer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CSDeployer] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CSDeployer', N'ON'
GO
USE [CSDeployer]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 20/08/2019 00:00:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Application](
	[ApplicationId] [tinyint] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK__Application] PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApplicationFile]    Script Date: 20/08/2019 00:00:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApplicationFile](
	[ApplicationId] [tinyint] NOT NULL,
	[FileId] [tinyint] NOT NULL,
	[FileName] [varchar](100) NOT NULL,
	[FolderId] [tinyint] NULL,
	[VersionId] [smallint] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK__ApplicationFile] PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC,
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApplicationFileVersion]    Script Date: 20/08/2019 00:00:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApplicationFileVersion](
	[ApplicationId] [tinyint] NOT NULL,
	[FileId] [tinyint] NOT NULL,
	[VersionId] [smallint] NOT NULL,
	[VersionNumberMajor] [smallint] NULL,
	[VersionNumberMinor] [smallint] NULL,
	[VersionNumberBuild] [int] NULL,
	[VersionNumberPrivate] [int] NULL,
	[ModificationDateTime] [smalldatetime] NULL,
	[FileData] [varbinary](max) NULL,
 CONSTRAINT [PK__ApplicationFileVersion] PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC,
	[FileId] ASC,
	[VersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApplicationFolder]    Script Date: 20/08/2019 00:00:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApplicationFolder](
	[ApplicationId] [tinyint] NOT NULL,
	[FolderId] [tinyint] NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK__ApplicationFolder] PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC,
	[FolderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK__Application__Name]    Script Date: 20/08/2019 00:00:37 ******/
CREATE UNIQUE NONCLUSTERED INDEX [AK__Application__Name] ON [dbo].[Application]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK__ApplicationFile__Name]    Script Date: 20/08/2019 00:00:37 ******/
CREATE UNIQUE NONCLUSTERED INDEX [AK__ApplicationFile__Name] ON [dbo].[ApplicationFile]
(
	[ApplicationId] ASC,
	[FileName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [AK__ApplicationFolder__Name]    Script Date: 20/08/2019 00:00:37 ******/
CREATE UNIQUE NONCLUSTERED INDEX [AK__ApplicationFolder__Name] ON [dbo].[ApplicationFolder]
(
	[ApplicationId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApplicationFile]  WITH CHECK ADD  CONSTRAINT [FK__Application__ApplicationFile] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Application] ([ApplicationId])
GO
ALTER TABLE [dbo].[ApplicationFile] CHECK CONSTRAINT [FK__Application__ApplicationFile]
GO
ALTER TABLE [dbo].[ApplicationFile]  WITH CHECK ADD  CONSTRAINT [FK__ApplicationFolder__ApplicationFile] FOREIGN KEY([ApplicationId], [FolderId])
REFERENCES [dbo].[ApplicationFolder] ([ApplicationId], [FolderId])
GO
ALTER TABLE [dbo].[ApplicationFile] CHECK CONSTRAINT [FK__ApplicationFolder__ApplicationFile]
GO
ALTER TABLE [dbo].[ApplicationFileVersion]  WITH CHECK ADD  CONSTRAINT [FK__ApplicationFile__ApplicationFileVersion] FOREIGN KEY([ApplicationId], [FileId])
REFERENCES [dbo].[ApplicationFile] ([ApplicationId], [FileId])
GO
ALTER TABLE [dbo].[ApplicationFileVersion] CHECK CONSTRAINT [FK__ApplicationFile__ApplicationFileVersion]
GO
ALTER TABLE [dbo].[ApplicationFolder]  WITH CHECK ADD  CONSTRAINT [FK__Application__ApplicationFolder] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Application] ([ApplicationId])
GO
ALTER TABLE [dbo].[ApplicationFolder] CHECK CONSTRAINT [FK__Application__ApplicationFolder]
GO
USE [master]
GO
ALTER DATABASE [CSDeployer] SET  READ_WRITE 
GO
