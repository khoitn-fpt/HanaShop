USE [HanaShop]
GO
/****** Object:  Table [dbo].[account]    Script Date: 1/19/2021 9:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
	[Gmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopping]    Script Date: 1/19/2021 9:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopping](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [nvarchar](100) NULL,
	[description] [nvarchar](200) NULL,
	[price] [float] NULL,
	[createDate] [date] NULL,
	[category] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_shopping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblcategory]    Script Date: 1/19/2021 9:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblcategory](
	[category] [nvarchar](50) NOT NULL,
	[categoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblcategory] PRIMARY KEY CLUSTERED 
(
	[category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblorder]    Script Date: 1/19/2021 9:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblorder](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Orderdate] [date] NULL,
	[Totalprice] [float] NULL,
 CONSTRAINT [PK_tblorder] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblorderdetail]    Script Date: 1/19/2021 9:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblorderdetail](
	[Detailid] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NULL,
	[id] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_tblorderdetail] PRIMARY KEY CLUSTERED 
(
	[Detailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUpdaterecord]    Script Date: 1/19/2021 9:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUpdaterecord](
	[username] [nvarchar](50) NOT NULL,
	[updateday] [date] NULL,
	[kind] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblUpdaterecord] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([Username], [Password], [Fullname], [Role], [Gmail]) VALUES (N'bang', N'111', N'Bang Huynh', N'user', N'bang@gmail.com')
INSERT [dbo].[account] ([Username], [Password], [Fullname], [Role], [Gmail]) VALUES (N'kukhoi.2202', NULL, NULL, N'user', N'kukhoi.2202@gmail.com')
INSERT [dbo].[account] ([Username], [Password], [Fullname], [Role], [Gmail]) VALUES (N'khoi', N'123', N'Khoi Tran', N'admin', N'khoi@gmail.com')
GO
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'109', N'ahihi', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\7564410c2b7ddfceb144a32467e0e986.jfif', N'ghjknh', 456, CAST(N'2021-01-18' AS Date), N'F', 31, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'111', N'sting', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\download (1).jfif', N'hinh dep', 10, CAST(N'2021-01-16' AS Date), N'D', 2, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'112', N'My tron', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\1561084930-885-thumbnail_schema_article.jpg', N'my tron sieu cay', 25, CAST(N'2021-01-19' AS Date), N'F', 56, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'12', N'My Y', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\1561084930-885-thumbnail_schema_article.jpg', N'Soi my dai ngon , nuoc sot dam vi', 59, CAST(N'2021-01-17' AS Date), N'F', 55, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'15', N'Kim Chi ', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\7564410c2b7ddfceb144a32467e0e986.jfif', N'Kim Chi Han Quoc', 36, CAST(N'2021-01-17' AS Date), N'F', 150, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'2', N'Pepsi', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\nuoc-ngot-pepsi-thai-lon-330ml.jpg', N'Nuoc ngot co gas Tu Pepsico', 10, CAST(N'2021-01-17' AS Date), N'D', 99, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'3', N'Banh kem', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\download.jfif', N'Banh happy birthday', 280, CAST(N'2021-01-16' AS Date), N'F', 0, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'4', N'coconut', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\81Qr89M5WeL._SY445_.jpg', N'keo ngon ben tre', 21, CAST(N'2021-01-16' AS Date), N'F', 85, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'5', N'Tra Xanh', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\SLIDE.jpg', N'Tra Xanh Khong Do', 9, CAST(N'2021-01-17' AS Date), N'D', 100, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'56', N'Milk Vinamilk', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\3c69d1bbdff07d7ed77a65e200d240f4.jpg', N'Sua bo Vianamilk', 26, CAST(N'2021-01-17' AS Date), N'D', 44, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'57', N'Sting strawbery', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\download (1).jfif', N'Nuoc tang Sting dau', 12, CAST(N'2021-01-17' AS Date), N'D', 2, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'58', N'Sushi', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\Nha-hang-Sushi-Sai-Gon-1.jpg', N'Sushi Nhap Khau tu nhat ban', 120, CAST(N'2021-01-17' AS Date), N'F', 2, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'59', N'Cosy cake', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\unnamed.jpg', N'Banh Cosy san pham cua kinh do', 56, CAST(N'2021-01-17' AS Date), N'F', 44, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'6', N'Tra Xanh', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\SLIDE.jpg', N'Tra Xanh 0 do tu thai nguyen', 10, CAST(N'2021-01-16' AS Date), N'D', 29, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'7', N'Bun dau', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\maxresdefault.jpg', N'Bun dau mam tom noi tieng ha noi', 89, CAST(N'2021-01-17' AS Date), N'F', 0, 0)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'8', N'Banh xeo', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\nuoc-cham-banh-xeo-thumbnail.jpg', N'Banh xeo mien trung', 15, CAST(N'2021-01-17' AS Date), N'F', 22, 1)
INSERT [dbo].[shopping] ([id], [name], [image], [description], [price], [createDate], [category], [quantity], [status]) VALUES (N'9', N'Nuoc Mia', N'D:\FPT University\Chuyen nghanh 5\LAB_WEB\HanaShop\image\download (3).jfif', N'Nuoc Mia sieu sach', 5, CAST(N'2021-01-17' AS Date), N'D', 48, 1)
GO
INSERT [dbo].[tblcategory] ([category], [categoryName]) VALUES (N'a', N'a')
INSERT [dbo].[tblcategory] ([category], [categoryName]) VALUES (N'aa', N'aa')
INSERT [dbo].[tblcategory] ([category], [categoryName]) VALUES (N'D', N'Drink')
INSERT [dbo].[tblcategory] ([category], [categoryName]) VALUES (N'E', N'ExtraFood')
INSERT [dbo].[tblcategory] ([category], [categoryName]) VALUES (N'F', N'Food')
GO
SET IDENTITY_INSERT [dbo].[tblorder] ON 

INSERT [dbo].[tblorder] ([orderid], [Username], [Orderdate], [Totalprice]) VALUES (184, N'bang', CAST(N'2021-01-19' AS Date), 387)
INSERT [dbo].[tblorder] ([orderid], [Username], [Orderdate], [Totalprice]) VALUES (185, N'bang', CAST(N'2021-01-19' AS Date), 127)
INSERT [dbo].[tblorder] ([orderid], [Username], [Orderdate], [Totalprice]) VALUES (186, N'bang', CAST(N'2021-01-19' AS Date), 866)
INSERT [dbo].[tblorder] ([orderid], [Username], [Orderdate], [Totalprice]) VALUES (187, N'bang', CAST(N'2021-01-19' AS Date), 586)
INSERT [dbo].[tblorder] ([orderid], [Username], [Orderdate], [Totalprice]) VALUES (188, N'bang', CAST(N'2021-01-19' AS Date), 15)
INSERT [dbo].[tblorder] ([orderid], [Username], [Orderdate], [Totalprice]) VALUES (189, N'kukhoi.2202', CAST(N'2021-01-19' AS Date), 560)
INSERT [dbo].[tblorder] ([orderid], [Username], [Orderdate], [Totalprice]) VALUES (190, N'kukhoi.2202', CAST(N'2021-01-19' AS Date), 560)
INSERT [dbo].[tblorder] ([orderid], [Username], [Orderdate], [Totalprice]) VALUES (191, N'kukhoi.2202', CAST(N'2021-01-19' AS Date), 280)
SET IDENTITY_INSERT [dbo].[tblorder] OFF
GO
SET IDENTITY_INSERT [dbo].[tblorderdetail] ON 

INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (44, 184, N'9', N'Nuoc Mia', 5, 2)
INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (45, 184, N'8', N'Banh xeo', 15, 1)
INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (46, 184, N'3', N'Banh kem', 280, 1)
INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (47, 184, N'56', N'Milk Vinamilk', 26, 1)
INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (48, 184, N'59', N'Cosy cake', 56, 1)
INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (49, 184, N'112', N'My tron', 25, 2)
INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (50, 184, N'59', N'Cosy cake', 56, 1)
INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (51, 184, N'4', N'coconut', 21, 1)
INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (52, 186, N'56', N'Milk Vinamilk', 26, 1)
INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (53, 187, N'56', N'Milk Vinamilk', 26, 1)
INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (54, 188, N'9', N'Nuoc Mia', 5, 1)
INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (55, 188, N'6', N'Tra Xanh', 10, 1)
INSERT [dbo].[tblorderdetail] ([Detailid], [orderid], [id], [name], [price], [quantity]) VALUES (56, 191, N'3', N'Banh kem', 280, 1)
SET IDENTITY_INSERT [dbo].[tblorderdetail] OFF
GO
INSERT [dbo].[tblUpdaterecord] ([username], [updateday], [kind]) VALUES (N'Khoi Tran', CAST(N'2021-01-17' AS Date), N'Update')
GO
ALTER TABLE [dbo].[shopping]  WITH CHECK ADD  CONSTRAINT [FK_shopping_tblcategory] FOREIGN KEY([category])
REFERENCES [dbo].[tblcategory] ([category])
GO
ALTER TABLE [dbo].[shopping] CHECK CONSTRAINT [FK_shopping_tblcategory]
GO
ALTER TABLE [dbo].[shopping]  WITH CHECK ADD  CONSTRAINT [FK_shopping_tblcategory1] FOREIGN KEY([category])
REFERENCES [dbo].[tblcategory] ([category])
GO
ALTER TABLE [dbo].[shopping] CHECK CONSTRAINT [FK_shopping_tblcategory1]
GO
ALTER TABLE [dbo].[tblorder]  WITH CHECK ADD  CONSTRAINT [FK_tblorder_account] FOREIGN KEY([Username])
REFERENCES [dbo].[account] ([Username])
GO
ALTER TABLE [dbo].[tblorder] CHECK CONSTRAINT [FK_tblorder_account]
GO
ALTER TABLE [dbo].[tblorderdetail]  WITH CHECK ADD  CONSTRAINT [FK_tblorderdetail_shopping] FOREIGN KEY([id])
REFERENCES [dbo].[shopping] ([id])
GO
ALTER TABLE [dbo].[tblorderdetail] CHECK CONSTRAINT [FK_tblorderdetail_shopping]
GO
ALTER TABLE [dbo].[tblorderdetail]  WITH CHECK ADD  CONSTRAINT [FK_tblorderdetail_tblorder] FOREIGN KEY([orderid])
REFERENCES [dbo].[tblorder] ([orderid])
GO
ALTER TABLE [dbo].[tblorderdetail] CHECK CONSTRAINT [FK_tblorderdetail_tblorder]
GO
