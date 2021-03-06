USE [restaurant]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 08-04-2018 9:28:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cousines]    Script Date: 08-04-2018 9:28:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cousines](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Cousines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 08-04-2018 9:28:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](10) NULL,
	[Dob] [date] NULL,
	[Email] [nvarchar](200) NOT NULL,
	[Password] [nvarchar](256) NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Street] [nvarchar](100) NULL,
	[ZipCode] [nvarchar](7) NULL,
	[City] [nvarchar](50) NULL,
	[Province] [char](2) NULL,
	[Buzzer] [nvarchar](10) NULL,
	[Role] [char](1) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 08-04-2018 9:28:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [numeric](18, 2) NOT NULL,
	[Discount] [numeric](18, 2) NOT NULL,
	[Total] [numeric](18, 2) NOT NULL,
	[SpecialInstructions] [nvarchar](200) NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 08-04-2018 9:28:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RestaurantId] [bigint] NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[OrderDateTime] [datetime2](7) NOT NULL,
	[ShipDateTime] [datetime2](7) NULL,
	[DeliveryDateTime] [datetime2](7) NULL,
	[SpecialInstructions] [nvarchar](200) NULL,
	[DeliveryValue] [numeric](18, 2) NOT NULL,
	[ItemsTotal] [numeric](18, 2) NOT NULL,
	[TaxesTotal] [numeric](18, 2) NOT NULL,
	[OrderTotal] [numeric](18, 2) NOT NULL,
	[PhoneNumber] [nvarchar](10) NOT NULL,
	[Street] [nvarchar](100) NOT NULL,
	[ZipCode] [nvarchar](14) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Province] [char](2) NOT NULL,
	[Buzzer] [nvarchar](20) NOT NULL,
	[PaymentMethod] [char](1) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 08-04-2018 9:28:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RestaurantId] [bigint] NOT NULL,
	[CategoryId] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](300) NOT NULL,
	[Price] [numeric](18, 2) NOT NULL,
	[DiscountValue] [numeric](18, 2) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantCousines]    Script Date: 08-04-2018 9:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantCousines](
	[RestaurantId] [bigint] NOT NULL,
	[CousineId] [bigint] NOT NULL,
 CONSTRAINT [PK_RestaurantCousines] PRIMARY KEY CLUSTERED 
(
	[RestaurantId] ASC,
	[CousineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurants]    Script Date: 08-04-2018 9:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurants](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](10) NOT NULL,
	[Street] [nvarchar](100) NOT NULL,
	[ZipCode] [nvarchar](7) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Province] [char](2) NOT NULL,
	[Website] [nvarchar](200) NULL,
	[Delivery] [bit] NOT NULL,
	[DeliveryValue] [numeric](18, 2) NOT NULL,
	[Comments] [nvarchar](max) NULL,
 CONSTRAINT [PK_Restaurants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartItems]    Script Date: 08-04-2018 9:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItems](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ShoppingCartId] [bigint] NOT NULL,
	[ProductId] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_ShoppingCartItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 08-04-2018 9:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RestaurantId] [bigint] NOT NULL,
	[CustomerId] [bigint] NOT NULL,
	[PaymentMethod] [char](1) NULL,
	[OrderId] [bigint] NULL,
 CONSTRAINT [PK_ShoppingCarts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taxes]    Script Date: 08-04-2018 9:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taxes](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RestaurantId] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Percentage] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_Taxes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customers] ADD  CONSTRAINT [DF_Customers_Role]  DEFAULT ('U') FOR [Role]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[OrderItems] ADD  CONSTRAINT [DF_OrderItems_Total]  DEFAULT ((0)) FOR [Total]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Date]  DEFAULT (getdate()) FOR [OrderDateTime]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_DeliveryValue]  DEFAULT ((0)) FOR [DeliveryValue]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_ItemsTotal]  DEFAULT ((0)) FOR [ItemsTotal]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_TotalTaxes]  DEFAULT ((0)) FOR [TaxesTotal]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OrderTotal]  DEFAULT ((0)) FOR [OrderTotal]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_DiscountValue]  DEFAULT ((0)) FOR [DiscountValue]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Restaurants] ADD  CONSTRAINT [DF_Restaurants_Delivery]  DEFAULT ((1)) FOR [Delivery]
GO
ALTER TABLE [dbo].[Restaurants] ADD  CONSTRAINT [DF_Restaurants_DeliveryValue]  DEFAULT ((0)) FOR [DeliveryValue]
GO
ALTER TABLE [dbo].[ShoppingCartItems] ADD  CONSTRAINT [DF_ShoppingCartItems_Quantity]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[ShoppingCartItems] ADD  CONSTRAINT [DF_ShoppingCartItems_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Taxes] ADD  CONSTRAINT [DF_Table_1_Percent]  DEFAULT ((0)) FOR [Percentage]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Restaurants] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Restaurants]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Restaurants] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Restaurants]
GO
ALTER TABLE [dbo].[RestaurantCousines]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantCousines_Cousines] FOREIGN KEY([CousineId])
REFERENCES [dbo].[Cousines] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantCousines] CHECK CONSTRAINT [FK_RestaurantCousines_Cousines]
GO
ALTER TABLE [dbo].[RestaurantCousines]  WITH CHECK ADD  CONSTRAINT [FK_RestaurantCousines_Restaurants] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[RestaurantCousines] CHECK CONSTRAINT [FK_RestaurantCousines_Restaurants]
GO
ALTER TABLE [dbo].[ShoppingCartItems]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCartItems_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCartItems] CHECK CONSTRAINT [FK_ShoppingCartItems_Products]
GO
ALTER TABLE [dbo].[ShoppingCartItems]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCartItems_ShoppingCarts] FOREIGN KEY([ShoppingCartId])
REFERENCES [dbo].[ShoppingCarts] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCartItems] CHECK CONSTRAINT [FK_ShoppingCartItems_ShoppingCarts]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Customers]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Orders]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Restaurants] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Restaurants]
GO
ALTER TABLE [dbo].[Taxes]  WITH CHECK ADD  CONSTRAINT [FK_Taxes_Restaurants] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurants] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Taxes] CHECK CONSTRAINT [FK_Taxes_Restaurants]
GO

INSERT INTO CUSTOMERS(FirstName,LastName,PhoneNumber,Dob,Email,Password,Comments,Street,ZipCode,City,Province,Buzzer,Role) VALUES (
'Rodrigo', 'Lima', '4168939698', '1977-08-11', 'rodgarcialima@gmail.com', 'java', NULL, '110 Main St', 'M4P 1A1', 'Toronto', 'ON', NULL, 'A')
GO

