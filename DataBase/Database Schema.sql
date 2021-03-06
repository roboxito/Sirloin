create database sirloin ;
go
use sirloin;
go
create login sirloin with password = 'sirloin'; 
go
EXEC sp_grantdbaccess 'sirloin', 'sirloin'
go
grant all to sirloin;
go
EXECUTE AS login = 'sirloin' ;
GO

/****** Object:  Table [dbo].[Menu]    Script Date: 04/14/2011 13:22:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Menu]') AND type in (N'U'))
DROP TABLE [Menu]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04/14/2011 13:22:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Users]') AND type in (N'U'))
DROP TABLE [Users]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 04/14/2011 13:22:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pages]') AND type in (N'U'))
DROP TABLE [Pages]
GO
/****** Object:  Default [DF_Pages_published]    Script Date: 04/14/2011 13:22:46 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Pages_published]') AND parent_object_id = OBJECT_ID(N'[Pages]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Pages_published]') AND type = 'D')
BEGIN
ALTER TABLE [Pages] DROP CONSTRAINT [DF_Pages_published]
END


End
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 04/14/2011 13:22:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Pages]') AND type in (N'U'))
BEGIN
CREATE TABLE [Pages](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[ShortID] [nvarchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[Title] [nvarchar](200) COLLATE Latin1_General_CI_AI NOT NULL,
	[Description] [nvarchar](200) COLLATE Latin1_General_CI_AI NOT NULL,
	[PageContent] [nvarchar](max) COLLATE Latin1_General_CI_AI NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[Published] [bit] NOT NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04/14/2011 13:22:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](30) COLLATE Latin1_General_CI_AI NOT NULL,
	[Password] [nvarchar](80) COLLATE Latin1_General_CI_AI NOT NULL,
	[FullName] [nvarchar](300) COLLATE Latin1_General_CI_AI NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 04/14/2011 13:22:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Menu]') AND type in (N'U'))
BEGIN
CREATE TABLE [Menu](
	[iditem] [int] NOT NULL,
	[MenuText] [nvarchar](200) COLLATE Latin1_General_CI_AI NOT NULL,
	[idparent] [int] NOT NULL,
	[idpage] [int] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[iditem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Default [DF_Pages_published]    Script Date: 04/14/2011 13:22:46 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Pages_published]') AND parent_object_id = OBJECT_ID(N'[Pages]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Pages_published]') AND type = 'D')
BEGIN
ALTER TABLE [Pages] ADD  CONSTRAINT [DF_Pages_published]  DEFAULT ((0)) FOR [Published]
END


End
GO
