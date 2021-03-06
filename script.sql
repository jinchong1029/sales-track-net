USE [master]
GO
/****** Object:  Database [Compatibility]    Script Date: 2/17/2020 5:53:08 PM ******/
CREATE DATABASE [Compatibility]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Compatibility', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Compatibility.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Compatibility_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Compatibility_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Compatibility] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Compatibility].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Compatibility] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Compatibility] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Compatibility] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Compatibility] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Compatibility] SET ARITHABORT OFF 
GO
ALTER DATABASE [Compatibility] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Compatibility] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Compatibility] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Compatibility] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Compatibility] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Compatibility] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Compatibility] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Compatibility] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Compatibility] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Compatibility] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Compatibility] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Compatibility] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Compatibility] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Compatibility] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Compatibility] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Compatibility] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Compatibility] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Compatibility] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Compatibility] SET  MULTI_USER 
GO
ALTER DATABASE [Compatibility] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Compatibility] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Compatibility] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Compatibility] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Compatibility] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Compatibility] SET QUERY_STORE = OFF
GO
USE [Compatibility]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[ID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ASMLSchema]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASMLSchema](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Schema] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[NodeID] [int] NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAB]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAB](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK_FAB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Layer]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Layer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[DeviceID] [int] NULL,
 CONSTRAINT [PK_Layer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Node]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Node](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[FABID] [int] NULL,
 CONSTRAINT [PK_Node] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[NameVersion] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductFeature]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductFeature](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductIntroductionID] [int] NULL,
	[ProductPhaseOutID] [int] NULL,
	[FeatureID] [int] NULL,
 CONSTRAINT [PK_ProductFeature] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductLayer]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLayer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[LayerID] [int] NULL,
 CONSTRAINT [PK_ProductLayer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSchema]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSchema](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[SchemaVersionID] [int] NULL,
 CONSTRAINT [PK_ProductSchema] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaVersion]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaVersion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SchemaID] [int] NULL,
	[Version] [varchar](50) NULL,
 CONSTRAINT [PK_SchemaVersion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasted]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasted](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[ProductVersion] [varchar](50) NULL,
	[CompName] [varchar](50) NULL,
	[CompVersion] [varchar](50) NULL,
 CONSTRAINT [PK_Tasted] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestedProduct]    Script Date: 2/17/2020 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestedProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[CompProdcutID] [int] NULL,
 CONSTRAINT [PK_TestedProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([ID], [Name], [Password]) VALUES (N'oalkharoosi', N'Omaima', N'omaima94')
SET IDENTITY_INSERT [dbo].[ASMLSchema] ON 

INSERT [dbo].[ASMLSchema] ([ID], [Name]) VALUES (1, N'ADELmetrologyRecipe')
INSERT [dbo].[ASMLSchema] ([ID], [Name]) VALUES (2, N'ADELmetrologyOverlayDiagnostics')
INSERT [dbo].[ASMLSchema] ([ID], [Name]) VALUES (3, N'ADELmetrologyRecipeOptimizationReport')
SET IDENTITY_INSERT [dbo].[ASMLSchema] OFF
SET IDENTITY_INSERT [dbo].[Feature] ON 

INSERT [dbo].[Feature] ([ID], [Name]) VALUES (1, N'DWL profile optimization')
INSERT [dbo].[Feature] ([ID], [Name]) VALUES (2, N'Intensity normalization')
INSERT [dbo].[Feature] ([ID], [Name]) VALUES (3, N'Accuracy KPI in MRO')
INSERT [dbo].[Feature] ([ID], [Name]) VALUES (4, N'Automated DWL + TWL selection?')
INSERT [dbo].[Feature] ([ID], [Name]) VALUES (5, N'DWL / TWL to DWL / TWL optimization')
INSERT [dbo].[Feature] ([ID], [Name]) VALUES (6, N'MWL KPI reporting (K, DTO, TS, R2, OV error)')
INSERT [dbo].[Feature] ([ID], [Name]) VALUES (7, N'LIS HMQ Optimization using deming regression')
INSERT [dbo].[Feature] ([ID], [Name]) VALUES (8, N'Deming metrology on YS')
INSERT [dbo].[Feature] ([ID], [Name]) VALUES (9, N'Decorrect overlay')
INSERT [dbo].[Feature] ([ID], [Name]) VALUES (10, N'Multi profile recipe export')
INSERT [dbo].[Feature] ([ID], [Name]) VALUES (11, N'Target ranking')
INSERT [dbo].[Feature] ([ID], [Name]) VALUES (12, N'YS 380 compatiblity (dose algorithm for new camera type)')
SET IDENTITY_INSERT [dbo].[Feature] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (1, 1, N'SP6')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (2, 1, N'SP7')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (3, 2, N'SP13')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (4, 2, N'SP14')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (5, 1, N'SP8')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (6, 1, N'SP9')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (7, 1, N'SP10')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (8, 1, N'SP11')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (9, 1, N'SP12')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (10, 2, N'SP15')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (11, 2, N'SP16')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (12, 2, N'SP17')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (13, 2, N'SP18')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (14, 2, N'SP19')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (15, 2, N'SP20')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (16, 2, N'SP21')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (17, 2, N'SP22')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (18, 3, N'r30')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (19, 3, N'r31')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (20, 3, N'r32')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (21, 3, N'r33')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (22, 3, N'r34')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (23, 3, N'r35')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (24, 3, N'r36')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (25, 3, N'r37')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (26, 4, N'R11')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (27, 4, N'R12')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (28, 4, N'R13')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (29, 4, N'R14')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (30, 4, N'R15')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (31, 4, N'R17')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (32, 4, N'R18')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (33, 4, N'R19')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (34, 4, N'R20')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (35, 4, N'R21')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (36, 4, N'R22')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (37, 4, N'R23')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (38, 4, N'R24')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (39, 4, N'R25')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (40, 4, N'R26')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (41, 4, N'R27')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (42, 4, N'R28')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (43, 4, N'R29')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (44, 4, N'R30')
INSERT [dbo].[Product] ([ID], [CategoryID], [NameVersion]) VALUES (45, 4, N'R31')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([ID], [Name]) VALUES (1, N'LIS Server')
INSERT [dbo].[ProductCategories] ([ID], [Name]) VALUES (2, N'YieldStar')
INSERT [dbo].[ProductCategories] ([ID], [Name]) VALUES (3, N'LANA')
INSERT [dbo].[ProductCategories] ([ID], [Name]) VALUES (4, N'LIS Desktop')
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
SET IDENTITY_INSERT [dbo].[ProductFeature] ON 

INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (1, 1, NULL, 1)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (2, 1, NULL, 2)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (3, 1, NULL, 3)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (4, 3, NULL, 1)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (5, 3, NULL, 2)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (6, 3, NULL, 3)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (7, 5, NULL, 11)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (8, 10, NULL, 11)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (9, 19, NULL, 11)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (10, 32, NULL, 11)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (11, 10, NULL, 1)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (12, 19, NULL, 1)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (13, 5, NULL, 1)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (14, 32, NULL, 1)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (15, 5, NULL, 2)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (16, 10, NULL, 2)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (17, 19, NULL, 2)
INSERT [dbo].[ProductFeature] ([ID], [ProductIntroductionID], [ProductPhaseOutID], [FeatureID]) VALUES (18, 32, NULL, 2)
SET IDENTITY_INSERT [dbo].[ProductFeature] OFF
SET IDENTITY_INSERT [dbo].[ProductSchema] ON 

INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (1, 4, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (2, 1, 2)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (3, 2, 3)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (4, 3, 2)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (5, 4, 2)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (6, 4, 3)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (7, 1, 3)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (8, 3, 3)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (9, 1, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (10, 3, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (11, 10, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (12, 26, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (13, 27, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (14, 28, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (15, 29, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (16, 30, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (17, 31, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (18, 32, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (19, 33, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (20, 34, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (21, 21, 1)
INSERT [dbo].[ProductSchema] ([ID], [ProductID], [SchemaVersionID]) VALUES (22, 22, 1)
SET IDENTITY_INSERT [dbo].[ProductSchema] OFF
SET IDENTITY_INSERT [dbo].[SchemaVersion] ON 

INSERT [dbo].[SchemaVersion] ([ID], [SchemaID], [Version]) VALUES (1, 1, N'1.1')
INSERT [dbo].[SchemaVersion] ([ID], [SchemaID], [Version]) VALUES (2, 1, N'1.2')
INSERT [dbo].[SchemaVersion] ([ID], [SchemaID], [Version]) VALUES (3, 2, N'1.5')
INSERT [dbo].[SchemaVersion] ([ID], [SchemaID], [Version]) VALUES (4, 2, N'1.6')
INSERT [dbo].[SchemaVersion] ([ID], [SchemaID], [Version]) VALUES (5, 3, N'2.1')
INSERT [dbo].[SchemaVersion] ([ID], [SchemaID], [Version]) VALUES (6, 3, N'2.2')
SET IDENTITY_INSERT [dbo].[SchemaVersion] OFF
SET IDENTITY_INSERT [dbo].[Tasted] ON 

INSERT [dbo].[Tasted] ([ID], [ProductName], [ProductVersion], [CompName], [CompVersion]) VALUES (1, N'LIS', N'SP20', N'YieldStar', N'SP9')
INSERT [dbo].[Tasted] ([ID], [ProductName], [ProductVersion], [CompName], [CompVersion]) VALUES (2, N'LIS', N'SP19', N'YieldStar', N'SP8')
SET IDENTITY_INSERT [dbo].[Tasted] OFF
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_Node] FOREIGN KEY([NodeID])
REFERENCES [dbo].[Node] ([ID])
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_Node]
GO
ALTER TABLE [dbo].[FAB]  WITH CHECK ADD  CONSTRAINT [FK_FAB_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[FAB] CHECK CONSTRAINT [FK_FAB_Customer]
GO
ALTER TABLE [dbo].[Layer]  WITH CHECK ADD  CONSTRAINT [FK_Layer_Device] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([ID])
GO
ALTER TABLE [dbo].[Layer] CHECK CONSTRAINT [FK_Layer_Device]
GO
ALTER TABLE [dbo].[Node]  WITH CHECK ADD  CONSTRAINT [FK_Node_FAB] FOREIGN KEY([FABID])
REFERENCES [dbo].[FAB] ([ID])
GO
ALTER TABLE [dbo].[Node] CHECK CONSTRAINT [FK_Node_FAB]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategories] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategories]
GO
ALTER TABLE [dbo].[ProductFeature]  WITH CHECK ADD  CONSTRAINT [FK_ProductFeature_Feature] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Feature] ([ID])
GO
ALTER TABLE [dbo].[ProductFeature] CHECK CONSTRAINT [FK_ProductFeature_Feature]
GO
ALTER TABLE [dbo].[ProductFeature]  WITH CHECK ADD  CONSTRAINT [FK_ProductFeature_Product] FOREIGN KEY([ProductIntroductionID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductFeature] CHECK CONSTRAINT [FK_ProductFeature_Product]
GO
ALTER TABLE [dbo].[ProductFeature]  WITH CHECK ADD  CONSTRAINT [FK_ProductFeature_Product1] FOREIGN KEY([ProductPhaseOutID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductFeature] CHECK CONSTRAINT [FK_ProductFeature_Product1]
GO
ALTER TABLE [dbo].[ProductLayer]  WITH CHECK ADD  CONSTRAINT [FK_ProductLayer_Layer] FOREIGN KEY([LayerID])
REFERENCES [dbo].[Layer] ([ID])
GO
ALTER TABLE [dbo].[ProductLayer] CHECK CONSTRAINT [FK_ProductLayer_Layer]
GO
ALTER TABLE [dbo].[ProductLayer]  WITH CHECK ADD  CONSTRAINT [FK_ProductLayer_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductLayer] CHECK CONSTRAINT [FK_ProductLayer_Product]
GO
ALTER TABLE [dbo].[ProductSchema]  WITH CHECK ADD  CONSTRAINT [FK_ProductSchema_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSchema] CHECK CONSTRAINT [FK_ProductSchema_Product]
GO
ALTER TABLE [dbo].[ProductSchema]  WITH CHECK ADD  CONSTRAINT [FK_ProductSchema_SchemaVersion] FOREIGN KEY([SchemaVersionID])
REFERENCES [dbo].[SchemaVersion] ([ID])
GO
ALTER TABLE [dbo].[ProductSchema] CHECK CONSTRAINT [FK_ProductSchema_SchemaVersion]
GO
ALTER TABLE [dbo].[SchemaVersion]  WITH CHECK ADD  CONSTRAINT [FK_SchemaVersion_Schema] FOREIGN KEY([SchemaID])
REFERENCES [dbo].[ASMLSchema] ([ID])
GO
ALTER TABLE [dbo].[SchemaVersion] CHECK CONSTRAINT [FK_SchemaVersion_Schema]
GO
ALTER TABLE [dbo].[TestedProduct]  WITH CHECK ADD  CONSTRAINT [FK_TestedProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[TestedProduct] CHECK CONSTRAINT [FK_TestedProduct_Product]
GO
ALTER TABLE [dbo].[TestedProduct]  WITH CHECK ADD  CONSTRAINT [FK_TestedProduct_Product1] FOREIGN KEY([CompProdcutID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[TestedProduct] CHECK CONSTRAINT [FK_TestedProduct_Product1]
GO
USE [master]
GO
ALTER DATABASE [Compatibility] SET  READ_WRITE 
GO
