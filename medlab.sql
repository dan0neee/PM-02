USE [master]
GO
/****** Object:  Database [medlab]    Script Date: 07.05.2024 15:00:07 ******/
CREATE DATABASE [medlab]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'medlab', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\medlab.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'medlab_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\medlab_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [medlab] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [medlab].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [medlab] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [medlab] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [medlab] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [medlab] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [medlab] SET ARITHABORT OFF 
GO
ALTER DATABASE [medlab] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [medlab] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [medlab] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [medlab] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [medlab] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [medlab] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [medlab] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [medlab] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [medlab] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [medlab] SET  DISABLE_BROKER 
GO
ALTER DATABASE [medlab] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [medlab] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [medlab] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [medlab] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [medlab] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [medlab] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [medlab] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [medlab] SET RECOVERY FULL 
GO
ALTER DATABASE [medlab] SET  MULTI_USER 
GO
ALTER DATABASE [medlab] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [medlab] SET DB_CHAINING OFF 
GO
ALTER DATABASE [medlab] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [medlab] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [medlab] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [medlab] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'medlab', N'ON'
GO
ALTER DATABASE [medlab] SET QUERY_STORE = ON
GO
ALTER DATABASE [medlab] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [medlab]
GO
/****** Object:  Table [dbo].[Админ]    Script Date: 07.05.2024 15:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Админ](
	[id_админа] [int] NOT NULL,
	[логин] [varchar](50) NULL,
	[пароль] [varchar](50) NULL,
 CONSTRAINT [PK_Админ] PRIMARY KEY CLUSTERED 
(
	[id_админа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[бухгалтер]    Script Date: 07.05.2024 15:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[бухгалтер](
	[id_бухгалтера] [int] NOT NULL,
	[логин] [varchar](50) NULL,
	[пароль] [varchar](50) NULL,
	[Фамилия] [varchar](50) NULL,
	[Имя] [varchar](50) NULL,
	[Отчество] [varchar](50) NULL,
	[Дата_и_время_входа] [datetime] NULL,
	[id_услуги] [int] NULL,
	[счет] [money] NULL,
 CONSTRAINT [PK_бухгалтер] PRIMARY KEY CLUSTERED 
(
	[id_бухгалтера] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[данные лаборантов]    Script Date: 07.05.2024 15:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[данные лаборантов](
	[id_лаборанта] [int] NOT NULL,
	[логин] [varchar](50) NULL,
	[пароль] [varchar](50) NULL,
	[Фамилия] [varchar](50) NULL,
	[Имя] [varchar](50) NULL,
	[Отчество] [varchar](50) NULL,
	[дата_и_время_входа] [datetime] NULL,
	[id_услуги] [int] NULL,
 CONSTRAINT [PK_данные лаборантов] PRIMARY KEY CLUSTERED 
(
	[id_лаборанта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[данные о работе анализатора]    Script Date: 07.05.2024 15:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[данные о работе анализатора](
	[id_анализатора] [int] NOT NULL,
	[дата_и_время_поступления_заказа_на_анализатор] [date] NULL,
	[дата_и_время_выполнения_услуг] [time](6) NULL,
 CONSTRAINT [PK_данные о работе анализатора] PRIMARY KEY CLUSTERED 
(
	[id_анализатора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[данные пациентов]    Script Date: 07.05.2024 15:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[данные пациентов](
	[id_пациента] [int] NOT NULL,
	[Логин] [varchar](50) NULL,
	[Пароль] [varchar](50) NULL,
	[Фамилия] [varchar](50) NULL,
	[Имя] [varchar](50) NULL,
	[Отчество] [varchar](50) NULL,
	[дата_рождения] [date] NULL,
	[серия_паспорта] [varchar](4) NULL,
	[номер_паспорта] [varchar](6) NULL,
	[телефон] [varchar](12) NULL,
	[почта] [varchar](50) NULL,
	[номер_страхового_полиса] [int] NULL,
	[тип_страхового_полиса] [varchar](50) NULL,
	[страховая_компания] [varchar](50) NULL,
 CONSTRAINT [PK_данные пациентов] PRIMARY KEY CLUSTERED 
(
	[id_пациента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[данные_о_страховых_компаниях]    Script Date: 07.05.2024 15:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[данные_о_страховых_компаниях](
	[id_компании] [int] NOT NULL,
	[Название] [varchar](50) NULL,
	[адрес] [varchar](50) NULL,
	[ИНН] [int] NULL,
	[р/с] [int] NULL,
	[БИК] [int] NULL,
 CONSTRAINT [PK_данные_о_страховых_компаниях] PRIMARY KEY CLUSTERED 
(
	[id_компании] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[заказ]    Script Date: 07.05.2024 15:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[заказ](
	[id_заказа] [int] NOT NULL,
	[дата_создания] [date] NULL,
	[услуги] [varchar](50) NULL,
	[статус_заказа] [varchar](50) NULL,
	[статус_услуги] [varchar](50) NULL,
	[время_выполнения_заказа] [int] NULL,
 CONSTRAINT [PK_заказ] PRIMARY KEY CLUSTERED 
(
	[id_заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[оказанная услуга]    Script Date: 07.05.2024 15:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[оказанная услуга](
	[id_услуги] [int] NOT NULL,
	[Дата_оказания_услуги] [date] NULL,
	[id_лаборанта] [int] NULL,
	[id_анализатора] [int] NULL,
 CONSTRAINT [PK_оказанная услуга] PRIMARY KEY CLUSTERED 
(
	[id_услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Услуги]    Script Date: 07.05.2024 15:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуги](
	[id_услуги] [int] NOT NULL,
	[название] [varchar](50) NULL,
	[стоимость] [money] NULL,
 CONSTRAINT [PK_Услуги] PRIMARY KEY CLUSTERED 
(
	[id_услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[услуги лаборатории]    Script Date: 07.05.2024 15:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[услуги лаборатории](
	[id_услуги] [int] NOT NULL,
	[Наименование] [varchar](50) NULL,
	[Стоимость] [money] NULL,
	[срок_выполнения] [date] NULL,
	[среднее_отклонение] [float] NULL,
 CONSTRAINT [PK_услуги лаборатории] PRIMARY KEY CLUSTERED 
(
	[id_услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [medlab] SET  READ_WRITE 
GO
