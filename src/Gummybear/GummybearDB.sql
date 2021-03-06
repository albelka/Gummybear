USE [Gummybear]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/10/2017 3:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/10/2017 3:55:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Cost] [money] NOT NULL,
	[From] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170210164953_Initial', N'1.0.0-rtm-21431')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170210194733_AddPictureProperty', N'1.0.1')
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Cost], [From], [Name], [Picture]) VALUES (1, 14.3400, N'Germany', N'Giant Gummy Bear', N'https://cdn.shopify.com/s/files/1/0972/7116/products/giant-gummy-bear-orange-8.5oz.png?v=1477586768')
INSERT [dbo].[Products] ([ProductId], [Cost], [From], [Name], [Picture]) VALUES (3, 30.1200, N'Germany', N'1000 gummy bears', N'https://www.themusicman.com/wp-content/uploads/sites/12/2015/11/babygummybears.png')
INSERT [dbo].[Products] ([ProductId], [Cost], [From], [Name], [Picture]) VALUES (4, 10.0000, N'Belize', N'Gummy Shirt', N'http://www.landofthegummies.com/wp-content/uploads/2014/11/WNSS5.png')
SET IDENTITY_INSERT [dbo].[Products] OFF
