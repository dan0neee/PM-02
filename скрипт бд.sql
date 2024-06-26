USE [master]
GO
/****** Object:  Database [medlab!]    Script Date: 10.05.2024 14:04:14 ******/
CREATE DATABASE [medlab!]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'medlab!', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\medlab!.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'medlab!_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\medlab!_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [medlab!] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [medlab!].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [medlab!] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [medlab!] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [medlab!] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [medlab!] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [medlab!] SET ARITHABORT OFF 
GO
ALTER DATABASE [medlab!] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [medlab!] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [medlab!] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [medlab!] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [medlab!] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [medlab!] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [medlab!] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [medlab!] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [medlab!] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [medlab!] SET  DISABLE_BROKER 
GO
ALTER DATABASE [medlab!] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [medlab!] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [medlab!] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [medlab!] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [medlab!] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [medlab!] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [medlab!] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [medlab!] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [medlab!] SET  MULTI_USER 
GO
ALTER DATABASE [medlab!] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [medlab!] SET DB_CHAINING OFF 
GO
ALTER DATABASE [medlab!] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [medlab!] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [medlab!] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [medlab!] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'medlab!', N'ON'
GO
ALTER DATABASE [medlab!] SET QUERY_STORE = OFF
GO
USE [medlab!]
GO
/****** Object:  Table [dbo].[Авторизация]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Авторизация](
	[Код_авторизации] [int] NOT NULL,
	[Код_пользователя] [int] NULL,
	[Логин] [nvarchar](50) NULL,
	[Пароль] [nvarchar](50) NULL,
	[IP_адрес] [nvarchar](255) NULL,
	[Дата_и_время_входа] [datetime] NULL,
	[Время_блокировки] [datetime] NULL,
 CONSTRAINT [PK_Авторизация] PRIMARY KEY CLUSTERED 
(
	[Код_авторизации] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Анализатор]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Анализатор](
	[Код_анализатора] [int] NOT NULL,
	[Наименование] [nvarchar](50) NULL,
 CONSTRAINT [PK_Анализатор] PRIMARY KEY CLUSTERED 
(
	[Код_анализатора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Должность]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Должность](
	[Код_должности] [int] NOT NULL,
	[Наименование] [nvarchar](50) NULL,
 CONSTRAINT [PK_Должность] PRIMARY KEY CLUSTERED 
(
	[Код_должности] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Дополнительная_информация]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Дополнительная_информация](
	[Код_дополнительной_информации] [int] NOT NULL,
	[Код_пользователя] [int] NULL,
	[Серия_паспорта] [int] NULL,
	[Номер_паспорта] [int] NULL,
	[Номер_телефона] [nvarchar](18) NULL,
	[Email] [nvarchar](50) NULL,
	[Номер_страховой_компании] [int] NULL,
	[Номер_страхового_полиса] [nvarchar](16) NULL,
	[Код_типа_страхового_полиса] [int] NULL,
 CONSTRAINT [PK_Дополнительная_информация] PRIMARY KEY CLUSTERED 
(
	[Код_дополнительной_информации] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заказ]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заказ](
	[Код_заказа] [int] NOT NULL,
	[Код_услуги] [int] NULL,
	[Дата_создания_заказа] [date] NULL,
	[Код_статуса_заказа] [int] NULL,
	[Код_статуса_услуги] [int] NULL,
	[Время_выполнения_заказа] [nvarchar](20) NULL,
	[Код_пользователя] [int] NULL,
 CONSTRAINT [PK_Заказ] PRIMARY KEY CLUSTERED 
(
	[Код_заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Оказанные_услуги]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Оказанные_услуги](
	[Код_оказанной_услуги] [int] NOT NULL,
	[Дата_оказания_услуги] [date] NULL,
	[Код_заказа] [int] NULL,
	[Код_сотрудника] [int] NULL,
	[Код_анализатора] [int] NULL,
	[Код_услуги] [int] NULL,
	[Результат] [nvarchar](20) NULL,
 CONSTRAINT [PK_Оказанные_услуги] PRIMARY KEY CLUSTERED 
(
	[Код_оказанной_услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пользователи]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пользователи](
	[Код_пользователя] [int] NOT NULL,
	[Код_должности] [int] NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Отчество] [nvarchar](50) NULL,
 CONSTRAINT [PK_Пользователи] PRIMARY KEY CLUSTERED 
(
	[Код_пользователя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Работа_анализатора]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Работа_анализатора](
	[Код_анализатора] [int] NULL,
	[Дата_и_время_поступления_заказа_на_анализатор] [datetime] NOT NULL,
	[Дата_и_время_выполнения] [datetime] NULL,
	[Код_оказанной_услуги] [int] NULL,
 CONSTRAINT [PK_Работа_анализатора] PRIMARY KEY CLUSTERED 
(
	[Дата_и_время_поступления_заказа_на_анализатор] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Работа_с_биоматериалами]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Работа_с_биоматериалами](
	[Код_взятия_материала] [int] NOT NULL,
	[Код_пробирки] [int] NULL,
	[Дата_взятия] [date] NULL,
	[Вид_биоматериала] [nvarchar](50) NULL,
	[Код_сотрудника_взявшего_биоматериал] [int] NULL,
	[Код_должности] [int] NULL,
	[Наименование] [nvarchar](50) NULL,
 CONSTRAINT [PK_Работа_с_биоматериалами] PRIMARY KEY CLUSTERED 
(
	[Код_взятия_материала] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статус_заказа]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статус_заказа](
	[Код_статуса_заказа] [int] NOT NULL,
	[Статус_заказа] [nvarchar](50) NULL,
	[Код_заказа] [int] NULL,
 CONSTRAINT [PK_Статус_заказа] PRIMARY KEY CLUSTERED 
(
	[Код_статуса_заказа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статус_услуги]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статус_услуги](
	[Код_статуса_услуги] [int] NOT NULL,
	[Статус_услуги] [nvarchar](50) NULL,
	[Код_услуги] [int] NULL,
 CONSTRAINT [PK_Статус_услуги] PRIMARY KEY CLUSTERED 
(
	[Код_статуса_услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Страховая_компания]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Страховая_компания](
	[Код_страховой_компании] [int] NOT NULL,
	[Название_компании] [nvarchar](100) NULL,
	[Адрес] [nvarchar](100) NULL,
	[ИНН] [bigint] NULL,
	[Расчетный_счет] [bigint] NULL,
	[Банковский_идентификационный_номер] [bigint] NULL,
 CONSTRAINT [PK_Страховая_компания] PRIMARY KEY CLUSTERED 
(
	[Код_страховой_компании] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Счета_страховым_компаниям]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Счета_страховым_компаниям](
	[Код_счета] [int] NOT NULL,
	[Код_заказа] [int] NULL,
	[Код_пользователя_оформившего_заказ] [int] NULL,
	[Код_пользователя_ответственного_за_заказ] [int] NULL,
	[Код_страховой_компании] [int] NULL,
	[Общая_сумма] [money] NULL,
 CONSTRAINT [PK_Счета_страховым_компаниям] PRIMARY KEY CLUSTERED 
(
	[Код_счета] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тип_страхового_полиса]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тип_страхового_полиса](
	[Код_типа_страхового_полиса] [int] NOT NULL,
	[Наименование] [nvarchar](50) NULL,
 CONSTRAINT [PK_Тип_страхового_полиса] PRIMARY KEY CLUSTERED 
(
	[Код_типа_страхового_полиса] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Услуга]    Script Date: 10.05.2024 14:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Услуга](
	[Код_услуги] [int] NOT NULL,
	[Наименование_услуги] [nvarchar](50) NULL,
	[Стоимость_услуги] [money] NULL,
	[Код_сотрудника_ответственного_за_услугу] [int] NULL,
	[Код_должности_сотрудника] [int] NULL,
 CONSTRAINT [PK_Услуга] PRIMARY KEY CLUSTERED 
(
	[Код_услуги] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Авторизация]  WITH CHECK ADD  CONSTRAINT [FK_Авторизация_Пользователи] FOREIGN KEY([Код_пользователя])
REFERENCES [dbo].[Пользователи] ([Код_пользователя])
GO
ALTER TABLE [dbo].[Авторизация] CHECK CONSTRAINT [FK_Авторизация_Пользователи]
GO
ALTER TABLE [dbo].[Дополнительная_информация]  WITH CHECK ADD  CONSTRAINT [FK_Дополнительная_информация_Пользователи] FOREIGN KEY([Код_пользователя])
REFERENCES [dbo].[Пользователи] ([Код_пользователя])
GO
ALTER TABLE [dbo].[Дополнительная_информация] CHECK CONSTRAINT [FK_Дополнительная_информация_Пользователи]
GO
ALTER TABLE [dbo].[Дополнительная_информация]  WITH CHECK ADD  CONSTRAINT [FK_Дополнительная_информация_Страховая_компания] FOREIGN KEY([Номер_страховой_компании])
REFERENCES [dbo].[Страховая_компания] ([Код_страховой_компании])
GO
ALTER TABLE [dbo].[Дополнительная_информация] CHECK CONSTRAINT [FK_Дополнительная_информация_Страховая_компания]
GO
ALTER TABLE [dbo].[Дополнительная_информация]  WITH CHECK ADD  CONSTRAINT [FK_Дополнительная_информация_Тип_страхового_полиса] FOREIGN KEY([Код_типа_страхового_полиса])
REFERENCES [dbo].[Тип_страхового_полиса] ([Код_типа_страхового_полиса])
GO
ALTER TABLE [dbo].[Дополнительная_информация] CHECK CONSTRAINT [FK_Дополнительная_информация_Тип_страхового_полиса]
GO
ALTER TABLE [dbo].[Заказ]  WITH CHECK ADD  CONSTRAINT [FK_Заказ_Пользователи] FOREIGN KEY([Код_пользователя])
REFERENCES [dbo].[Пользователи] ([Код_пользователя])
GO
ALTER TABLE [dbo].[Заказ] CHECK CONSTRAINT [FK_Заказ_Пользователи]
GO
ALTER TABLE [dbo].[Заказ]  WITH CHECK ADD  CONSTRAINT [FK_Заказ_Статус_заказа] FOREIGN KEY([Код_статуса_заказа])
REFERENCES [dbo].[Статус_заказа] ([Код_статуса_заказа])
GO
ALTER TABLE [dbo].[Заказ] CHECK CONSTRAINT [FK_Заказ_Статус_заказа]
GO
ALTER TABLE [dbo].[Оказанные_услуги]  WITH CHECK ADD  CONSTRAINT [FK_Оказанные_услуги_Заказ] FOREIGN KEY([Код_заказа])
REFERENCES [dbo].[Заказ] ([Код_заказа])
GO
ALTER TABLE [dbo].[Оказанные_услуги] CHECK CONSTRAINT [FK_Оказанные_услуги_Заказ]
GO
ALTER TABLE [dbo].[Оказанные_услуги]  WITH CHECK ADD  CONSTRAINT [FK_Оказанные_услуги_Пользователи] FOREIGN KEY([Код_сотрудника])
REFERENCES [dbo].[Пользователи] ([Код_пользователя])
GO
ALTER TABLE [dbo].[Оказанные_услуги] CHECK CONSTRAINT [FK_Оказанные_услуги_Пользователи]
GO
ALTER TABLE [dbo].[Оказанные_услуги]  WITH CHECK ADD  CONSTRAINT [FK_Оказанные_услуги_Услуга1] FOREIGN KEY([Код_услуги])
REFERENCES [dbo].[Услуга] ([Код_услуги])
GO
ALTER TABLE [dbo].[Оказанные_услуги] CHECK CONSTRAINT [FK_Оказанные_услуги_Услуга1]
GO
ALTER TABLE [dbo].[Пользователи]  WITH CHECK ADD  CONSTRAINT [FK_Пользователи_Должность] FOREIGN KEY([Код_должности])
REFERENCES [dbo].[Должность] ([Код_должности])
GO
ALTER TABLE [dbo].[Пользователи] CHECK CONSTRAINT [FK_Пользователи_Должность]
GO
ALTER TABLE [dbo].[Работа_анализатора]  WITH CHECK ADD  CONSTRAINT [FK_Работа_анализатора_Анализатор] FOREIGN KEY([Код_анализатора])
REFERENCES [dbo].[Анализатор] ([Код_анализатора])
GO
ALTER TABLE [dbo].[Работа_анализатора] CHECK CONSTRAINT [FK_Работа_анализатора_Анализатор]
GO
ALTER TABLE [dbo].[Работа_анализатора]  WITH CHECK ADD  CONSTRAINT [FK_Работа_анализатора_Оказанные_услуги] FOREIGN KEY([Код_оказанной_услуги])
REFERENCES [dbo].[Оказанные_услуги] ([Код_оказанной_услуги])
GO
ALTER TABLE [dbo].[Работа_анализатора] CHECK CONSTRAINT [FK_Работа_анализатора_Оказанные_услуги]
GO
ALTER TABLE [dbo].[Работа_с_биоматериалами]  WITH CHECK ADD  CONSTRAINT [FK_Работа_с_биоматериалами_Должность] FOREIGN KEY([Код_должности])
REFERENCES [dbo].[Должность] ([Код_должности])
GO
ALTER TABLE [dbo].[Работа_с_биоматериалами] CHECK CONSTRAINT [FK_Работа_с_биоматериалами_Должность]
GO
ALTER TABLE [dbo].[Работа_с_биоматериалами]  WITH CHECK ADD  CONSTRAINT [FK_Работа_с_биоматериалами_Пользователи] FOREIGN KEY([Код_сотрудника_взявшего_биоматериал])
REFERENCES [dbo].[Пользователи] ([Код_пользователя])
GO
ALTER TABLE [dbo].[Работа_с_биоматериалами] CHECK CONSTRAINT [FK_Работа_с_биоматериалами_Пользователи]
GO
ALTER TABLE [dbo].[Статус_услуги]  WITH CHECK ADD  CONSTRAINT [FK_Статус_услуги_Услуга] FOREIGN KEY([Код_услуги])
REFERENCES [dbo].[Услуга] ([Код_услуги])
GO
ALTER TABLE [dbo].[Статус_услуги] CHECK CONSTRAINT [FK_Статус_услуги_Услуга]
GO
ALTER TABLE [dbo].[Счета_страховым_компаниям]  WITH CHECK ADD  CONSTRAINT [FK_Счета_страховым_компаниям_Заказ] FOREIGN KEY([Код_заказа])
REFERENCES [dbo].[Заказ] ([Код_заказа])
GO
ALTER TABLE [dbo].[Счета_страховым_компаниям] CHECK CONSTRAINT [FK_Счета_страховым_компаниям_Заказ]
GO
ALTER TABLE [dbo].[Счета_страховым_компаниям]  WITH CHECK ADD  CONSTRAINT [FK_Счета_страховым_компаниям_Пользователи] FOREIGN KEY([Код_пользователя_ответственного_за_заказ])
REFERENCES [dbo].[Пользователи] ([Код_пользователя])
GO
ALTER TABLE [dbo].[Счета_страховым_компаниям] CHECK CONSTRAINT [FK_Счета_страховым_компаниям_Пользователи]
GO
ALTER TABLE [dbo].[Счета_страховым_компаниям]  WITH CHECK ADD  CONSTRAINT [FK_Счета_страховым_компаниям_Страховая_компания] FOREIGN KEY([Код_страховой_компании])
REFERENCES [dbo].[Страховая_компания] ([Код_страховой_компании])
GO
ALTER TABLE [dbo].[Счета_страховым_компаниям] CHECK CONSTRAINT [FK_Счета_страховым_компаниям_Страховая_компания]
GO
ALTER TABLE [dbo].[Услуга]  WITH CHECK ADD  CONSTRAINT [FK_Услуга_Должность] FOREIGN KEY([Код_должности_сотрудника])
REFERENCES [dbo].[Должность] ([Код_должности])
GO
ALTER TABLE [dbo].[Услуга] CHECK CONSTRAINT [FK_Услуга_Должность]
GO
ALTER TABLE [dbo].[Услуга]  WITH CHECK ADD  CONSTRAINT [FK_Услуга_Пользователи] FOREIGN KEY([Код_сотрудника_ответственного_за_услугу])
REFERENCES [dbo].[Пользователи] ([Код_пользователя])
GO
ALTER TABLE [dbo].[Услуга] CHECK CONSTRAINT [FK_Услуга_Пользователи]
GO
USE [master]
GO
ALTER DATABASE [medlab!] SET  READ_WRITE 
GO
