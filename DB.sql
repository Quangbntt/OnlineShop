USE [ShopOnline]
GO
/****** Object:  Table [dbo].[About]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[Detail] [ntext] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NOT NULL,
	[DisplayOrder] [int] NULL,
	[Seotitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varbinary](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
	[Language] [varchar](2) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[CategoryID] [bigint] NOT NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tag] [nvarchar](500) NULL,
	[Language] [varchar](2) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credential](
	[UserGroupID] [varchar](20) NOT NULL,
	[RoleID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[Content] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[ID] [varchar](2) NULL,
	[Name] [nvarchar](50) NULL,
	[IsDefault] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [varchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](50) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[MoreImages] [xml] NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludedVAT] [bit] NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[CategoryID] [bigint] NOT NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Color] [nvarchar](250) NULL,
	[Fuels] [nvarchar](250) NULL,
	[Gear] [nvarchar](250) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[ShowOnHome] [bit] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
	[Discount] [int] NULL,
	[Details] [nvarchar](250) NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[PassWord] [varchar](32) NULL,
	[GroupID] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[Phone] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 12/16/2020 10:09:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ID], [Content], [Status]) VALUES (1, N'<p>Công ty cổ phần ô tô Việt Nam</p><p>Địa chỉ số 1 Tây Hồ</p><p>Điện thoại: 0987654321</p>', 1)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Tag], [Language]) VALUES (15, N'Tin tức demo', N'tin-tuc-demo', N'Description', N'/Data/images', 1, N'Detail', 12, CAST(N'2020-11-06T00:00:00.000' AS DateTime), N'admin', CAST(N'2020-11-06T00:00:00.000' AS DateTime), N'admin', NULL, N'Metadescription                                                                                                                                                                                                                                           ', 1, CAST(N'2020-11-06T14:18:14.403' AS DateTime), 1, N'1', N'vi')
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
INSERT [dbo].[ContentTag] ([ContentID], [TagID]) VALUES (1, N'thoi-su')
INSERT [dbo].[ContentTag] ([ContentID], [TagID]) VALUES (1, N'tin-tuc')
GO
INSERT [dbo].[Footer] ([ID], [Content], [Status]) VALUES (N'footer', N'<div class="wrap">
			<div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<h4>Information</h4>
					<ul>
						<li><a href="about.html">About Us</a></li>
						<li><a href="contact.html">Customer Service</a></li>
						<li><a href="#">Advanced Search</a></li>
						<li><a href="delivery.html">Orders and Returns</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Why buy from us</h4>
					<ul>
						<li><a href="about.html">About Us</a></li>
						<li><a href="contact.html">Customer Service</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="contact.html">Site Map</a></li>
						<li><a href="#">Search Terms</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>My account</h4>
					<ul>
						<li><a href="contact.html">Sign In</a></li>
						<li><a href="index.html">View Cart</a></li>
						<li><a href="#">My Wishlist</a></li>
						<li><a href="#">Track My Order</a></li>
						<li><a href="contact.html">Help</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact</h4>
					<ul>
						<li><span>+91-123-456789</span></li>
						<li><span>+00-123-000000</span></li>
					</ul>
					<div class="social-icons">
						<h4>Follow Us</h4>
						<ul>
							<li><a href="#" target="_blank"><img src="images/facebook.png" alt="" /></a></li>
							<li><a href="#" target="_blank"><img src="images/twitter.png" alt="" /></a></li>
							<li><a href="#" target="_blank"><img src="images/skype.png" alt="" /> </a></li>
							<li><a href="#" target="_blank"> <img src="images/dribbble.png" alt="" /></a></li>
							<li><a href="#" target="_blank"> <img src="images/linkedin.png" alt="" /></a></li>
							<div class="clear"></div>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="copy_right">
			<p>&copy; 2013 home_shoppe. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a>
			</p>
		</div>', 0)
INSERT [dbo].[Footer] ([ID], [Content], [Status]) VALUES (N'footer2', N'<div class="wrap">
			<div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<h4>Branch</h4>
					<ul>
						<li><a href="about.html"><img src="/assets/client/images/logo-otv.png" /></a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact us</h4>
					<ul>
						<li><a href="about.html"><img src="/assets/client/images/hot-line-2.png" /></a></li>
					</ul>
	
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>About Us</h4>
					<ul>
						<li><a href="contact.html">General policies and regulations</a></li>
						<li><a href="index.html">Payment regulations</a></li>
						<li><a href="#">Information security policy</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Policies & Regulations</h4>
					<ul>
						<li><a href="contact.html">Website operation regulations</a></li>
						<li><a href="index.html">Dispute resolution process</a></li>
						<li><a href="#">Transfer information</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="copy_right">
			<p>&copy; 2020 CarMarket. All rights reserved | Design by <a class="my_sign" href="http://w3layouts.com/">Nguyễn Đắc Quang</a>
			</p>
		</div>

	', 1)
GO
INSERT [dbo].[Language] ([ID], [Name], [IsDefault]) VALUES (N'vi', N'Tiếng Việt', 1)
INSERT [dbo].[Language] ([ID], [Name], [IsDefault]) VALUES (N'en', N'Tiếng Anh', 0)
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (1, N'Trang chủ', N'/', 1, N'_self ', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (2, N'Giới thiệu', N'/gioi-thieu', 2, N'_self ', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (3, N'Tin tức', N'/tin-tuc', 3, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (4, N'Sản phẩm', N'/san-pham', 4, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (5, N'Liên hệ', N'/lien-he', 5, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (6, N'Đăng nhập', N'/dang-nhap', 1, N'_self', 1, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (7, N'Đăng ký', N'/dang-ky', 2, N'_self', 1, 2)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (1, N'Menu chính')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (2, N'Menu top')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (1, CAST(N'2020-11-17T11:09:54.993' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (2, CAST(N'2020-11-17T17:50:35.200' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0978388332', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (3, CAST(N'2020-11-18T17:18:15.677' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (4, CAST(N'2020-11-18T17:18:40.720' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (5, CAST(N'2020-11-18T17:19:31.450' AS DateTime), NULL, N'Trần Văn Long', N'0987654321', N'Hà Nội', N'quang66@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (6, CAST(N'2020-11-18T17:21:57.677' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (7, CAST(N'2020-11-18T17:22:34.350' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (8, CAST(N'2020-11-18T17:42:27.550' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10003, CAST(N'2020-11-25T10:59:49.220' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10004, CAST(N'2020-11-25T11:08:48.870' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10005, CAST(N'2020-11-25T11:16:12.867' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10006, CAST(N'2020-11-25T11:17:59.743' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10007, CAST(N'2020-11-25T11:20:43.197' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10008, CAST(N'2020-11-25T11:21:28.607' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10009, CAST(N'2020-11-25T11:24:07.623' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0949840282', N'Hà Nội', N'quangndh@Gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10010, CAST(N'2020-11-25T11:25:25.087' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0949840282', N'Hà Nội', N'quangndh@Gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10011, CAST(N'2020-11-25T11:45:56.307' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10012, CAST(N'2020-11-25T11:47:08.883' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10013, CAST(N'2020-11-25T11:55:04.887' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10014, CAST(N'2020-11-25T11:57:11.433' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10015, CAST(N'2020-11-25T11:59:35.910' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10016, CAST(N'2020-11-25T14:15:26.937' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10017, CAST(N'2020-11-25T14:18:05.380' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10018, CAST(N'2020-11-25T14:41:02.917' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10019, CAST(N'2020-11-25T14:43:13.627' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10020, CAST(N'2020-11-25T14:53:32.653' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10021, CAST(N'2020-11-25T14:55:18.667' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0949840282', N'Hà Nội', N'quangndh@Gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10022, CAST(N'2020-11-25T14:56:31.600' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10023, CAST(N'2020-11-25T15:00:04.990' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0949840282', N'Hà Nội', N'quangndh@Gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10024, CAST(N'2020-11-25T15:03:30.720' AS DateTime), NULL, N'Nguyễn Đắc Quang', N'0967713501', N'Bắc Từ Liêm', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10025, CAST(N'2020-11-25T15:18:58.253' AS DateTime), NULL, N'quang', N'091931980', N'Hà Nội', N'quang', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10026, CAST(N'2020-11-25T15:19:09.697' AS DateTime), NULL, N'quang', N'091931980', N'Hà Nội', N'quang@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10027, CAST(N'2020-11-25T15:22:34.047' AS DateTime), NULL, N'Quang', N'03109310999', N'Hà Nội', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10028, CAST(N'2020-11-25T15:24:06.680' AS DateTime), NULL, N'Quang', N'03109310999', N'Hà Nội', N'ndquangtt1@gmail.com', NULL)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10029, CAST(N'2020-11-25T17:13:34.170' AS DateTime), NULL, N'Quang', N'03109310999', N'Hà Nội', N'ndquangtt1@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (10, 2, 1, CAST(2450000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 2, 1, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 3, 1, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 4, 1, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 5, 1, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 6, 1, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 7, 1, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 8, 1, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10003, 20, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10004, 2, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10009, 6, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10010, 6, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10019, 2, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10020, 2, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10022, 2, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10023, 6, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10024, 2, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10025, 1, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10026, 1, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10028, 1, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (11, 10029, 1, CAST(14988000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (12, 2, 1, CAST(15206000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (12, 7, 1, CAST(15206000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (12, 10008, 2, CAST(15206000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (13, 1, 1, CAST(1000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (20, 10027, 1, CAST(1000000000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [PromotionPrice], [IncludedVAT], [Price], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Color], [Fuels], [Gear]) VALUES (6, N'Accent AT', N'A01', N'accent-at', N'Hyundai Accent là mẫu xe nhỏ “subcompact car” hạng B (hạng nhỏ cao) của nhà sản xuất ô tô Hyundai, Hàn Quốc. Ra đời từ năm 1994, Hyundai Accent đã trải qua 5 thế hệ.', N'/assets/client/images/AccentAT.jpg', NULL, NULL, 1, CAST(480000000 AS Decimal(18, 0)), 10, 1, NULL, 12, CAST(N'2020-11-05T09:56:05.667' AS DateTime), N'admin', CAST(N'2020-11-05T09:56:05.667' AS DateTime), N'HuynDai', NULL, NULL, 1, CAST(N'2020-11-05T09:56:05.667' AS DateTime), 0, N'Xanh', N'Dầu', N'4.0')
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [PromotionPrice], [IncludedVAT], [Price], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Color], [Fuels], [Gear]) VALUES (7, N'Mercedes C300 AMG', N'A02', N'mercedes-c300-amg', N'Mercedes-Benz C 300 AMG là phiên bản được rất nhiều người quan tâm. Bên cạnh những sự nâng cấp về thiết kế, tiện nghi, phần động cơ cải tiến được đánh giá là đã góp phần giúp Mercedes-Benz C 300 AMG trở thành một mẫu xe đua thật thụ.', N'/assets/client/images/MercedesC300AMG.jpg', NULL, NULL, 0, CAST(1929000000 AS Decimal(18, 0)), 100, 1, NULL, 12, CAST(N'2020-11-05T09:57:03.560' AS DateTime), N'admin', CAST(N'2019-11-05T09:57:03.560' AS DateTime), N'Mercedes', NULL, NULL, 1, CAST(N'2020-11-05T09:57:03.560' AS DateTime), 0, N'Đỏ', N'Dầu', N'4.0')
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [PromotionPrice], [IncludedVAT], [Price], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Color], [Fuels], [Gear]) VALUES (8, N'Kia Sorento 2.2 Crdi', N'A03', N'kia-sorento-crdi', N'KIA SORENTO (All New) được trang bị hệ thống an toàn
chủ động thông minh vượt trội, mang lại sự an tâm
và tin tưởng cho người dùng.', N'/assets/client/images/KiaSorento2.2Crdi.jpg', NULL, NULL, 0, CAST(950000000 AS Decimal(18, 0)), 5, 2, NULL, 12, CAST(N'2020-11-05T09:57:38.970' AS DateTime), N'admin', CAST(N'2020-11-05T09:57:38.970' AS DateTime), N'Kia', NULL, NULL, 1, CAST(N'2020-11-05T09:57:38.970' AS DateTime), 0, N'Tím', N'Dầu', N'4.0')
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [PromotionPrice], [IncludedVAT], [Price], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Color], [Fuels], [Gear]) VALUES (10, N'Lexus RX350 AWD 3.5AT', N'A04', N'lexus-rx350-awd', N'Lexus RX350 2020 là phiên bản mới nhất của chiếc crossover hạng sang được ra mắt trong triển lãm Việt Nam Motor Show vào cuối năm vừa qua. Thật không hổ danh “ngôi vương” của mình, RX350 Lexus đã được giới chuyên gia dành cho kha khá những lời khen có cánh. Với “thiết kế táo bạo nhưng tinh tế”, “khả năng vận hành hứng khởi” cùng Công nghệ hiện đại cùng khả năng kết nối tiên tiến”, RX350 xứng đáng với vị thế “Ông hoàng” của dòng xe sang.', N'/assets/client/images/LexusRX350AWD3.5AT.jpg', NULL, NULL, 0, CAST(2450000000 AS Decimal(18, 0)), 5, 2, NULL, 12, CAST(N'2020-11-05T09:58:31.860' AS DateTime), N'admin', CAST(N'2019-11-05T09:58:31.860' AS DateTime), N'Lexus', NULL, NULL, 1, CAST(N'2020-11-05T09:58:31.860' AS DateTime), 0, N'Vàng', N'Dầu', N'4.0')
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [PromotionPrice], [IncludedVAT], [Price], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Color], [Fuels], [Gear]) VALUES (11, N'Aston Martin Vantage', N'A05', N'aston-martin-vantage', N'Đầu tiên phải kể đến gói ngoại thất Exterior Black Pack với các chi tiết sơn đen nhám trên lưới tản nhiệt phía trước, viền bao quanh lưới tản nhiệt, ống xả quad và khung viền cửa sổ. Ốp gương chiếu hậu ngoài, bộ khuếch tán phía sau, cánh gió khí động học và mái xe được sơn đen bóng, tạo cảm giác tương phản nhẹ.', N'/assets/client/images/AstonMartinVantage.jpg', NULL, NULL, 0, CAST(14988000000 AS Decimal(18, 0)), 5, 8, NULL, 12, CAST(N'2020-11-05T09:58:59.113' AS DateTime), N'admin', CAST(N'2020-11-05T09:58:59.113' AS DateTime), N'Aston Martin', NULL, NULL, 1, CAST(N'2020-11-05T09:58:59.113' AS DateTime), 0, N'Trắng', N'Dầu', N'4.0')
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [PromotionPrice], [IncludedVAT], [Price], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Color], [Fuels], [Gear]) VALUES (12, N'Maserati Gran Turismo', N'A06', N'maserati-gran-turismo', N'Maserati GranTurismo Targa mới được xem là mẫu concept đẹp và lộng lẫy bậc nhất của thương hiệu xe Ý, thâm chí nó còn làm lu mờ MC20. Điểm đáng tiếc là nó sẽ không bao giờ được đưa vào sản xuất.', N'/assets/client/images/MaseratiGranTurismo.jpg', NULL, NULL, 0, CAST(15206000000 AS Decimal(18, 0)), 8, 8, NULL, 12, CAST(N'2020-11-05T09:59:31.477' AS DateTime), N'admin', CAST(N'2019-11-05T09:59:31.477' AS DateTime), N'Maserati', NULL, NULL, 1, CAST(N'2020-12-12T00:00:00.000' AS DateTime), 0, N'Nâu', N'Dầu', N'4.0')
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [PromotionPrice], [IncludedVAT], [Price], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Color], [Fuels], [Gear]) VALUES (13, N'Audi TT', N'A07', N'audi-tt', N'Audi TT S-Line được bổ sung một số chi tiết. Về ngoại thất, TT S-Line sở hữu bộ lưới tản nhiệt dạng khung đơn ngang – không khác biệt so với đời trước. Gương chiếu hậu tích hợp đèn xi-nhan được sơn đen bóng khá ngầu.', N'/assets/client/images/AudiTT.jpg', NULL, NULL, 0, CAST(2060000000 AS Decimal(18, 0)), 19, 8, NULL, 12, CAST(N'2020-11-05T10:00:14.783' AS DateTime), N'admin', CAST(N'2020-11-05T10:00:14.783' AS DateTime), N'Audi', NULL, NULL, 1, CAST(N'2020-12-12T00:00:00.000' AS DateTime), 0, N'Lục', N'Dầu', N'4.0')
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [PromotionPrice], [IncludedVAT], [Price], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Color], [Fuels], [Gear]) VALUES (20, N'Lamborghini Huracan EVO', N'A08', N'Lamborghini-Huracan_EVO', N'Chiếc siêu xe Huracan Evo RWB sở hữu nhiều chi tiết thay đổi và nâng cấp khác biệt so với các phiên bản Evo và Evo Spyder. Dễ thấy nhất chính là chi tiết cản trước được thiết kế mới và nâng cao hơn, các hốc hút gió phía trước được thiết kế chéo nhau nhưng liền mạch với nắp ca-pô phía trên. Chi tiết này tương tự với chiếc Gallardo LP560-4 Facelift giúp nhận gió từ phía ngoài nhiều hơn và tăng khả năng khí động học.', N'/assets/client/images/Lamborghini-Huracan_EVO-.png', NULL, NULL, 1, CAST(1000000000 AS Decimal(18, 0)), 1, 12, NULL, 12, CAST(N'2020-11-24T13:54:53.740' AS DateTime), N'quangnd', CAST(N'2019-11-24T13:54:53.740' AS DateTime), N'Lamborghini', NULL, NULL, 1, CAST(N'2020-11-24T13:54:53.740' AS DateTime), NULL, N'Đen', N'Dầu', N'4.0')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (1, N'Sedan', N'se-dan', NULL, 1, NULL, CAST(N'2020-11-05T09:37:50.653' AS DateTime), N'admin', CAST(N'2020-11-05T09:37:50.653' AS DateTime), NULL, NULL, NULL, 0, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (2, N'SUV', N'suv', NULL, 1, NULL, CAST(N'2020-11-05T09:38:14.223' AS DateTime), N'admin', CAST(N'2020-11-05T09:38:14.223' AS DateTime), NULL, NULL, NULL, 0, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (3, N'MPV', N'mpv', NULL, 1, NULL, CAST(N'2020-11-05T09:38:43.390' AS DateTime), N'admin', CAST(N'2020-11-05T09:38:43.390' AS DateTime), NULL, NULL, NULL, 0, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (4, N'Mini van', N'mini-van', NULL, 1, NULL, CAST(N'2020-11-05T09:39:03.173' AS DateTime), N'admin', CAST(N'2020-11-05T09:39:03.173' AS DateTime), NULL, NULL, NULL, 0, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (5, N'Hatchback', N'hatchback', NULL, 1, NULL, CAST(N'2020-11-05T09:39:24.470' AS DateTime), N'admin', CAST(N'2020-11-05T09:39:24.470' AS DateTime), NULL, NULL, NULL, 0, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (6, N'Pickup(bán tải) ', N'pickup', NULL, 1, NULL, CAST(N'2020-11-05T09:39:39.240' AS DateTime), N'admin', CAST(N'2020-11-05T09:39:39.240' AS DateTime), NULL, NULL, NULL, 0, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (7, N'CUV(Crossover)', N'cuv', NULL, 1, NULL, CAST(N'2020-11-05T09:39:58.143' AS DateTime), N'admin', CAST(N'2020-11-05T09:39:58.143' AS DateTime), NULL, NULL, NULL, 0, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (8, N'Coupe', N'coupe', NULL, 1, NULL, CAST(N'2020-11-05T09:40:27.127' AS DateTime), N'admin', CAST(N'2020-11-05T09:40:27.127' AS DateTime), NULL, NULL, NULL, 0, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (9, N'Convertible', N'convertible', NULL, 1, NULL, CAST(N'2020-11-05T09:40:42.770' AS DateTime), N'admin', CAST(N'2020-11-05T09:40:42.770' AS DateTime), NULL, NULL, NULL, 0, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (10, N'Limousine', N'limousine', NULL, 1, NULL, CAST(N'2020-11-05T09:40:58.110' AS DateTime), N'admin', CAST(N'2020-11-05T09:40:58.110' AS DateTime), NULL, NULL, NULL, 0, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (11, N'Làm đẹp ', N'lam-dep', NULL, 1, NULL, CAST(N'2020-11-05T09:41:45.290' AS DateTime), N'admin', CAST(N'2020-11-05T09:41:45.290' AS DateTime), NULL, NULL, NULL, 0, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (12, N'Coupe(2 cửa)', N'coupe-2-cua', 8, 1, NULL, CAST(N'2020-11-05T10:47:32.377' AS DateTime), NULL, CAST(N'2020-11-05T10:47:32.377' AS DateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (13, N'Coupe(4 cửa)', N'coupe-4-cua', 8, 1, NULL, CAST(N'2020-11-17T16:23:42.723' AS DateTime), NULL, CAST(N'2020-11-17T16:23:42.723' AS DateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (14, N'SUV(5 chỗ)', N'suv-5 cho', 2, 1, NULL, CAST(N'2020-11-17T16:25:56.803' AS DateTime), NULL, CAST(N'2020-11-17T16:25:56.803' AS DateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [ShowOnHome], [Status]) VALUES (15, N'SUV(7 chỗ)', N'suv-7-cho', 2, 1, NULL, CAST(N'2020-11-17T16:26:14.697' AS DateTime), NULL, CAST(N'2020-11-17T16:26:14.697' AS DateTime), NULL, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_CONTENT', N'Thêm tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_USER', N'Thêm user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_USER', N'Xóa user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_CONTENT', N'Sửa tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_USER', N'Sửa user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_USER', N'Xem danh sách user')
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [Discount], [Details]) VALUES (1, N'/assets/client/images/Lamborghini-Huracan_EVO-.png', 1, N'chi-tiet/maserati-gran-turismo-12', N'Lamborghini Huracan_EVO', CAST(N'2020-11-05T09:48:53.463' AS DateTime), NULL, CAST(N'2020-11-05T09:48:53.463' AS DateTime), NULL, 1, 5, N'Lamboghini promotion extremely shocking last year')
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [Discount], [Details]) VALUES (2, N'/assets/client/images/Lamborghini-Veneno.png', 2, N'chi-tiet/maserati-gran-turismo-12', N'Lamborghini Veneno', CAST(N'2020-11-05T09:49:00.170' AS DateTime), NULL, CAST(N'2020-11-05T09:49:00.170' AS DateTime), NULL, 1, 3, N'Lamboghini promotion extremely shocking last year')
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [Discount], [Details]) VALUES (3, N'/assets/client/images/Lamborghini2.png', 3, N'chi-tiet/maserati-gran-turismo-12', N'Lamborghini Special', CAST(N'2020-11-05T09:49:21.307' AS DateTime), NULL, CAST(N'2020-11-05T09:49:21.307' AS DateTime), NULL, 1, 3, N'Lamboghini promotion extremely shocking last year')
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status], [Discount], [Details]) VALUES (4, N'/assets/client/images/toyota-86-2020.png', 4, N'chi-tiet/maserati-gran-turismo-12', N'Toyota', CAST(N'2020-11-17T13:44:25.557' AS DateTime), NULL, CAST(N'2020-11-17T13:44:25.557' AS DateTime), NULL, 1, 10, N'Toyota deep discounts, nice cheap cars')
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [ProvinceID], [DistrictID], [Phone], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (1, N'Admin', N'c4ca4238a0b923820dcc509a6f75849b', N'ADMIN', N'Admin', N'Hà Nội', N'Admin@gmail.com', NULL, NULL, N'0987654321', CAST(N'2020-11-04T17:31:06.500' AS DateTime), N'Admin', CAST(N'2020-11-04T17:31:06.500' AS DateTime), N'Admin', 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [ProvinceID], [DistrictID], [Phone], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (2, N'quangnd', N'c4ca4238a0b923820dcc509a6f75849b', N'MEMBER', N'Admin', N'Bắc Ninh', N'ndquangtt1@gmail.com', NULL, NULL, N'0967576345', CAST(N'2020-11-04T17:43:21.310' AS DateTime), N'Admin', CAST(N'2020-11-04T17:43:21.310' AS DateTime), N'Admin', 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [ProvinceID], [DistrictID], [Phone], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (3, N'ndquang', N'e10adc3949ba59abbe56e057f20f883e', N'MEMBER', N'Nguyễn Đắc Quang', N'Bắc Từ Liêm', N'ndquangtt1@gmail.co', NULL, NULL, N'0988777833', CAST(N'2020-11-06T21:30:52.340' AS DateTime), N'Admin', NULL, N'Admin', 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [ProvinceID], [DistrictID], [Phone], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (4, N'quangbn', N'e10adc3949ba59abbe56e057f20f883e', NULL, N'Nguyễn Đắc Quang', N'Bắc Từ Liêm', N'quang@gmail.com', 101, 10121, N'0967713501', CAST(N'2020-11-18T16:45:25.733' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [ProvinceID], [DistrictID], [Phone], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (5, N'ndquangbn', N'e10adc3949ba59abbe56e057f20f883e', NULL, N'Nguyễn Đắc Quang', N'Bắc Từ Liêm', N'quangbn@gmail.com', 101, 10121, N'0967713501', CAST(N'2020-11-18T16:46:18.227' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [ProvinceID], [DistrictID], [Phone], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (6, NULL, N'e10adc3949ba59abbe56e057f20f883e', NULL, N'Nguyễn Đắc Quang', N'Bắc Từ Liêm', N'quanghaui@gmail.com', 101, 10121, N'0967713501', CAST(N'2020-11-18T16:56:48.007' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[User] ([ID], [UserName], [PassWord], [GroupID], [Name], [Address], [Email], [ProvinceID], [DistrictID], [Phone], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (10004, N'quangnguyen', N'e10adc3949ba59abbe56e057f20f883e', NULL, N'Nguyễn Đắc Quang', N'Bắc Từ Liêm', N'quangnguyen@gmail.com', 101, 10121, N'0978388332', CAST(N'2020-11-24T21:07:39.070' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'ADMIN', N'Quản trị')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MEMBER', N'Thành viên')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD', N'Moderatior')
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_ShowOnHome]  DEFAULT ((1)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_TopHot]  DEFAULT (getdate()) FOR [TopHot]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Footer] ADD  CONSTRAINT [DF_Footer_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_TopHot]  DEFAULT (getdate()) FOR [TopHot]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_ShowOnHome]  DEFAULT ((1)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Slide] ADD  CONSTRAINT [DF_Slide_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[SystemConfig] ADD  CONSTRAINT [DF_SystemConfig_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Name]  DEFAULT (N'MEMBER') FOR [Name]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Status]  DEFAULT ((1)) FOR [Status]
GO
