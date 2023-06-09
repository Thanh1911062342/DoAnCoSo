USE [master]
GO
/****** Object:  Database [WebBanSach]    Script Date: 05/08/2021 5:38:58 CH ******/
CREATE DATABASE [WebBanSach]
GO
USE [WebBanSach]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDUser] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CartDetail]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDCart] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[Quality] [int] NULL,
 CONSTRAINT [PK_CartDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImgProduct]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDProduct] [int] NOT NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_ImgProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDOrder] [int] NOT NULL,
	[IDProduct] [int] NOT NULL,
	[Quality] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[IDSupplier] [int] NOT NULL,
	[IDCategory] [int] NOT NULL,
	[ListPrice] [float] NOT NULL,
	[Discout] [float] NULL CONSTRAINT [DF_Product_Discout]  DEFAULT ((0)),
	[Status] [int] NOT NULL,
	[Detail] [nvarchar](max) NULL,
	[Author] [nvarchar](max) NULL,
	[Quality] [int] NULL CONSTRAINT [DF_Product_Quality]  DEFAULT ((0)),
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] NOT NULL,
	[RoleName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SuplierName] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SystemUser]    Script Date: 05/08/2021 5:38:58 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemUser](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Gender] [nvarchar](15) NULL,
	[Status] [int] NOT NULL,
	[IDRole] [int] NOT NULL,
 CONSTRAINT [PK_SystemUser] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202107310122565_addUser', N'WebBanSach.Migrations.Configuration', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC1659276983E68675B6EDDB829668475889D24A543641B15FD6877E527FA14389BAF1A28BADD84EB1C0C222876786C321391C0EF3EFDFFF8C7F7EF43DE30147B11B90897930DA370D4CECC071C972622674F1FD1BF3E79FBEFE6A7CE6F88FC6EF39DD11A38396249E98F79486C79615DBF7D847F1C877ED288883051DD9816F2127B00EF7F77FB40E0E2C0C10266019C6F85D42A8EBE3F4033EA701B1714813E45D050EF6625E0E35B314D5B8463E8E4364E389F9079EBF456486ECFB51466C1A279E8B409019F616A681080928A220E6F1FB18CF681490E52C8402E4DD3D8518E816C88B3117FFB824EFDA93FD43D613AB6C9843D9494C03BF27E0C111578D25365F49C166A13A50DE1928993EB15EA70A9C98170E4E8BDE051E284064783CF522463C31AF0A162771788DE9286F38CA20CF2380FB1C441F4755C43DA373BBBDC2940E47FBECDF9E314D3C9A447842704223E4ED19B7C9DC73EDDFF0D35DF01193C9D1C17C71F4E6D56BE41CBDFE011FBDAAF614FA0A74B50228BA8D821047201B5E14FD370DABDECE121B16CD2A6D32AD802DC1AC308D2BF47889C992DEC37C397C631AE7EE2376F2126E5CEF890B93081AD12881CFEBC4F3D0DCC345BDD5C893FDDFC0F5F0D5EB41B85EA30777990EBDC01F264E04F3EA1DF6D2DAF8DE0DB3E9551BEF0F9CEC3C0A7CF65DB7AFACF6C32C48229B7526D092DCA16889695DBAB1551A6F27936650C39B758EBAFBA6CD2495CD5B49CA3AB4CA4CC8596C7A36E4F23E2FDFCE167712863078A969318D34199CB4578D84C67B4649521ACE4157C321D0A1FFF33A78E623D71B6021ECC0055C90851BF9B8E8E5DB00CC0E91DE32DFA2388675C0F915C5F70DA2C3CF01449F613B89C03C6714F9E1B373BBBD0F08BE4EFC39B3FACDF11A6C68EE3E07E7C8A641744658ABB5F12E03FB6390D033E29C228ADF533B07649F77AEDF1D6010714E6C1BC7F139183376A60178D839E005A14787BDE1D8FAB46D4764EA21D7577B22C24AFA21272DBD113585E49168C8545E4993A897C1D225DD44CD49F5A26614ADA272B2BEA232B06E92724ABDA02941AB9C19D5607E5E3A42C33B7A29ECEE7B7AEB6DDEBAB5A0A2C619AC90F8174C7004CB98738B28C5112947A0CBBAB10D67211D3EC6F4D9F7A694D3EFC84B8666B5D26C481781E167430ABBFBB32115138A1F5C8779251D8E3F3931C077A2579FACDAE79C20D9A6A743AD9B9B66BE993540375D4EE238B0DD741628025F3C6C51971F7C38A33D8691F5468C8340C7C0D05DB6E54109F4CD148DEA869C620F536C9CD85960708A621B39B21AA1434E0FC1F21D552158190FA90BF79DC4132C1D47AC116287A01866AA4BA83C2D5C62BB21F25AB524B4ECB885B1BE173CC49A531C62C218B66AA20B7375F8830950F01106A54D4363AB6271CD86A8F15A7563DEE6C296E32E45253662932DBEB3C62EB9FFF62C86D9ACB10D1867B34ABA08A00DE56DC340F959A5AB018807975D3350E1C4A43150EE526DC440EB1ADB8281D655F2E20C343BA2761D7FE1BCBA6BE6593F286F7E5B6F54D7166CB3A68F1D33CDCCF78436145AE04836CFD339ABC48F5471380339F9F92CE6AEAE68220C7C86693D6453FABB4A3FD46A06118DA809B034B416507E0928014913AA8770792CAF513AEE45F480CDE36E8DB07CED17602B362063572F432B84FA2B53D1383B9D3E8A9E15D6201979A7C34205476110E2E255EF7807A5E8E2B2B262BAF8C27DBCE14AC7F8603428A8C573D52829EFCCE05ACA4DB35D4B2A87AC8F4BB6969604F749A3A5BC33836B89DB68BB92144E410FB7602D15D5B7F081265B1EE928769BA26E6C652952BC606C6972A9C657280C5DB2ACE456F112639625564DBF9FF54F39F2330CCB8E15994785B405271A446889855A600D929EBB514C4F114573C4E23C53C797C8947BAB66F9CF5956B74F7910F37D20A766BFB316F2D57D6DAB957D110E710E1DF499439346D115C3AF6E6EB05437E4A14811B89F065EE213BD7FA56F9D5DDF55DB672532C2D812E497FC27495992975BD77CA77191E7C4306354782FAB8F931E42A7EDDCF7ACEA5BE78FEA51F2F054154517B2DADAB8E9DC983E63253A88FD87AA15E1796615CF4AA902F0A29E1895C40609AC52D71DB59E7B52C5ACD7744714124CAA9042550F29AB69243521AB152BE16934AAA6E8CE414E1CA9A2CBB5DD91152924556845F50AD80A99C5BAEEA88A2C932AB0A2BA3B76997222AEA13BBC6F698F2DAB6E5CD9C176BD9D4B83F13C0BE2301B5FE5FEBE0A5429EE89C56FE825305EBE93C6A43DDDAD6A4C5938633D63D260E8D79DDAC5777DD969BCADD763D66EB36B4B7BD36DBE1EAF9FC93EAB6148673B91A4E05E9CF184B3DC989FABDA1FCF4807AD8CC4347235C2B6FE1453EC8F18C168F6C99B7A2E668B784E708588BBC031CD3238CCC3FD8343E101CEEE3C86B1E2D8F114E752DD8B98FA986D20198B3CA0C8BE47919C1AB1C6839112548A3A5F10073F4ECCBFD256C7690083FD4A8BF78C8BF83D713F2550711725D8F822A77A0E9340DFE1C94621E89717F116A2BBCA2FFEFC9035DD336E22984EC7C6BEA0E85586BFFE42A2973459D335A459F9DDC4CB9D6DB567094A5461B6ACFE0A61EED2415E20E4527EE3A3C76FFB8AA67C65B016A2E225C1507883A850F75260152CED2B01073E69FA4AA05F67D5AF0656114DFB62C025FDC1C4F702DD97A1BCE516F721C57969134B52AAE7D67CEBB5922FB7BD374969D96B4D7439F5BA07DCA0E9D5EBB9282F2C6D79B0AD5391953C18F636EDFED953917725FBB874DAB79B74BCC93CE386DBA4FF557AF10E24C429127CB69F44BC695BD30580773C13B35FAAF08E191BDFE6B79F10BC6963D3058877DCD87AA5FDEE98AD6D6BFFDCB2A575DE42B79EC42BE723692E725451E4B624DD2CE40EC7FF790046907994D9DB4A75565853466B0BC39244CF549F8E263296268EC457A26866DBAFAF7CC36FEC2CA76966AB49E26CE2CDD7FF46DE9CA699B72635721BE9C5CAE44455CA77CB3AD6943BF592D2896B3D69C95E6FF3591B6FE55F52F6F0204AA9CD1ECDEDF2CB49161E4425434E9D1EC9C1F24531EC9D95BFC508FB77EC2E4B08F6971909B66BBB664173411641BE790B12E5244284E60A53E4C0967A125177816C0AD52C009D3E0E4F837AEC1A648E9D0B7293D030A1D065ECCFBD5AC08B39014DFCD30CE8BACCE39B907DC5437401C47459E0FE86BC4D5CCF29E43E57C4843410CCBBE0E15E369694857D974F05D275403A0271F5154ED11DF6430FC0E21B32430F7815D9C0FC2EF112D94F65045007D23E1075B58F4F5DB48C901F738CB23D7C820D3BFEE34FFF01F72DBABB92540000, N'6.2.0-61023')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'40a14665-db43-4e5c-a239-9010c71a1f9d', N'c@gmail.com', 0, N'ALT88SoTn8nlymNdrxsLE4pIb2saO+VhpTw/cqkgrqbQLs2JTFvAZULXhzKTFupi6A==', N'597e7979-6055-4e75-ac82-7a55c6801222', NULL, 0, 0, NULL, 1, 0, N'c@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a4a66e6f-a818-4040-896f-b13528bdc880', N'a@gmail.com', 0, N'AG6U8lxwnx/doKZjzSivO8NwJYIFTMPBIy/OK/R8JtaiQ1sF/beYYix946ZSKePQtA==', N'371d7852-a6a0-4793-b3b6-02c8e63f7198', NULL, 0, 0, NULL, 1, 0, N'a@gmail.com')
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([ID], [IDUser]) VALUES (10, N'40a14665-db43-4e5c-a239-9010c71a1f9d')
SET IDENTITY_INSERT [dbo].[Cart] OFF
SET IDENTITY_INSERT [dbo].[CartDetail] ON 

INSERT [dbo].[CartDetail] ([ID], [IDCart], [IdProduct], [Quality]) VALUES (27, 10, 7, 2)
SET IDENTITY_INSERT [dbo].[CartDetail] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [CateName], [Status]) VALUES (1, N'Hư cấu', 1)
INSERT [dbo].[Category] ([ID], [CateName], [Status]) VALUES (3, N'Tiểu thuyết', 1)
INSERT [dbo].[Category] ([ID], [CateName], [Status]) VALUES (4, N'Trinh Thám', 1)
INSERT [dbo].[Category] ([ID], [CateName], [Status]) VALUES (5, N'Thiếu nhi', 1)
INSERT [dbo].[Category] ([ID], [CateName], [Status]) VALUES (6, N'Truyện ngắn', 1)
INSERT [dbo].[Category] ([ID], [CateName], [Status]) VALUES (7, N'Kinh dị', 1)
INSERT [dbo].[Category] ([ID], [CateName], [Status]) VALUES (8, N'Light novel', 1)
INSERT [dbo].[Category] ([ID], [CateName], [Status]) VALUES (9, N'Truyền cười', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[ImgProduct] ON 

INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (42, 8, N'/Public/ImageProducts/8_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (43, 8, N'/Public/ImageProducts/8_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (44, 8, N'/Public/ImageProducts/8_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (45, 8, N'/Public/ImageProducts/8_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (62, 6, N'/Public/ImageProducts/6_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (63, 6, N'/Public/ImageProducts/6_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (64, 6, N'/Public/ImageProducts/6_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (65, 6, N'/Public/ImageProducts/6_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (66, 7, N'/Public/ImageProducts/7_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (67, 7, N'/Public/ImageProducts/7_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (68, 7, N'/Public/ImageProducts/7_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (69, 7, N'/Public/ImageProducts/7_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (70, 11, N'/Public/ImageProducts/11_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (71, 11, N'/Public/ImageProducts/11_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (72, 11, N'/Public/ImageProducts/11_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (73, 11, N'/Public/ImageProducts/11_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (74, 10, N'/Public/ImageProducts/10_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (75, 10, N'/Public/ImageProducts/10_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (76, 10, N'/Public/ImageProducts/10_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (77, 10, N'/Public/ImageProducts/10_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (78, 12, N'/Public/ImageProducts/12_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (79, 12, N'/Public/ImageProducts/12_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (80, 12, N'/Public/ImageProducts/12_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (81, 12, N'/Public/ImageProducts/12_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (82, 13, N'/Public/ImageProducts/13_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (83, 13, N'/Public/ImageProducts/13_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (84, 13, N'/Public/ImageProducts/13_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (85, 13, N'/Public/ImageProducts/13_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (86, 14, N'/Public/ImageProducts/14_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (87, 14, N'/Public/ImageProducts/14_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (88, 14, N'/Public/ImageProducts/14_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (89, 14, N'/Public/ImageProducts/14_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (90, 15, N'/Public/ImageProducts/15_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (91, 15, N'/Public/ImageProducts/15_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (92, 15, N'/Public/ImageProducts/15_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (93, 15, N'/Public/ImageProducts/15_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (94, 16, N'/Public/ImageProducts/16_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (95, 16, N'/Public/ImageProducts/16_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (96, 16, N'/Public/ImageProducts/16_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (97, 16, N'/Public/ImageProducts/16_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (98, 17, N'/Public/ImageProducts/17_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (99, 17, N'/Public/ImageProducts/17_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (100, 17, N'/Public/ImageProducts/17_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (101, 17, N'/Public/ImageProducts/17_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (102, 18, N'/Public/ImageProducts/18_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (103, 18, N'/Public/ImageProducts/18_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (104, 18, N'/Public/ImageProducts/18_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (105, 18, N'/Public/ImageProducts/18_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (106, 19, N'/Public/ImageProducts/19_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (107, 19, N'/Public/ImageProducts/19_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (108, 19, N'/Public/ImageProducts/19_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (109, 19, N'/Public/ImageProducts/19_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (110, 20, N'/Public/ImageProducts/20_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (111, 20, N'/Public/ImageProducts/20_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (112, 20, N'/Public/ImageProducts/20_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (113, 20, N'/Public/ImageProducts/20_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (114, 21, N'/Public/ImageProducts/21_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (115, 21, N'/Public/ImageProducts/21_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (116, 21, N'/Public/ImageProducts/21_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (117, 21, N'/Public/ImageProducts/21_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (118, 9, N'/Public/ImageProducts/9_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (119, 9, N'/Public/ImageProducts/9_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (120, 9, N'/Public/ImageProducts/9_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (121, 9, N'/Public/ImageProducts/9_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (126, 22, N'/Public/ImageProducts/22_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (127, 22, N'/Public/ImageProducts/22_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (128, 22, N'/Public/ImageProducts/22_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (129, 22, N'/Public/ImageProducts/22_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (130, 23, N'/Public/ImageProducts/23_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (131, 23, N'/Public/ImageProducts/23_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (132, 23, N'/Public/ImageProducts/23_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (133, 23, N'/Public/ImageProducts/23_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (134, 24, N'/Public/ImageProducts/24_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (135, 24, N'/Public/ImageProducts/24_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (136, 24, N'/Public/ImageProducts/24_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (137, 24, N'/Public/ImageProducts/24_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (138, 25, N'/Public/ImageProducts/25_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (139, 25, N'/Public/ImageProducts/25_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (140, 25, N'/Public/ImageProducts/25_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (141, 25, N'/Public/ImageProducts/25_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (142, 26, N'/Public/ImageProducts/26_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (143, 26, N'/Public/ImageProducts/26_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (144, 26, N'/Public/ImageProducts/26_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (145, 26, N'/Public/ImageProducts/26_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (146, 27, N'/Public/ImageProducts/27_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (147, 27, N'/Public/ImageProducts/27_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (148, 27, N'/Public/ImageProducts/27_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (149, 27, N'/Public/ImageProducts/27_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (150, 28, N'/Public/ImageProducts/28_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (151, 28, N'/Public/ImageProducts/28_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (152, 28, N'/Public/ImageProducts/28_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (153, 28, N'/Public/ImageProducts/28_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (154, 29, N'/Public/ImageProducts/29_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (155, 29, N'/Public/ImageProducts/29_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (156, 29, N'/Public/ImageProducts/29_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (157, 29, N'/Public/ImageProducts/29_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (158, 30, N'/Public/ImageProducts/30_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (159, 30, N'/Public/ImageProducts/30_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (160, 30, N'/Public/ImageProducts/30_3.jpg')
GO
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (161, 30, N'/Public/ImageProducts/30_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (162, 31, N'/Public/ImageProducts/31_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (163, 31, N'/Public/ImageProducts/31_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (164, 31, N'/Public/ImageProducts/31_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (165, 31, N'/Public/ImageProducts/31_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (166, 32, N'/Public/ImageProducts/32_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (167, 32, N'/Public/ImageProducts/32_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (168, 32, N'/Public/ImageProducts/32_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (169, 32, N'/Public/ImageProducts/32_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (170, 33, N'/Public/ImageProducts/33_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (171, 33, N'/Public/ImageProducts/33_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (172, 33, N'/Public/ImageProducts/33_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (173, 33, N'/Public/ImageProducts/33_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (174, 34, N'/Public/ImageProducts/34_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (175, 34, N'/Public/ImageProducts/34_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (176, 34, N'/Public/ImageProducts/34_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (177, 34, N'/Public/ImageProducts/34_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (178, 35, N'/Public/ImageProducts/35_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (179, 35, N'/Public/ImageProducts/35_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (180, 35, N'/Public/ImageProducts/35_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (181, 35, N'/Public/ImageProducts/35_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (182, 36, N'/Public/ImageProducts/36_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (183, 36, N'/Public/ImageProducts/36_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (184, 36, N'/Public/ImageProducts/36_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (185, 36, N'/Public/ImageProducts/36_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (186, 37, N'/Public/ImageProducts/37_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (187, 37, N'/Public/ImageProducts/37_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (188, 37, N'/Public/ImageProducts/37_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (189, 37, N'/Public/ImageProducts/37_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (190, 38, N'/Public/ImageProducts/38_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (191, 38, N'/Public/ImageProducts/38_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (192, 38, N'/Public/ImageProducts/38_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (193, 38, N'/Public/ImageProducts/38_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (194, 39, N'/Public/ImageProducts/39_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (195, 39, N'/Public/ImageProducts/39_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (196, 39, N'/Public/ImageProducts/39_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (197, 39, N'/Public/ImageProducts/39_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (198, 40, N'/Public/ImageProducts/40_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (199, 40, N'/Public/ImageProducts/40_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (200, 40, N'/Public/ImageProducts/40_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (201, 40, N'/Public/ImageProducts/40_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (202, 41, N'/Public/ImageProducts/41_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (203, 41, N'/Public/ImageProducts/41_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (204, 41, N'/Public/ImageProducts/41_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (205, 41, N'/Public/ImageProducts/41_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (206, 42, N'/Public/ImageProducts/42_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (207, 42, N'/Public/ImageProducts/42_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (208, 42, N'/Public/ImageProducts/42_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (209, 42, N'/Public/ImageProducts/42_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (210, 43, N'/Public/ImageProducts/43_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (211, 43, N'/Public/ImageProducts/43_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (212, 43, N'/Public/ImageProducts/43_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (213, 43, N'/Public/ImageProducts/43_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (214, 44, N'/Public/ImageProducts/44_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (215, 44, N'/Public/ImageProducts/44_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (216, 44, N'/Public/ImageProducts/44_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (217, 44, N'/Public/ImageProducts/44_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (218, 45, N'/Public/ImageProducts/45_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (219, 45, N'/Public/ImageProducts/45_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (220, 45, N'/Public/ImageProducts/45_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (221, 45, N'/Public/ImageProducts/45_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (222, 46, N'/Public/ImageProducts/46_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (223, 46, N'/Public/ImageProducts/46_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (224, 46, N'/Public/ImageProducts/46_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (225, 46, N'/Public/ImageProducts/46_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (226, 47, N'/Public/ImageProducts/47_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (227, 47, N'/Public/ImageProducts/47_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (228, 47, N'/Public/ImageProducts/47_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (229, 47, N'/Public/ImageProducts/47_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (230, 48, N'/Public/ImageProducts/48_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (231, 48, N'/Public/ImageProducts/48_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (232, 48, N'/Public/ImageProducts/48_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (233, 48, N'/Public/ImageProducts/48_4.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (234, 49, N'/Public/ImageProducts/49_1.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (235, 49, N'/Public/ImageProducts/49_2.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (236, 49, N'/Public/ImageProducts/49_3.jpg')
INSERT [dbo].[ImgProduct] ([ID], [IDProduct], [Link]) VALUES (237, 49, N'/Public/ImageProducts/49_4.jpg')
SET IDENTITY_INSERT [dbo].[ImgProduct] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [Phone], [Address], [Note], [Status]) VALUES (1, N'a4a66e6f-a818-4040-896f-b13528bdc880', CAST(N'2021-08-03 16:37:07.837' AS DateTime), N'123', N'tytyty', N'7i7i7i7i', 3)
INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [Phone], [Address], [Note], [Status]) VALUES (2, N'a4a66e6f-a818-4040-896f-b13528bdc880', CAST(N'2021-08-03 16:41:32.587' AS DateTime), N'dsd', N'123', N'dsdas', 0)
INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [Phone], [Address], [Note], [Status]) VALUES (3, N'a4a66e6f-a818-4040-896f-b13528bdc880', CAST(N'2021-08-03 16:42:29.373' AS DateTime), N'dsd', N'dsd', N'sdsad', 0)
INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [Phone], [Address], [Note], [Status]) VALUES (4, N'a4a66e6f-a818-4040-896f-b13528bdc880', CAST(N'2021-08-03 16:57:55.687' AS DateTime), N'dsds', N'123', N'', 0)
INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [Phone], [Address], [Note], [Status]) VALUES (5, N'a4a66e6f-a818-4040-896f-b13528bdc880', CAST(N'2021-08-03 16:58:38.283' AS DateTime), N'dsd', N'123', N'', 0)
INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [Phone], [Address], [Note], [Status]) VALUES (6, N'a4a66e6f-a818-4040-896f-b13528bdc880', CAST(N'2021-08-03 16:59:42.213' AS DateTime), N'dsadsa', N'tytyty', N'', 0)
INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [Phone], [Address], [Note], [Status]) VALUES (7, N'40a14665-db43-4e5c-a239-9010c71a1f9d', CAST(N'2021-08-03 17:41:51.693' AS DateTime), N'dsadsa', N'123', N'dsds', 1)
INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [Phone], [Address], [Note], [Status]) VALUES (8, N'40a14665-db43-4e5c-a239-9010c71a1f9d', CAST(N'2021-08-03 17:43:53.847' AS DateTime), N'dsadsa', N'123', N'dsds', 3)
INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [Phone], [Address], [Note], [Status]) VALUES (9, N'a4a66e6f-a818-4040-896f-b13528bdc880', CAST(N'2021-08-03 17:53:30.283' AS DateTime), N'dsdsd', N'tytyty', N'', 0)
INSERT [dbo].[Order] ([ID], [UserID], [OrderDate], [Phone], [Address], [Note], [Status]) VALUES (10, N'a4a66e6f-a818-4040-896f-b13528bdc880', CAST(N'2021-08-05 17:32:25.750' AS DateTime), N'123222', N'123', N'test', 3)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (1, 1, 9, 2, 111111)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (2, 1, 7, 1, 100000)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (3, 2, 9, 1, 111111)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (4, 2, 7, 2, 100000)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (5, 3, 8, 1, 100000)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (6, 3, 9, 1, 111111)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (7, 4, 9, 2, 111111)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (8, 5, 9, 2, 111111)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (9, 6, 8, 2, 100000)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (10, 7, 8, 1, 100000)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (11, 7, 9, 1, 111111)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (12, 9, 7, 1, 100000)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (13, 9, 8, 1, 100000)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (14, 10, 46, 1, 150000)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (15, 10, 47, 1, 170000)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (16, 10, 45, 1, 100000)
INSERT [dbo].[OrderDetail] ([ID], [IDOrder], [IDProduct], [Quality], [Price]) VALUES (17, 10, 18, 2, 175000)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (6, N'Tôi thấy hoa vàng trên cỏ xanh ', 2, 6, 200000, 145000, 1, N'“Tôi thấy hoa vàng trên cỏ xanh” truyện dài mới nhất của nhà văn vừa nhận giải văn chương ASEAN Nguyễn Nhật Ánh - đã được Nhà xuất bản Trẻ mua tác quyền và giới thiệu đến độc giả cả nước.

Cuốn sách viết về tuổi thơ nghèo khó ở một làng quê, bên cạnh đề tài tình yêu quen thuộc, lần đầu tiên Nguyễn Nhật Ánh đưa vào tác phẩm của mình những nhân vật phản diện và đặt ra vấn đề đạo đức như sự vô tâm, cái ác. 81 chương ngắn là 81 câu chuyện nhỏ của những đứa trẻ xảy ra ở một ngôi làng: chuyện về con cóc Cậu trời, chuyện ma, chuyện công chúa và hoàng tử, bên cạnh chuyện đói ăn, cháy nhà, lụt lội,... “Tôi thấy hoa vàng trên cỏ xanh” hứa hẹn đem đến những điều thú vị với cả bạn đọc nhỏ tuổi và người lớn bằng giọng văn trong sáng, hồn nhiên, giản dị của trẻ con cùng nhiều tình tiết thú vị, bất ngờ và cảm động trong suốt hơn 300 trang sách. Cuốn sách, vì thế có sức ám ảnh, thu hút, hấp dẫn không thể bỏ qua.', N'Nguyễn Nhật Ánh', 30)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (7, N'Út Quyên Và Tôi ', 2, 6, 100000, 60000, 1, N'Trong chúng ta, chắc không ít người đã từng biết đến Nhà văn Nguyễn Nhật Ánh qua những tác phẩm văn học nổi tiếng của ông, nhất là lứa tuổi học trò với những tác phẩm truyện ngắn, truyện dài mà ông đã ưu ái dành riêng cho họ. Quả thật, tuổi trăng tròn với biết bao điều mơ ước, hồn nhiên nhưng cũng không kém phần tinh nghịch ... khiến bao người lớn, trong đó có những người cha, người mẹ ở nhà và người thầy, người cô trong trường phải đầu đầu về những ... "thành tích" của " những con qủy"', N'Nguyễn Nhật Ánh', 34)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (8, N'Ông trăm tuổi trèo qua cửa sổ và biến mất', 3, 1, 350000, 250000, 1, N'Vào ngày sinh nhật lần thứ 100 của mình, cụ ông Allan Karlsson đột nhiên trèo qua của sổ ngôi nhà dưỡng lão – Nhà Già – và biến mất. Ở cái tuổi 100 hiếm ai đạt tới thì cụ có thể đi đâu được? Một cuộc truy tìm trên khắp nước Thụy Điển diễn ra từ phía những người có trách nhiệm chăm nom cụ cũng như chính quyền sở tại. Song song với cuộc truy tìm nhân đạo ấy, một cuộc truy tìm đuổi bắt khác gay cấn hơn, xảy đến từ một tên tội phạm, kẻ đã ngớ ngẩn hoặc đúng hơn, bất cẩn trao vali 50 triệu crown vào tay cụ già này.

Nhưng một người đã sống qua một thế kỷ thì không dễ gì tóm cụ ta được. Cuốn tiểu thuyết hồi tưởng lại cuộc đời phiêu lưu của Allan Karlsson, người đã đi khắp thế giới từ những năm trước Đại chiến thế giới thứ nhất đến cuộc Thế chiến thứ hai, từ nước Nga Xô Viết tới nước Mỹ siêu cường và nước Trung Quốc con rồng đang lên ở Viễn Đông. Cuốn tiểu thuyết với giọng điệu hóm hỉnh trào lộng, dẫn dắt người đọc chu du cùng Allan qua những tình huống giả tưởng làm bật lên cái nhìn tưng tửng về thế giới này. Những xung đột văn hóa, ý thức hệ và những nét khác thường của các vùng đất xa xôi, càng chứng tỏ sự đa dạng của nhân loại trong thế giới có vẻ phẳng này.

Cuốn tiểu thuyết Ông trăm tuổi bốc hơi qua cửa sổ đã trở thành hiện tượng quốc gia ở Thụy Điển, đem lại cho người đọc một cái nhìn hài hước kín đáo của văn hóa Bắc Âu, nơi có truyền thống tôn quý văn học lâu đời.', N'Jonas Jonasson', 15)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (9, N'Hai số phận', 2, 3, 150000, 0, 1, N'“Hai số phận” (Kane & Abel) là câu chuyện về hai người đàn ông đi tìm vinh quang. William Kane là con một triệu phú nổi tiếng trên đất Mỹ, lớn lên trong nhung lụa của thế giới thượng lưu. Wladek Koskiewicz là đứa trẻ không rõ xuất thân, được gia đình người bẫy thú nhặt về nuôi. Một người được ấn định để trở thành chủ ngân hàng khi lớn lên, người kia nhập cư vào Mỹ cùng đoàn người nghèo khổ. 

Trải qua hơn sáu mươi năm với biết bao biến động, hai con người giàu hoài bão miệt mài xây dựng vận mệnh của mình . “Hai số phận” nói về nỗi khát khao cháy bỏng, những nghĩa cử, những mối thâm thù, từng bước đường phiêu lưu, hiện thực thế giới và những góc khuất... mê hoặc người đọc bằng ngôn từ cô đọng, hai mạch truyện song song được xây dựng tinh tế từ những chi tiết nhỏ nhất.) ', N'Jeffrey Archer', 38)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (10, N'Bố già', 4, 4, 600000, 589000, 1, N'Thế giới ngầm được phản ánh trong tiểu thuyết Bố già là sự gặp gỡ giữa một bên là ý chí cương cường và nền tảng gia tộc chặt chẽ theo truyền thống mafia xứ Sicily với một bên là xã hội Mỹ nhập nhằng đen trắng, mảnh đất màu mỡ cho những cơ hội làm ăn bất chính hứa hẹn những món lợi kếch xù. Trong thế giới ấy, hình tượng Bố già được tác giả dày công khắc họa đã trở thành bức chân dung bất hủ trong lòng người đọc. Từ một kẻ nhập cư tay trắng đến ông trùm tột đỉnh quyền uy, Don Vito Corleone là con rắn hổ mang thâm trầm, nguy hiểm khiến kẻ thù phải kiềng nể, e dè, nhưng cũng được bạn bè, thân quyến xem như một đấng toàn năng đầy nghĩa khí. Nhân vật trung tâm ấy đồng thời cũng là hiện thân của một pho triết lí rất “đời” được nhào nặn từ vốn sống của hàng chục năm lăn lộn giữa chốn giang hồ bao phen vào sinh ra tử, vì thế mà có ý kiến cho rằng “Bố già là sự tổng hòa của mọi hiểu biết. Bố già là đáp án cho mọi câu hỏi”.', N'Mario Puzo', 20)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (11, N'Tuyển Tập Mori Ogai', 3, 6, 200000, 175000, 1, N'Chưa có thời kỳ nào trong lịch sử xã hội Nhật Bản hiện đại lại hỗn loạn và đầy kịch tính như thời kỳ Minh Trị. Và cũng không có một nhà văn nào có thể vẽ nên một bức tranh thời đại Minh Trị thành công như Mori Ogai. Ông đã kết hợp một cách hài hòa lối hành văn mới mẻ của Tây phương với văn hóa truyền thống lâu đời Nhật Bản; cùng bút pháp thanh nhã, triết lý sâu xa, vốn kiến thức cực kỳ phong phú, khả năng sử dụng Hán văn điêu luyện, Mori Ogai không những đã đưa được tinh thần khai sáng, thổi một luồng gió mới vào văn đàn, mà còn lột tả được bản chất hỗn độn và cái nhìn nhuốm màu hoài niệm trong giai đoạn chuyển giao một cách ưu nhã.

Các nhà viết văn học sử đều nhìn nhận chỉ có Mori Ogai, tuy xuất hiện về sau, mới là cái bóng lớn cùng với Natsume Soseki đã bao trùm lên văn học suốt thời canh tân đất nước. Con người cá nhân Mori Ogai của ông cũng là một tượng đài về mặt sự nghiệp quân sự, y tế nói riêng và văn hóa nói chung, không những đã để lại dấu ấn trên xã hội Meiji ông sống, mà còn lan tỏa ảnh hưởng cho đến ngày nay.', N'Mori Ogai', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (12, N'Khu Vườn Bí Mật ', 4, 6, 100000, 65000, 1, N'Mary Lennox, một cô bé mồ côi, cáu kỉnh, không ai ưa, tới sống tại nhà ông bác ở vùng đồng hoang Yorkshire, nước Anh, nơi có rất nhiều bí mật đang đợi cô. Ban đêm, có tiếng khóc của ai đó từ một hành lang gần phòng cô. Còn ban ngày, cô gặp Dickon, một cậu bé biết thuần dưỡng và nói chuyện cùng loài vật. Rồi một ngày, nhờ sự giúp đỡ của một con chim ức đỏ, Mary khám phá ra một nơi bí ẩn nhất trên thế gian này – Khu vườn bí mật. Mọi thứ dường như đã chết trong khu vườn mười năm qua khóa kín. Cùng với Colin, vị chủ nhân ốm yếu của tiếng khóc bí ẩn kia, và Dickon, cậu bé mà tất cả mọi người đều yêu mến, Mary đã tìm ra những thứ sẽ làm thay đổi cuộc đời cô mãi mãi, khi mùa xuân về đánh thức cả khu vườn tuyệt đẹp', N'Frances Hodgson Burnett', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (13, N'Tiếng gọi nơi hoang dã ', 3, 6, 150000, 0, 1, N'Tiếng Gọi Nơi Hoang Dã (nguyên bản tiếng Anh: The Call of the Wild) là tiểu thuyết của nhà văn Mỹ Jack London. Chuyện kể về những chuyến phiêu lưu mạo hiểm của chú chó Bấc trung thành. Bấc đang sống trong trang trại của một gia đình giàu có thì bị bắt cóc, trở thành chó kéo xe cho những người đi tìm vàng ở khu Alaska lạnh giá. Bấc phải học cách đối diện với cuộc đấu tranh sinh tồn và trở thành thủ lĩnh của đàn chó. Thiên nhiên nguyên thủy đã đánh thức bản năng của Bấc.

Sau một lần đi săn trở về, Bấc nhìn thấy cái chết thương tâm của Thoóctơn - người chủ nó thương yêu nhất. Tình yêuthương, sự trung thành mà Bấc dành cho Thoóctơn trở thành nỗi đau thống thiết, Bấc trở nên hoang dã hơn bao giờ hết… Không còn mối liên hệ nào níu Bấc lại với con người, nó bị cuốn theo tiếng gọi nơi hoang dã, cuối cùng trở thành một con sói hoang.', N'Jack London', 37)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (14, N'Ác Quỷ Thành Phố Trắng', 5, 3, 250000, 0, 1, N'Cuốn sách thuật lại hành trình xây dựng Hội chợ thế giới của nhóm kiến trúc sư tài hoa ở Chicago sau khi thành phố này giành quyền đăng cai tổ chức hội chợ. Thành phố Chicago nhanh chóng thành lập một công ty chính thức mang tên là: “Công ty hội chợ thế giới Hoa Kì”, nhằm cung cấp tài chính và xây dựng. Và nhà thiết kễ chính là Burnham và Root, được yêu cầu phải xây dựng gần như cả một thành phố và vượt lên trên sự tuyệt vời của hội chợ Paris, gánh nặng đè lên vai, việc thất bại là không thể vì nó sẽ ảnh hưởng đến danh dự và tổn hại của quốc gia.

Quá trình xây dựng được bắt đầu, nhưng không ai ngờ rằng chỉ cách khu hội chợ quy mô và hấp dẫn nhất thế giới vào thời kì ấy chỉ vài bước chân, tên sát nhân hàng loạt đã xây dựng một khách sạn được trang bị bàn mổ, lò thiêu và những thùng axit. Cả thành phố hối hả với hội chợ mà “bỏ lỡ” kẻ sát nhân tàn ác với những thủ đoạn tinh vi. Thời gian diễn ra hội chợ hắn đã giết chết hàng chục người, đa số là phụ nữ trẻ.

“Tôi sinh ra với ác quỷ trong mình. Tôi không thể thay đổi sự thật rằng tôi là kẻ sát nhân, giống như các nhà thơ biến cảm hứng thành vần điệu”. Vậy hắn là ai mà giết chóc nhiều như vậy nhưng không bị phát hiện?
', N'Erik Larson', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (15, N'Cuốn Theo Chiều Gió', 4, 3, 600000, 520000, 1, N'Cuốn theo chiều gió là cuốn tiểu thuyết duy nhất của nữ tác giả Margaret Mitchell, ngay từ khi mới ra đời, năm 1936, tác phẩm văn học này đã mau chóng chiếm được tình cảm của người dân Mỹ cũng như chinh phục trái tim của hàng triệu độc giả trên khắp thế giới.
Lấy bối cảnh từ cuộc nội chiến vô cùng khốc liệt giữa Bắc và Nam Mỹ, Cuốn Theo Chiều Gió với cốt truyện rõ ràng, logic, dễ hiểu, đã khắc họa một cách tài tình tâm trạng, tính cách và thân phận của nhiều lớp người trong chiến tranh và thời hậu chiến. Nhân vật chính của tiểu thuyết là cô gái Scarlett O''hara cùng với Rhett Butler trở thành cặp nhân vật điển hình, thuộc loại thành công nhất trong văn học Hoa Kỳ.

Cuốn Theo Chiều Gió có sức hấp dẫn mãnh liệt giới trẻ Mỹ cũng như thanh niên toàn thế giới vì đây là cuốn tiểu thuyết tình yêu đặc sắc. Lạ kỳ thay, trong chiến tranh và những năm hậu chiến vô cùng gian khổ, tình yêu lại luôn luôn chói ngời, trở thành động lực giúp cho con người vượt qua chết chóc, đói khổ và sự hèn hạ... Không chỉ có tình yêu trai gái, Cuốn Theo Chiều Gió còn là bài ca của tình yêu quê hương đất nước, tình tương thân tương ái. Ba năm sau khi tiểu thuyết Cuốn Theo Chiều Gió ra đời, bộ phim cùng tên dựng theo tác phẩm của Margaret Mitchell được công chiếu đã trở thành sự kiện lớn, thành niềm tự hào của điện ảnh Mỹ.', N'Margaret Mitchell', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (16, N'Những Người Khốn Khổ', 4, 3, 800000, 0, 1, N'Những người khốn khổ là câu chuyện về xã hội nước Pháp trong khoảng hơn 20 năm đầu thế kỷ 19 kể từ thời điểm Napoléon I lên ngôi và vài thập niên sau đó. Nhân vật chính của tiểu thuyết là Jean Valjean, một cựu tù khổ sai tìm cách chuộc lại những lỗi lầm gây ra thời trai trẻ. Bộ tiểu thuyết không chỉ nói tới bản chất của cái tốt, cái xấu, của luật pháp, mà tác phẩm còn là cuốn bách khoa thư đồ sộ về lịch sử, kiến trúc của Paris, nền chính trị, triết lý, luật pháp, công lý, tín ngưỡng của nước Pháp nửa đầu thế kỷ 19. Chính nhà văn Victor Hugo cũng đã viết cho người biên tập rằng: "Tôi có niềm tin rằng đây sẽ là một trong những tác phẩm đỉnh cao, nếu không nói là tác phẩm lớn nhất, trong sự nghiệp cầm bút của mình".

Những người khốn khổ cũng nổi tiếng vì đã được chuyển thể nhiều lần thành các vở kịch, bộ phim, trong đó nổi tiếng nhất phải kể tới vở nhạc kịch cùng tên.', N'Victor Hugo', 20)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (17, N'Những Ngôi Sao Eger', 4, 3, 200000, 179000, 1, N'Là tiểu thuyết nổi tiếng và được biết đến rộng rãi nhất của Hungary, Những ngôi sao Eger là bài ca bi tráng của nhân dân Hungary chống lại cuộc xâm lược của quân Thổ Nhĩ Kỳ. Tác phẩm kể về cuộc vây hãm ngôi thành Eger, nơi chỉ có độ hai ngàn dân, bị nguy khốn giữa đạo quân Thổ khổng lồ, đầy nhuệ khí trong sự thờ ơ không cứu viện của triều đình. Ngời sáng giữa những đau thương, mất mát là lòng dũng cảm, là trí tuệ phi thường, là tinh thần bất khuất của mỗi một con dân trong thành, từ người già đến thiếu niên, từ phụ nữ chân yếu tay mềm đến những người nông dân chưa quen tên đạn. Từng chi tiết của cuộc chiến được miêu tả tỉ mỉ, chính xác và sinh động, tái diễn lại dấu ấn lịch sử năm nào, đến nỗi gập trang sách lại vẫn còn như vang vọng tiếng đại bác, tiếng hô xung trận cùng lời thề quyết tử.

“Trăm năm sau ư? Thế gian còn nhớ gì đến mặt mũi chúng ta nữa!” – Không đâu, ngài Dobó ạ, nay thế gian vẫn mãi nhắc về “những ngôi sao Eger”.', N'Gardonyi Geza', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (18, N'Cô Gái Mù Chữ Phá Bom Nguyên Tử', 2, 1, 230000, 175000, 1, N'Nombeko được sinh ra trong một căn lều bé tí tẹo ở Johannesburg, thành phố lớn nhất Nam Phi. Ngay từ lúc nhỏ xíu, cô đã mau chóng hiểu rằng thế gian này chẳng hứa hẹn gì với cô ngoài việc cô hoặc chết sớm, vì ma túy, vì rượu hay chỉ vì đơn giản là tuyệt vọng vì màu da châu Phi. Thay vì thế, Nombeko có những kế hoạch vĩ đại hơn nhiều. Cô tự học đọc học viết, bằng mưu mẹo và sự liều lĩnh đáng kinh ngạc, cô thoát khỏi khu ổ chuột với những viên kim cương lậu bạc triệu.

Đời cô là chuỗi sự cố điên khùng nối tiếp điên khùng. Cô chẳng hề muốn sống đời nô lệ ở đất nước phân biệt chủng tộc nhưng cũng chẳng mong mình trở thành cố vấn bất đắc dĩ cho dự án bom nguyên tử. Vậy mà cô phải làm cả hai với trí tuệ siêu việt về tính toán. Nhưng không gì có thể ngăn cản cô lập kế hoạch trốn thoát tới Thụy Điển, nơi cô gặp cặp sinh đôi Holger, mà một trong số đó nuôi âm mưu làm cách mạng lật đổ vương triều.

Cuộc đời Nombeko đan cài đầy tréo ngoe vào cuộc đời của cặp sinh đôi, và khi cặp đôi dàn xếp vụ bắt cóc vua và thủ tướng Thụy Điển thì điệp vụ giải cứu đã sẵn đợi nữ người hùng ra tay – để cứu cả thế giới khỏi thảm họa. Quả bom nguyên tử sẽ hoàn tất sứ mệnh của nó ở đâu, hay là trong tay một siêu cường có nhu cầu?', N'Jonas Jonasson', 18)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (19, N'Nhà Giả Kim ', 5, 1, 150000, 0, 1, N'Tiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.

“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”', N'Paulo Coelho', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (20, N'Chúa Tể Những Chiếc Nhẫn - Đoàn Hộ Nhẫn', 4, 1, 600000, 0, 1, N'Kỷ Đệ Nhất, các Valar kết liễu Morgoth.

Kỷ Đệ Nhị, Tiên và Người đánh bại Sauron.

Và nay, giữa Kỷ Đệ Tam tưởng đã hòa bình, báu vật của Sauron lại ngóc đầu trong lòng núi.

Và thêm một anh chàng Hobbit bỗng thấy mình từ biệt tổ ấm yên bình, dấn vào cuộc phiêu lưu mỗi bước lại thêm xa, thêm gian nan, thêm hệ trọng. Bên cậu sát cánh Đoàn Hộ Nhẫn, Con Người cùng Phù Thủy, Tiên với Người Lùn, vượt đèo cả đầm sâu, qua rừng vàng mỏ tối, vào sinh ra tử hòng lần nữa cứu Trung Địa khỏi rơi vào tay', N'J R R Tolkien', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (21, N'Rừng Nauy', 5, 1, 150000, 125000, 1, N'Câu chuyện bắt đầu từ một chuyến bay trong ngày mưa ảm đạm, một người đàn ông 37 tuổi chợt nghe thấy bài hát gắn liền với hình ảnh người yêu cũ, thế là quá khứ ùa về xâm chiếm thực tại. Mười tám năm trước, người đàn ông ấy là chàng Toru Wanatabe trẻ trung, mỗi chủ nhật lại cùng nàng Naoko lang thang vô định trên những con phố Tokyo. Họ sánh bước bên nhau để thấy mình còn sống, còn tồn tại, và gắng gượng tiếp tục sống, tiếp tục tồn tại sau cái chết của người bạn cũ Kizuki. Cho đến khi Toru nhận ra rằng mình thực sự yêu và cần có Naoko thì cũng là lúc nàng không thể chạy trốn những ám ảnh quá khứ, không thể hòa nhập với cuộc sống thực tại và trở về dưỡng bệnh trong một khu trị liệu khép kín. Toru, bên cạnh giảng đường vô nghĩa chán ngắt, bên cạnh những đêm chơi bời chuyển từ cảm giác thích thú đến uể oải, ghê tởm...vẫn kiên nhẫn chờ đợi và hy vọng vào sự hồi phục của Naoko. Cuối cùng, những lá thư, những lần thăm hỏi, hồi ức về lần ân ái duy nhất của Toru không thể níu Naoko ở lại, nàng chọn cái chết như một lối đi thanh thản. Từ trong mất mát, Toru nhận ra rằng mình cần tiếp tục sống và bắt đầu tình yêu mới với Midori.', N'Haruki Murakami', 32)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (22, N'Thú Tội', 5, 4, 200000, 0, 1, N'Cảnh sát nhận định đây là vụ tai nạn nhưng Moriguchi biết ai đã sát hại con gái mình - kẻ ở ngay trong lớp học do mình chủ nhiệm. Moriguchi bắt đầu kế hoạch báo thù của riêng cô... 

"Một câu chuyện tâm lý kinh dị, ớn lạnh, thuyết phục, gây bất ngờ không chỉ một lần...Day dứt, tàn nhẫn và choáng váng." 

- WALL STREET JOURNAL 

"Cuốn sách đáng đọc này vừa tăm tối, gây xáo động và biết đánh lừa độc giả, với giọng văn sắc bén, dồn dập, mỗi chương đều đưa người đọc tới tận cùng căng thẳng." ', N'Thú Tội', 20)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (23, N'Phía Sau Nghi Can X ', 3, 4, 100000, 76000, 1, N'“Việc nghĩ ra một bài toán vô cùng khó và việc giải bài toán đó, việc nào khó hơn?”
Khi nhấn chuông cửa nhà nghi can chính của một vụ án mới, điều tra viên Kusanagi không biết rằng anh sắp phải đương đầu với một thiên tài ẩn dật. Kusanagi càng không thể ngờ rằng, chỉ một câu nói vô thưởng vô phạt của anh đã kéo người bạn thân, Manabu Yukawa, một phó giáo sư vật lý tài năng, vào vụ án. Và điều làm sững sờ nhất, đó là vụ án kia chẳng qua cũng chỉ như một bài toán cấp ba đơn giản, tuy nhiên ấn số X khi được phơi bày ra lại không đem đến hạnh phúc cho bất cứ ai…

Với một giọng văn tỉnh táo và dung dị, Higashino Keigo đã đem đến cho độc giả hơn cả một cuốn tiểu thuyết trinh thám. Mô tả tội ác không phải điều hấp dẫn nhất ở đây, mà còn là những giằng xé nội tâm thầm kín, những nhân vật bình dị, và sự quan tâm sâu sa tới con người. Tác phẩm đã đem lại cho Higashino Keigo Giải Naoki lần thứ 134, một  giải thưởng văn học lâu đời sánh ngang giải Akutagawa tại Nhật.', N'Higashino Keigo', 17)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (24, N'Sự Im Lặng Của Bầy Cừu', 3, 4, 100000, 75000, 1, N'Những cuộc phỏng vấn ở xà lim với kẻ ăn thịt người ham thích trò đùa trí tuệ, những tiết lộ nửa chừng hắn chỉ dành cho kẻ nào thông minh, những cái nhìn xuyên thấu thân phận và suy tư của cô mà đôi khi cô muốn lảng trá Clarice Starling đã dấn thân vào cuộc điều tra án giết người lột da hàng loạt như thế, để rồi trong tiếng bức bối của chiếc đồng hồ đếm ngược về cái chết, cô phải vật lộn để chấm dứt tiếng kêu bao lâu nay vẫn đeo đẳng giấc mơ mình: tiếng kêu của bầy cừu sắp bị đem đi giết thịt.

Sự im lặng của bầy cừu hội tụ đầy đủ những yếu tố làm nên một cuốn tiểu thuyết trinh thám kinh dị xuất sắc nhất: không một dấu vết lúng túng trong những chi tiết thuộc lĩnh vực chuyên môn, với các tình tiết giật gân, cái chết luôn lơ lửng, với cuộc so găng của những bộ óc lớn mà không có chỗ cho kẻ ngu ngốc để cuộc chơi trí tuệ trở nên dễ dàng. Bồi đắp vào cốt truyện lôi cuốn đó là cơ hội được trải nghiệm trong trí não của cả kẻ gây tội lẫn kẻ thi hành công lý, khi mỗi bên phải vật vã trong ngục tù của đau đớn để tìm kiếm, khẩn thiết và liên tục, một sự lắng dịu cho tâm hồn.', N'Thomas Harris', 95)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (25, N'Đề Thi Đẫm Máu', 5, 7, 600000, 540000, 1, N'Một tên sát thủ có sở thích uống chất hỗn hợp máu nạn nhân với sữa tươi, hắn có căn bệnh gì đặc biệt hay là con quỷ hút máu bất tử nghìn năm trong truyền thuyết?

Trong thành phố C liên tiếp xảy ra 4 vụ cưỡng hiếp giết người, nạn nhân đều là những cô gái trí thức từ 25 - 35 tuổi, đây rốt cuộc là giết người trả thù hay đơn giản là cưỡng dâm?

Hàng loạt cái chết bí ẩn thảm khốc của những người sống trong trường Đại học J liên tiếp xảy ra. Ở hiện trường vụ án, hung thủ đều để lại gợi ý cho vụ án tiếp theo, nhằm gợi ý gì?

Trong hàng loạt các vụ án ly kỳ khiến cảnh sát bàng hoàng bó tay, Phương Mộc trầm mặc kiệm lời đột nhiên bị cảnh sát lôi vào cuộc. Tên ác quỷ giấu mặt lần lượt giết hại những người bạn của cậu, vì sao? Khi câu trả lời được vén màn bí mật, thì đề thi tàn khốc đã bị tích 5 dấu X đẫm máu.

Một cuộc đấu trí so tài khốc liệt đầy kịch tính nổ Ai sẽ là người thắng cuộc?

Đây là tác phẩm trinh thám được nhiều người biết đến nhất của Lôi Mễ - sĩ quan cảnh sát cấp phòng (sở) giảng dạy bộ môn Hình pháp học tại một trường cảnh sát trực thuộc Bộ Công an Trung Quốc, đồng thời cũng là một tác giả truyện trinh thám nổi tiếng. Truyện của Lôi Mễ luôn có sức hấp dẫn đặc biệt đối với độc giả bởi ngòi bút sắt bén với những tình tiết ly kì, lôi cuốn đến trang cuối cùng.
', N'Lôi Mễ', 53)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (26, N'Cô Gái Có Hình Xăm Rồng', 3, 4, 150000, 100000, 1, N'Một cuốn truyện trinh thám thông minh đến nghẹt thở về những bí ẩn chết người, lịch sử một dòng họ, những câu chuyện tình và sự vận động ngầm của thế giới tài chính… tất cả quấn quyện vào nhau một cách kỳ dị.

Henrik Vanger, người đứng đầu dòng họ Vanger danh giá, đã ở tuổi ngoài 80 nhưng vẫn quyết tìm ra sự thật đằng sau vụ mất tích của cô cháu gái Harriet.

Mikael Blomkvist, một hiệp sĩ trong làng báo, bị tổn hại uy tín trong một vụ vu cáo, được thuê để đào xới tận gốc câu chuyện về Harriet.

Lisbeth Salander, một cô gái 24 tuổi mình mẩy đầy xăm trổ, một hacker thiên tài sở hữu sự khôn ngoan của một người gấp đôi tuổi mình.

Bộ đôi kỳ quặc Blomkvist và Salander đã phát hiện ra mạch tội ác xấu xa tưởng chừng như vĩnh viễn bị che đậy trong dòng họ Vanger, những mánh tham nhũng bẩn thỉu ở đỉnh cao ngành công nghiệp Thụy Điển… tất cả lớp lang đan cài vào nhau như định mệnh.', N'Stieg Larsson', 63)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (27, N'4MK', 4, 7, 200000, 0, 1, N'4MK - cuốn sách giành giải Audie năm 2018 cho thể loại tiểu thuyết kinh dị, gay cấn.

"Nạn nhân đầu tiên, Calli Tremell... Hai ngày sau khi bị bắt cóc, gia đình Tremell nhận được tải con gái mình trong hòm thư. Hai ngày sau đó, họ nhận được đôi mắt của cô. Hai ngày tiếp theo, chiếc lưỡi của cô được chuyển đến. Thi thể của cô gái được tìm thấy tại công viên Bedford... Bàn tay cô nắm chặt một mẩu giấy nhỏ ghi KHÔNG LÀM ĐIỀU ÁC...', N'J D BARKER', 20)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (28, N'Hành Lang U Tối - Down A Dark Hall', 6, 7, 450000, 0, 1, N'Một khi cánh cửa đã rộng mở, chẳng ai có thể kiểm soát nổi kẻ nào sẽ đi qua.

Lần đầu tiên Kit Gordy trông thấy Blackwood phía sau cánh cổng sắt sơn đen, cô đã phải thốt lên trong lòng: Nơi này có thứ gì đó tà ác. Toà dinh thự lừng lững khiến cơn rùng mình chạy rần rần khắp người Kit. Nhưng cô vẫn cố ép mình vào khuôn khổ, cố quên đi những lời đồn thổi kì bí về ngôi trường nội trú biệt lập này.

Và rồi các bạn học của cô bắt đầu phát triển nhiều tài năng bất ngờ và dị thường. Những giấc mơ kì quái, các giọng nói thầm thì, vô số lá thư gửi gia đình và bạn bè bị thất lạc… Mọi thứ đều chìm sâu trong bầu không khí ma mị bao trùm lên tất cả. Khi họ nhận ra Blackwood không phải là những gì mình vẫn lầm tưởng, mọi việc có thể đã quá muộn.

LOIS DUNCAN (1934 – 2016)

Lois Duncan lớn lên ở thành phố Sarasota, bang Florida. Ngay từ khi còn nhỏ bà đã biết sau này mình muốn trở thành nhà văn. Bà đã gửi bản thảo đến các tạp chí từ năm lên mười và được xuất bản tác phẩm đầu tay ở tuổi mười ba.

Lois là tác giả của hơn 50 đầu sách thuộc nhiều thể loại, bao gồm sách tranh thiếu nhi, tuyển thơ và sách phi hư cấu. Tuy vậy, bà lại được biết đến nhiều nhất với các tiểu thuyết kịch tính dành cho tuổi mới lớn. Những tác phẩm thuộc thể loại này của bà đã đoạt giải thưởng Young Readers ở 16 bang của Hoa Kỳ và tại ba quốc gia khác. Vào năm 1992, tập sanSchool Library và hiệp hội ALA Young Adult Library Services trao tặng bà giải thưởng Margaret A. Edwards để ghi nhận “công trình văn học thiếu niên xuất sắc”. Năm 2009, hiệp hội Catholic Library trao tặng bà giải thưởng St. Katharine Drexel “để ghi nhận những đóng góp của một cá nhân vào sự phát triển của hệ thống thư viện cũng như văn học ở các trường phổ thông và dành cho tuổi mới lớn”.

“Bà ấy biết bạn làm gì vào mùa hè năm ngoái. Bà ấy biết cách tìm ra con quỷ đang lẩn trốn trong tim của mỗi nhân vật, để rồi biến nó thành sự kịch tính đến nghẹt thở trong từng cuốn sách. Có ai viết được những tác phẩm rợn tóc gáy hơn của Lois Duncan ư? Tôi không nghĩ thế.” – R. L. Stine, tác giả loạt truyện Goosebumps và Fear Street

“Lois Duncan là vị thánh bảo trợ cho tất cả những gì ghê rợn.” – Jenny Han, tác giả loạt truyện The Summer I Turned Pretty
', N'Lois Duncan', 60)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (29, N'Ám Ảnh Kinh Hoàng', 6, 7, 200000, 175000, 1, N'“Hắn nhìn chằm chằm xuống nền nhà lót gạch sứ trong phòng tắm. Nhìn nước xà phòng biến thành màu hồng do hòa lẫn với máu trôi vào cống thoát nước. Có gì đó mê hoặc ở chúng, những bong bóng trong suốt màu trắng, hồng, và đỏ chen chúc nhau giữa cái hố đen ngòm rồi lần lượt rơi xuống dưới. Một tiếng nấc nghẹn phát ra từ cổ họng hắn, không cách nào nén lại được.

Mọi thứ đã đi tong hết rồi…

Ban đêm người ta cũng đâu nhìn thấy được gì, chỉ là một màu đen ngòm.

Nhìn những cửa sổ thích hơn nhiều, đêm đã muộn rồi nhưng một số vẫn còn sáng.

Thành phố chưa bao giờ thật sự ngủ say cả. Và đâu đó tại nơi này, sẽ có một người dành cho hắn...”

Câu chuyện bắt đầu trở nên nghiêm trọng khi thi thể của phụ nữ liên tục được người dân phát hiện tại các địa điểm công cộng. Từ đây, FBI vào cuộc và triệu tập nhà tâm lý học pháp chứng Zoe Bentley và đặc vụ Tatum Gray để bắt tay nhau giải quyết vụ án chấn động kinh hoàng, thậm chí phải cùng nhau dấn sâu vào tâm trí của một kẻ sát nhân bệnh hoạn, thích siết cổ phụ nữ, giao hợp với họ và cuối cùng sử dụng phooc-môn ướp xác họ. Kết cục chung cho những người phụ nữ nữ đáng thương này sẽ được phát hiện trong tình trạng lõa thể với một tư thế lạ lùng ngỡ như hệt… vẫn còn sống!

Không chỉ vậy, dòng truyện dần hé lộ quá khứ kinh hoàng của Zoe về ba phong bì đáng ngờ để lại hiện trường: những mối liên hệ kinh khủng, những nỗi sợ quẩn quanh chưa kịp chợp mắt cùng những án mạng dã man trong quá khứ mang tên “Chưa kết án”. Và đột nhiên, kẻ đi săn trở thành con mồi!

Liệu quá khứ có mãi mãi ngủ yên? 

Liệu kẻ giết người vốn dĩ là 1 con quái vật?

Và liệu có thể chặn đứng thứ trò chơi kinh hoàng mà ngay cả tên sát nhân ấy vẫn chưa biết kết thúc thực sự của của nó sẽ là gì?

', N'Mike Omer', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (30, N'Những Cuộc Săn Người - Bones Don''T Lie', 6, 7, 150000, 0, 1, N'Vào một đêm đông lạnh lẽo, cảnh sát trục vớt được xác một chiếc xe nằm dưới đáy hồ Grey. Bên trong cốp xe là các mảnh lộn xộn từ một bộ xương người trơ trọi, bị gặm mòn bởi nước và những loài sinh vật sống dưới hồ…

Những tưởng đây là chiếc chìa khóa giúp giải đáp những bí mật ám ảnh từ hơn hai mươi năm trước; nhưng không, nó lại là chìa khóa mở ra chiếc hộp pandora với đầy rẫy những điều xấu xa, tội lỗi và chết chóc. Chiếc ô tô và cả bộ xương - chúng đáng lẽ không nên được tìm thấy, chúng đáng lẽ nên được chôn vùi vĩnh viễn dưới đáy hồ Grey…

Rốt cuộc, sau hơn hai mươi năm, bộ xương nằm trong cốp xe hoen rỉ ấy không phải là cái chết cuối cùng.

Rốt cuộc, cuộc đi săn chỉ kết thúc, khi gã thợ săn bị hạ gục.

 “Bất cứ khi nào bắt gặp tên của Melinda Leigh trên bìa một cuốn sách nào đó, bạn biết rằng mình đã sẵn sàng để bước vào một thế giới đầy lôi cuốn với những âm mưu kịch tính đến tận phút chót.” – Theo tờ USA Today.
', N'Melinda Leigh', 40)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (31, N'Mẹ Có Phải Là Mẹ Của Con? Are You My Mother?', 2, 5, 75000, 50000, 1, N'Mẹ Có Phải Là Mẹ Của Con? Are You My Mother?
Sau thành công của bộ truyện song ngữ do bé Nguyễn Trà sáng tác, tháng 4 này, Tủ sách Người Mẹ tốt tiếp tục gửi tới các bậc cha mẹ và các em nhỏ một cuốn truyện song ngữ vô cùng thú vị có tựa đề “Mẹ có phải là mẹ của con?” (Are you my mother?). Đây là một trong những cuốn truyện thiếu nhi hay nhất của tác giả P.D. Eastman, truyện được dịch giả Ngân Huyền chuyển ngữ, dự kiến ra mắt độc giả ngày 15/4/2016.

Ở một ngọn cây nọ, chim mẹ đang ấp một quả trứng, lo cho chim con sắp ra đời, chim mẹ vội vàng bay đi kiếm đồ ăn. Trong lúc chim mẹ đi vắng, quả trứng nhúc nhích, động đậy và một chú chim non ra đời.

-         “Mẹ ơi, mẹ ở đâu?”, chim non gọi.

Rồi chú nhìn xung quanh, bên trên, bên dưới tìm mẹ, nhưng chú không thấy mẹ đâu. Chim non quyết định đi tìm mẹ của mình. Nhưng thật khó vì chú chưa biết mẹ của mình trông như thế nào, vậy là chim non gặp ai cũng ngoan ngoãn hỏi.', N'PD Eastman', 100)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (32, N'Những Cuộc Phiêu Lưu Của Huckleberry Finn', 4, 5, 100000, 50000, 1, N'Những Cuộc Phiêu Lưu Của Huckleberry Finn

Sau những cuộc phiêu lưu cùng Tom Sawyer, Huck Finn được bà quả phụ Douglas đón về nuôi. Nhưng với bản tính ưa tự do, Huck không chịu nổi việc phải ăn vận sạch sẽ, học hành theo khuôn phép trưởng giả dù được sống giàu sang. Cộng thêm với việc người cha tưởng đã chết  đột ngột trở về tiếp tục hành hạ, gây rắc rối cho cậu, Huck quyết định cùng Jim - một nô lệ da đen bỏ trốn - cùng xuôi dòng Mississippi, bắt đầu những cuộc phiêu lưu mới.

Nhiều chuyện dở khóc dở cười đã xảy ra trong chuyến phiêu lưu. Không chỉ thế, Huck còn lâm vào những tình huống nguy hiểm khi bị cuốn vào cuộc tranh chấp giữa hai dòng họ với những cuộc đọ súng chết chóc... Nhưng cũng chính trong hoàn cảnh ngặt nghèo nhất, Huck đã nhận ra giá trị của cuộc sống để hướng về sự tự do và hết lòng giúp đỡ người nô lệ da đen tội nghiệp. Từ một cậu bé chỉ biết phá phách, Huck đã xác định rõ ràng mục đích sống, biết phân biệt đúng sai bằng trái tim thuần hậu và thoát khỏi những định kiến méo mó được nhồi nhét qua cách giáo dục sai trái.', N'Mark Twain', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (33, N'Những Tấm Lòng Cao Cả', 2, 5, 75000, 30000, 1, N'"Thật là buồn khi nghĩ rằng giữa bao nhiêu nhà giày có ngoài phố xá qua lại kia, giữa bao nhiêu xe cộ và trẻ em mặc toàn quần áo nhung kia lại có những bà mẹ và trẻ em không có gì để ăn cả. Ôi Enrico, từ nay về sau, con đừng bao giờ đi qua trước một bà mẹ xin cứu giúp mà không đặt vào tay bà một đồng hào!"', N'Edmondo De Amicis', 500)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (34, N'Sự Tích Trái Sầu Riêng', 5, 5, 25000, 0, 1, N'Truyện cổ tích Việt Nam hay và ý nghĩa nhất

- Rèn luyện đạo đức

- Nâng cao khả năng sáng tạo

- Nuôi dưỡng cảm xúc

- Kích thích trí tưởng tượng

- Gắn kết tình thân', N'Thanh Nga, Minh Kiên', 100)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (35, N'Chuyện Con Mèo Dạy Hải Âu Bay ', 6, 1, 100000, 75000, 1, N'Cô hải âu Kengah bị nhấn chìm trong váng dầu – thứ chất thải nguy hiểm mà những con người xấu xa bí mật đổ ra đại dương. Với nỗ lực đầy tuyệt vọng, cô bay vào bến cảng Hamburg và rơi xuống ban công của con mèo mun, to đùng, mập ú Zorba. Trong phút cuối cuộc đời, cô sinh ra một quả trứng và con mèo mun hứa với cô sẽ thực hiện ba lời hứa chừng như không tưởng với loài mèo:

Không ăn quả trứng.
Chăm sóc cho tới khi nó nở.
Dạy cho con hải âu bay.

Lời hứa của một con mèo cũng là trách nhiệm của toàn bộ mèo trên bến cảng, bởi vậy bè bạn của Zorba bao gồm ngài mèo Đại Tá đầy uy tín, mèo Secretario nhanh nhảu, mèo Einstein uyên bác, mèo Bốn Biển đầy kinh nghiệm đã chung sức giúp nó hoàn thành trách nhiệm. Tuy nhiên, việc chăm sóc, dạy dỗ một con hải âu đâu phải chuyện đùa, sẽ có hàng trăm rắc rối nảy sinh và cần có những kế hoạch đầy linh hoạt được bàn bạc kỹ càng…

Chuyện con mèo dạy hải âu bay là kiệt tác dành cho thiếu nhi của nhà văn Chi Lê nổi tiếng Luis Sepúlveda – tác giả của cuốn Lão già mê đọc truyện tình đã bán được 18 triệu bản khắp thế giới. Tác phẩm không chỉ là một câu chuyện ấm áp, trong sáng, dễ thương về loài vật mà còn chuyển tải thông điệp về trách nhiệm với môi trường, về sự sẻ chia và yêu thương cũng như ý nghĩa của những nỗ lực – “Chỉ những kẻ dám mới có thể bay”.

Cuốn sách mở đầu cho mùa hè với minh họa dễ thương, hài hước là món quà dành cho mọi trẻ em và người lớn.
', N'Luis Sepulveda', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (36, N'Tý Quậy - Những Truyện Siêu Buồn Cười', 6, 9, 200000, 150000, 1, N'“Tý Quậy” là bộ truyện tranh Việt Nam nổi tiếng đã gắn bó với tuổi thơ của nhiều thế hệ độc giả. Những câu chuyện dí dỏm, hài hước về cuộc sống nơi trường lớp và gia đình của hai người bạn "hàng xóm" Tý và Tèo đã đem lại bao tiếng cười vui và rất nhiều bài học sâu sắc, thấm thía cho các thế hệ học trò Việt Nam. Chúng ta như tìm thấy chính mình trong hình ảnh của Tý và Tèo những lúc nghịch ngợm, bị điểm kém, bị bố mẹ mắng... hay những phút giây nhận ra lỗi lầm và thấy mình ngày một trưởng thành, lớn khôn hơn, biết yêu thương cha mẹ, kính trọng thầy cô và yêu quý bè bạn. Có lẽ vì vậy mà sức sống của bộ truyện “Tý Quậy” mới lâu bền và mạnh mẽ đến thế.

“Tý Quậy - Những Truyện Siêu Buồn Cười” là ấn bản đặc biệt, tuyển chọn những pha cười “đã” nhất từ bộ truyện tranh đã phát hành trước đó. Hy vọng sẽ đem lại cho độc giả những tràng cười sảng khoái mà tràn đầy ý nghĩa.', N'Đào Hải', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (37, N'Bay Trên Tổ Chim Cúc Cu', 4, 9, 650000, 600000, 1, N'Mọi chuyện ở một trại tâm thần đầy quy tắc dường như đảo lộn khi McMurphy xuất hiện. Bất trị như một chú ngựa hoang, hắn vào viện để trốn án lao động khổ sai và không hề có ý định cứu thế. Nhưng trong những ngày ở đó, cái phần tốt đẹp yêu tự do, thích tung hoành của hắn đã làm nên một cuộc cách mạng, tạo ra mối liên kết giữa những thân xác yếu ớt, những trí não bị tổn thương, nhắc họ nhớ về cá tính, về chính mình hoặc về những kẻ đã-từng-là-mình. Sự nổi loạn đó thách thức trật tự đạo đức giả mà Liên hợp áp đặt.. Cuộc chiến bất cân sức bắt đầu. Và rồi đúng như cuộc đời, kẻ yếu đã không thể thắng. McMurphy đã chết dữ dội như cách hắn sống, nhưng Liên hợp không giết được hắn, cũng không thể bắt hắn sống theo cách nó đặt ra…

Được tạo nên từ những trang văn vừa sảng khoái vừa bi thương, Bay trên tổ chim cúc cu đã chạm tới những câu hỏi phức tạp nhất về tự do và khuôn khổ, cá nhân và hệ thống, bình thường và bất thường, sự tỉnh táo và điên loạn… Một best seller, một kiệt tác văn chương có mặt trong danh sách những cuốn sách vĩ đại nhất thế kỷ hai mươi, làm chỗ dựa cho một trong ba bộ phim duy nhất trong lịch sử giải Oscar từng chiến thắng ở toàn bộ các đề cử quan trọng nhất, Bay trên tổ chim cúc cu có sức mạnh của một tác phẩm không thể bị lãng quên.', N'Ken Kesey', 90)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (38, N'Lời Vàng Của Bố', 5, 9, 500000, 0, 1, N'Tác giả cuốn sách Justin Samuel Halpern sinh ngày 3 tháng 9, 1980 tại Mỹ. Shit My Dad Says ban đầu được anh viết trên trang Twitter của riêng mình. Chỉ trong một thời gian ngắn, những ghi chú của anh được hàng trăm ngàn người theo dõi. Các tay môi giới văn chương gọi điện, muốn giới thiệu anh; các nhà sản xuất truyền hình mời anh tham gia chương trình của họ; còn phóng viên thì xin phép được phỏng vấn. Cuốn sách Shit My Dad Says được xuất bản và ngay lập tức trở thành bestseller ở Mỹ.

Shit My Dad Say - Lời vàng của bố sẽ giúp độc giả hình dung về cuộc sống gia đình người Mỹ trung lưu, không phải cuộc sống trong phim ảnh, mà là cuộc sống thật với vô vàn khó khăn của nó. Đó là các nhà biên kịch tương lai làm bồi bàn trong nhà hàng, và chuyên gia trong lĩnh vực “dược phẩm hạt nhân” làm việc cật lực hàng ngày tới tận tối khuya với rất nhiều áp lực.

Cuốn sách này có lẽ cũng sẽ là bằng chứng cho việc công nghệ thông tin hiện đại không khiến cho cha mẹ và con cái cách biệt, mà nó đã san bằng những khoảng trống còn chưa được hiểu hết về nhau trong mối quan hệ đó. Đồng thời, cuốn sách còn là cây cầu nối văn hóa ra thế giới bên ngoài, có thể, qua đó sẽ có nhiều cặp cha-con hiểu nhau hơn.

Và điều cuối cùng, những người làm sách muốn chuyển đến cho bạn đọc, nhất là bạn đọc trẻ tuổi một nhãn quan trung thực khi suy xét mọi vấn đề trong cuộc sống. Chúng ta phải làm việc chăm chỉ, nỗ lực không ngừng, lắng nghe và suy nghĩ, trung thực và tận tâm, quan sát cẩn thận mọi thứ xung quanh, và đối xử tử tế với những người xứng đáng được như thế.', N'Justin Halpern', 20)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (39, N'Đời Về Cơ Bản Là Buồn Cười ', 3, 9, 100000, 65000, 1, N'Năm 2015, Lê Bích xuất hiện và nhanh chóng thu hút được các bạn trẻ nhờ những phát ngôn “chuẩn không cần chỉnh” do chính nhóm bạn nghĩ ra, bên cạnh đó cũng có một số status dịch từ nước ngoài, một số khác mượn ý của một vài ngàn người bạn.

Đời Về Cơ Bản Là Buồn Cười là một tập hợp những phát ngôn ấy của Lê Bích, dĩ nhiên là chưa từng xuất hiện trên fanpage, bên cạnh những câu nói quen thuộc làm nên tên tuổi của Lê Bích.

Đời Về Cơ Bản Là Buồn Cười cũng như nhân vật Lê Bích bụng phệ là sản phẩm tinh thần của một nhóm bạn trẻ giàu tâm huyết hiện đang sinh sống tại Hà Nội:

Cái anh bụng phệ mà các bạn vẫn nhấn "Like" hằng ngay là Đinh Trần Tuấn Linh.

Người luôn "Like" comment của tất cả các bạn mà không cần biết đến nội dung, là quản lý nhóm, Linh Nhâm.

Nếu bạn thắc mắc cái mấu ở bụng của Lê Bích có phải rốn hay không thì phải hỏi họa sĩ Lê Sơn Tùng.

Còn để bài đăng Fanpage đạt đến mức độ 23+ như hôm nay, nhờ biên tập viên Đinh Phương Linh.

Cái cô gái A cả ngày than vãn, lại có hai dấu phẩy do họa sĩ ác ý quẹt vào mà năm ấy chúng ta cùng xua đuổi, đó chính Nguyễn Phương Nhung.', N'Lê Bích', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (40, N'Chào Mừng Tới Lớp Học Biết Tuốt', 6, 8, 800000, 750000, 1, N'Trường Cao trung Koudo Ikusei, một ngôi trường uy tín hàng đầu với cơ sở vật chất hiện đại, nơi có gần 100% học sinh ra trường đều học đại học hoặc kiếm được việc làm. Học sinh nơi đây đều được tự do cắt mọi kiểu đầu và mang mọi đồ dùng cá nhân họ muốn. Koudo Ikusei là một trường học thiên đường, nhưng sự thật là chỉ những học sinh đứng đầu mới nhận được sự đối đãi đặc ân này.

Nhân vật chính Kiyotaka Ayanokouji là một học sinh lớp D, nơi mà trường học quăng vào những học sinh “thấp kém” để chế giễu họ. Vì một lý do nào đó mà Kiyotaka lại bất cẩn trong kỳ thi đầu vào và được đặt ở lớp D. Sau khi gặp Suzune Horikita và Kikyou Kushida, hai học sinh khác trong lớp cậu, tình cảnh của Kiyotaka bắt đầu thay đổi.', N'Kinugasa Syougo', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (41, N'World Teacher', 6, 8, 500000, 0, 1, N'Một ông già từng được xưng tụng là điệp viên tài giỏi nhất thế giới, sau khi về hưu đã quyết định trở thành một thầy giáo, đào tạo cho những cô cậu trẻ tuổi để nối nghiệp mình. Tuy nhiên, chỉ vài năm sau đó, ông đã bị ám sát ở tuổi sáu mươi trong một nhiệm vụ chống lại thế giới ngầm.

Những tưởng rằng đã chết, nhưng khi tỉnh dậy thì lại thấy bản thân được đầu thai ở một thế giới khác, nơi mà phép thuật và những sinh vật huyền bí cùng tồn tại. Bởi kí ức của kiếp trước vẫn được giữ lại, lão già – hiện giờ là một đứa trẻ sơ sinh nhanh chóng nắm bắt tình hình, và bắt đầu một sự khổ luyện ngay từ khi còn bé.
Sau những chăm chỉ rèn luyện, cậu bé đã đạt được loại phép thuật đặc biệt, cùng với một nguồn sức mạnh to lớn. Cậu quyết định sẽ tiếp tục sự nghiệp giáo viên còn dang dở ở kiếp trước.

Đây là giai thoại về một chàng trai-một ông già, người vẫn giữ được kí ức và tinh hoa của kiếp trước, trở thành một thầy giáo trong chuyến chu du khắp thế giới cùng những học trò của cậu.', N'Neko Koichi', 60)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (42, N'Thế Giới Otomegame Thật Khắc Nghiệt Với Nhân Vật Quần Chúng', 6, 8, 800000, 560000, 1, N'Leon – một nhân viên công sở tại Nhật Bản bị chuyển sinh sang thế giới “Otome game” của kiếm và phép thuật. Cậu tuyệt vọng với thế giới trọng nữ khinh nam đó. Tại thế giới này, đàn ông chỉ như loài súc vật với nhiệm vụ duy nhất là cung phụng phái nữ. Chỉ có Hoàng thái tử cùng nhóm trai đẹp mà ngài dẫn đầu là ngoại lệ.
Trong thế giới phi lý này, Leon có một vũ khí. Đó chính là tri thức về trò chơi mà cậu bị cô em gái xấc láo ép phải chinh phục cho bằng được ở kiếp trước. Sử dụng tri thức ấy, Leon bất ngờ chống lại những cô gái thích gì làm nấy và đám trai đẹp.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, .', N'Mishima Yomu', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (43, N'Chuyện Tình Thanh Xuân Bi Hài Của Tôi Quả Nhiên Là Sai Lầm', 2, 8, 500000, 0, 1, N'Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. được kể dưới góc nhìn của nhân vật chính Hikigaya Hachiman, một mẫu nam chính rất đặc biệt với thái độ sống tương đối "cá biệt". Hachiman luôn mang theo những triết lí rất "bất cần đời" nhưng lại không kém phần thấu đáo và sâu sắc, thể hiện rõ tính cách của một bộ phận học sinh trung học Nhật Bản hiện nay. Hachiman chưa bao giờ chịu khuất phục trước sự cô độc. Bạn bè không, bạn gái cũng không. Cứ mỗi lần nhìn những người bạn cùng lớp ca ngợi thời thanh xuân, câu ta lại lầm bầm “Một bọn giả dối. Lũ lừa gạt. Banh xác hết đi!”. Nếu ai đó hỏi cậu ta về ước mơ tương lai, cậu học sinh trung học nổi loạn này sẽ giễu cợt đáp rằng “là không phải đi làm”. Chính vì thái độ khép mình và bất cần đó, Hachiman đã bị cô giáo phụ sách đời sống học sinh "tóm cổ" lôi đến câu lạc bộ tình nguyện, nơi có sự hiện diện của một nữ sinh xinh đẹp hoàn hảo mọi thứ (ngoại trừ tính cách tệ hại), và câu chuyện dở khóc dở cười của một Hachiman bất cần nhưng lại phải đi giúp đỡ người khác bắt đầu từ đây...

Với lối kể dí dỏm nhưng không kém phần sâu sắc, điểm đặc biệt của Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. còn nằm ở chỗ các nhân vật thường lồng ghép rất nhiều thông tin từ các bộ truyện tranh, light novel, tác phẩm văn học... khác trong các đoạn hội thoại, kèm theo đó là cách nói chuyện sử dụng nhiều cách thức chơi chữ của các nhân vật chính, khiến bộ truyện trở nên độc đáo và hoàn toàn không giống bất cứ một bộ light novel học đường nào khác.', N'Watari Wataru', 60)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (44, N'Sakurako Và Bộ Xương Dưới Gốc Anh Đào ', 3, 8, 50000, 40000, 1, N'Câu chuyện được kể dưới góc nhìn của nhân vật chính Tatewaki Shoutarou, một nam sinh trung học vô cùng bình thường, sống một cuộc sống bình thường tại một thị trấn bình thường. Cuộc sống của cậu lẽ ra vẫn sẽ trôi qua một cách êm đềm đến chán ngắn, nếu như Shoutarou không vì hiếu kỳ mà bước vào căn biệt thự cổ kính bên cạnh cây hoa anh đào cổ thụ. Căn biệt thự ấy thuộc gia tộc Kujou, và nàng tiểu thư của gia tộc Kujou ấy, Sakurako Kujou, đang mải mê ninh một bộ xương bên trong một cái nồi lớn. Sự kiện ấy đánh dấu cuộc hành trình cùng nhau của Shoutarou và Sakurako để tìm hiểu những bí ẩn chôn giấu bên trong bộ xương, thứ trụ cột vững chắc nhất của một sinh vật sống, và cũng là thứ trung thực nhất, sẽ cho ta mọi câu trả lời nếu biết đặt câu hỏi hợp lý.

Tập 1 của series với những mảnh xương đầu tiên, giới thiệu về cô nàng tiểu thư quyền quý Sakurako, một mỹ nhân tuyệt sắc nhưng cũng là một con người kỳ lạ, không có chút hứng thú nào với sinh vật sống. Thứ mà cô yêu thích, chỉ là thứ còn sót lại sau mỗi cái chết, chính là bộ xương trắng.

Nàng Sakurako xinh đẹp, kỳ quặc và có chút gì đó trẻ con, lùng sục khắp nơi để tìm kiếm những bộ xương và cùng sự thật xoay quanh bí ẩn của những xác chết; cùng với cậu học sinh trung học bình thường Shoutarou, người ít tuổi hơn Sakurako nhiều nhưng luôn phải đóng vai trò bảo mẫu, kìm hãm cái sự khác người có phần tự nhiên thái quá của Sakurako, hứa hẹn sẽ đem tới cho các bạn độc giả những câu chuyện nhẹ nhàng, hài hước nhưng không kém phần kịch tính và cân não!', N'Oota Shiori', 40)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (45, N'Người Bán Hàng Vĩ Đại Nhất Thế Giới', 3, 3, 100000, 0, 1, N'Làm thế nào để trở thành " nhân viên vàng " trong ngành bán hàng ? Hiểu về quan niệm bán hàng bằng những cách nhìn khác nhau sẽ quyết định đến thành tích bán hàng của bạn. Cố chấp gõ cửa từng khách hàng và hỏi xem họ có mua hay không phần lớn đều dẫn đến giao dịch thất bại Ngược lại , coi bán hàng là quá trình chúng ta đồng hành cùng khách hàng không chỉ mang đến nhiều thuận lợi trong công việc mà còn tạo dựng được nhiều mối quan hệ giao tiếp trong cuộc sống . Từ đó con đường thành công sự nghiệp của bạn sẽ không còn bao xa .', N'Lâm Vọng Đạo', 49)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (46, N'Lễ Vật Kinh Hoàng', 5, 7, 200000, 150000, 1, N'Câu chuyện mở đầu bằng cái chết của một bé gái sơ sinh cùng những phản ứng kỳ lạ của gia đình đứa trẻ.

Ban đầu nguyên nhân tử vong được cho là do hội chứng đột tử ở trẻ sơ sinh (SIDS), nhưng một dấu hiệu đáng ngờ xuất hiện trên mặt bé dẫn cảnh sát đi đến kết luận: đây là một vụ giết người.

Cha của bé gái bị bắt khi đang cố mang xác bé chạy trốn và cụ ngoại của bé khăng khăng rằng hung thủ là “Inguma” – một ác ma trong thần thoại xứ Basque, tước đoạt mạng sống của con người trong lúc họ đang ngủ.

Qua 1500 trang sách, nhân vật chính Amaia Sazalar đã để lại trong lòng độc giả rất nhiều cảm xúc yêu thương và ngưỡng mộ về một nữ thanh tra tài năng, gan góc nhưng lại có tuổi thơ bất hạnh đến ám ảnh. Chính những trải nghiệm của bản thân đã làm nên một Amaia quyết đoán và luôn hành động độc lập, và nó khiến cho các đồng nghiệp của chị cảm thấy không hài lòng.

Khi Amaia quyết định mở rộng điều tra các trường hợp trẻ sơ sinh dưới hai tuổi chết do SIDS trong thung lũng Baztan những năm gần đây, chị nhanh chóng tìm ra điểm tương đồng đáng ngờ và khiến cuộc điều tra rơi vào mớ rắc rối đáng lo ngại. Sự dối trá, phản bội và nghi kỵ nhau bắt đầu len lỏi bên trong từng thành viên của đội điều tra án mạng.

Tạm xa vai trò của một người vợ, người mẹ, Amaia trở về nơi mọi sự bắt đầu để đối mặt với bóng ma quá khứ của mình và khám phá ra sự thật khủng khiếp đã hủy hoại thung lũng Elizondo xinh đẹp trong nhiều năm qua.', N'Dolores Redondo', 49)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (47, N'Sơn Nam - Hương Rừng Cà Mau Và Các Truyện Khác', 2, 6, 200000, 170000, 1, N'Sơn Nam - Hương Rừng Cà Mau Và Các Truyện Khác

Tập truyện gồm truyện ngắn Hương Rừng và 40 truyện ngắn khác của nhà văn Sơn Nam, lấy bối cảnh là vùng đất cực Nam tổ quốc, với những chi tiết hết sức đặc sắc về đất và người U Minh thuở đang khai phá.', N'Sơn Nam', 49)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (48, N'451 Độ F - Bìa Cứng', 2, 1, 100000, 0, 1, N'Hãy mường tượng một thế giới nơi truyền hình thống trị và văn chương ngấp nghé trên bờ tuyệt chủng, nơi thông tin nông cạn được tung hô còn tri thức và ý tưởng thì bị ruồng rẫy, nơi tàng trữ sách là phạm pháp, ta có thể bị bắt chỉ vì tản bộ trên vỉa hè, còn nhiệm vụ của những người lính không phải cứu hỏa mà là châm mồi cho những đám cháy… Khi khắc họa cái xã hội giả tưởng ấy qua con mắt nhìn khủng hoảng niềm tin của anh lính phóng hỏa Montag, Ray  Bradbury chắc không thể ngờ vào tính tiên tri khủng khiếp của cuốn sách. Xã hội chúng ta đang sống ngày nay giống với những gì Bradbury mô tả đến rùng mình: một nền văn minh lệ thuộc quá nhiều vào truyền thông, giải trí và công nghệ. Bởi lẽ đó, hơn sáu chục năm kể từ lần đầu xuất bản, 451 độ F vẫn đủ sức khiến bất kỳ ai đọc nó phải sửng sốt và choáng váng.', N'Ray Bradbury', 50)
INSERT [dbo].[Product] ([ID], [ProductName], [IDSupplier], [IDCategory], [ListPrice], [Discout], [Status], [Detail], [Author], [Quality]) VALUES (49, N'new sửa', 3, 3, 200000, 0, 1, N'123', N'22', 50)
SET IDENTITY_INSERT [dbo].[Product] OFF
INSERT [dbo].[Role] ([ID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([ID], [RoleName]) VALUES (2, N'Staff')
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([ID], [SuplierName], [Status]) VALUES (2, N'Nhà xuất bản trẻ', 1)
INSERT [dbo].[Supplier] ([ID], [SuplierName], [Status]) VALUES (3, N'NXB Tổng hợp TPHCM', 1)
INSERT [dbo].[Supplier] ([ID], [SuplierName], [Status]) VALUES (4, N'NXB Văn Học', 1)
INSERT [dbo].[Supplier] ([ID], [SuplierName], [Status]) VALUES (5, N'NXB Thanh niên', 1)
INSERT [dbo].[Supplier] ([ID], [SuplierName], [Status]) VALUES (6, N'NXB Kim Đồng', 1)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
INSERT [dbo].[SystemUser] ([UserName], [Password], [DisplayName], [Email], [Phone], [Gender], [Status], [IDRole]) VALUES (N'admin', N'admin', N'Nghĩa', N'ntn@gmai.com', N'1234567', N'Nam', 1, 1)
INSERT [dbo].[SystemUser] ([UserName], [Password], [DisplayName], [Email], [Phone], [Gender], [Status], [IDRole]) VALUES (N'staff', N'staff', N'Nhân viên 1111dsds', N'staff@gmail.com', N'212121212', N'Nữ', 1, 2)
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 05/08/2021 5:38:58 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 05/08/2021 5:38:58 CH ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 05/08/2021 5:38:58 CH ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 05/08/2021 5:38:58 CH ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 05/08/2021 5:38:58 CH ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 05/08/2021 5:38:58 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_AspNetUsers] FOREIGN KEY([IDUser])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_AspNetUsers]
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_Cart] FOREIGN KEY([IDCart])
REFERENCES [dbo].[Cart] ([ID])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_Cart]
GO
ALTER TABLE [dbo].[CartDetail]  WITH CHECK ADD  CONSTRAINT [FK_CartDetail_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[CartDetail] CHECK CONSTRAINT [FK_CartDetail_Product]
GO
ALTER TABLE [dbo].[ImgProduct]  WITH CHECK ADD  CONSTRAINT [FK_ImgProduct_Product] FOREIGN KEY([IDProduct])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ImgProduct] CHECK CONSTRAINT [FK_ImgProduct_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_AspNetUsers]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([IDOrder])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([IDCategory])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([IDSupplier])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[SystemUser]  WITH CHECK ADD  CONSTRAINT [FK_SystemUser_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[SystemUser] CHECK CONSTRAINT [FK_SystemUser_Role]
GO
USE [master]
GO
ALTER DATABASE [WebBanSach] SET  READ_WRITE 
GO
