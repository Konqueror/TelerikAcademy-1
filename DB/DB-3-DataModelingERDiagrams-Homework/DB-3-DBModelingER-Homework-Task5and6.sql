USE [master]
GO
/****** Object:  Database [Dictionary]    Script Date: 21/08/2014 13:29:16 ******/
CREATE DATABASE [Dictionary]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dictionary', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Dictionary.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Dictionary_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Dictionary_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Dictionary] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dictionary].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dictionary] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dictionary] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dictionary] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dictionary] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dictionary] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dictionary] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dictionary] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Dictionary] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dictionary] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dictionary] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dictionary] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dictionary] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dictionary] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dictionary] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dictionary] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dictionary] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dictionary] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dictionary] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dictionary] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dictionary] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dictionary] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dictionary] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dictionary] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dictionary] SET RECOVERY FULL 
GO
ALTER DATABASE [Dictionary] SET  MULTI_USER 
GO
ALTER DATABASE [Dictionary] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dictionary] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dictionary] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dictionary] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Dictionary', N'ON'
GO
USE [Dictionary]
GO
/****** Object:  Table [dbo].[Explanations]    Script Date: 21/08/2014 13:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Explanations](
	[ExplanationId] [int] IDENTITY(1,1) NOT NULL,
	[Text] [ntext] NOT NULL,
	[LanguageId] [int] NOT NULL,
 CONSTRAINT [PK_Explanations] PRIMARY KEY CLUSTERED 
(
	[ExplanationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HypernymHyponym]    Script Date: 21/08/2014 13:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HypernymHyponym](
	[HypernymId] [int] NOT NULL,
	[HyponymId] [int] NOT NULL,
 CONSTRAINT [PK_HypernymHyponym] PRIMARY KEY CLUSTERED 
(
	[HypernymId] ASC,
	[HyponymId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Languages]    Script Date: 21/08/2014 13:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[LanguageId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[LanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PartsOfSpeech]    Script Date: 21/08/2014 13:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartsOfSpeech](
	[PartOfSpeechId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartsOfSpeech] PRIMARY KEY CLUSTERED 
(
	[PartOfSpeechId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Synonyms]    Script Date: 21/08/2014 13:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Synonyms](
	[FirstWordId] [int] NOT NULL,
	[SecondWordId] [int] NOT NULL,
 CONSTRAINT [PK_Synonyms] PRIMARY KEY CLUSTERED 
(
	[FirstWordId] ASC,
	[SecondWordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Translations]    Script Date: 21/08/2014 13:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Translations](
	[WordId] [int] NOT NULL,
	[TranslationWordId] [int] NOT NULL,
 CONSTRAINT [PK_Translations] PRIMARY KEY CLUSTERED 
(
	[WordId] ASC,
	[TranslationWordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Words]    Script Date: 21/08/2014 13:29:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Words](
	[WordId] [int] IDENTITY(1,1) NOT NULL,
	[Word] [nvarchar](100) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[PartOfSpeechId] [int] NOT NULL,
	[ExplanationId] [int] NOT NULL,
 CONSTRAINT [PK_Words] PRIMARY KEY CLUSTERED 
(
	[WordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Explanations] ON 

INSERT [dbo].[Explanations] ([ExplanationId], [Text], [LanguageId]) VALUES (1, N'Sample explanation', 1)
INSERT [dbo].[Explanations] ([ExplanationId], [Text], [LanguageId]) VALUES (2, N'Synonym explanation', 1)
SET IDENTITY_INSERT [dbo].[Explanations] OFF
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([LanguageId], [Name]) VALUES (1, N'English')
SET IDENTITY_INSERT [dbo].[Languages] OFF
SET IDENTITY_INSERT [dbo].[PartsOfSpeech] ON 

INSERT [dbo].[PartsOfSpeech] ([PartOfSpeechId], [Name]) VALUES (1, N'Test')
SET IDENTITY_INSERT [dbo].[PartsOfSpeech] OFF
INSERT [dbo].[Synonyms] ([FirstWordId], [SecondWordId]) VALUES (1, 2)
INSERT [dbo].[Synonyms] ([FirstWordId], [SecondWordId]) VALUES (2, 1)
SET IDENTITY_INSERT [dbo].[Words] ON 

INSERT [dbo].[Words] ([WordId], [Word], [LanguageId], [PartOfSpeechId], [ExplanationId]) VALUES (1, N'Test word', 1, 1, 1)
INSERT [dbo].[Words] ([WordId], [Word], [LanguageId], [PartOfSpeechId], [ExplanationId]) VALUES (2, N'Test word 2', 1, 1, 2)
SET IDENTITY_INSERT [dbo].[Words] OFF
ALTER TABLE [dbo].[Explanations]  WITH CHECK ADD  CONSTRAINT [FK_Explanations_Languages] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([LanguageId])
GO
ALTER TABLE [dbo].[Explanations] CHECK CONSTRAINT [FK_Explanations_Languages]
GO
ALTER TABLE [dbo].[HypernymHyponym]  WITH CHECK ADD  CONSTRAINT [FK_HypernymHyponym_Words] FOREIGN KEY([HypernymId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[HypernymHyponym] CHECK CONSTRAINT [FK_HypernymHyponym_Words]
GO
ALTER TABLE [dbo].[HypernymHyponym]  WITH CHECK ADD  CONSTRAINT [FK_HypernymHyponym_Words1] FOREIGN KEY([HyponymId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[HypernymHyponym] CHECK CONSTRAINT [FK_HypernymHyponym_Words1]
GO
ALTER TABLE [dbo].[Synonyms]  WITH CHECK ADD  CONSTRAINT [FK_Synonyms_Words] FOREIGN KEY([FirstWordId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[Synonyms] CHECK CONSTRAINT [FK_Synonyms_Words]
GO
ALTER TABLE [dbo].[Synonyms]  WITH CHECK ADD  CONSTRAINT [FK_Synonyms_Words1] FOREIGN KEY([SecondWordId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[Synonyms] CHECK CONSTRAINT [FK_Synonyms_Words1]
GO
ALTER TABLE [dbo].[Translations]  WITH CHECK ADD  CONSTRAINT [FK_Translations_Words] FOREIGN KEY([WordId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[Translations] CHECK CONSTRAINT [FK_Translations_Words]
GO
ALTER TABLE [dbo].[Translations]  WITH CHECK ADD  CONSTRAINT [FK_Translations_Words1] FOREIGN KEY([TranslationWordId])
REFERENCES [dbo].[Words] ([WordId])
GO
ALTER TABLE [dbo].[Translations] CHECK CONSTRAINT [FK_Translations_Words1]
GO
ALTER TABLE [dbo].[Words]  WITH CHECK ADD  CONSTRAINT [FK_Words_Explanations] FOREIGN KEY([ExplanationId])
REFERENCES [dbo].[Explanations] ([ExplanationId])
GO
ALTER TABLE [dbo].[Words] CHECK CONSTRAINT [FK_Words_Explanations]
GO
ALTER TABLE [dbo].[Words]  WITH CHECK ADD  CONSTRAINT [FK_Words_Languages] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Languages] ([LanguageId])
GO
ALTER TABLE [dbo].[Words] CHECK CONSTRAINT [FK_Words_Languages]
GO
ALTER TABLE [dbo].[Words]  WITH CHECK ADD  CONSTRAINT [FK_Words_PartsOfSpeech] FOREIGN KEY([PartOfSpeechId])
REFERENCES [dbo].[PartsOfSpeech] ([PartOfSpeechId])
GO
ALTER TABLE [dbo].[Words] CHECK CONSTRAINT [FK_Words_PartsOfSpeech]
GO
ALTER TABLE [dbo].[HypernymHyponym]  WITH CHECK ADD  CONSTRAINT [chk_HypernymHyponym] CHECK  (([HypernymId]<>[HyponymId]))
GO
ALTER TABLE [dbo].[HypernymHyponym] CHECK CONSTRAINT [chk_HypernymHyponym]
GO
ALTER TABLE [dbo].[Synonyms]  WITH CHECK ADD  CONSTRAINT [chk_Synonyms] CHECK  (([FirstWordId]<>[SecondWordId]))
GO
ALTER TABLE [dbo].[Synonyms] CHECK CONSTRAINT [chk_Synonyms]
GO
ALTER TABLE [dbo].[Translations]  WITH CHECK ADD  CONSTRAINT [chk_Translations] CHECK  (([WordId]<>[TranslationWordId]))
GO
ALTER TABLE [dbo].[Translations] CHECK CONSTRAINT [chk_Translations]
GO
ALTER TABLE [dbo].[Translations]  WITH CHECK ADD  CONSTRAINT [CK_Translations] CHECK  (([WordId]<>[TranslationWordId]))
GO
ALTER TABLE [dbo].[Translations] CHECK CONSTRAINT [CK_Translations]
GO
USE [master]
GO
ALTER DATABASE [Dictionary] SET  READ_WRITE 
GO
