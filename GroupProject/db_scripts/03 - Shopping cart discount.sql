/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.ShoppingCartItems
	DROP CONSTRAINT FK_ShoppingCartItems_ShoppingCarts
GO
ALTER TABLE dbo.ShoppingCarts SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.ShoppingCartItems
	DROP CONSTRAINT FK_ShoppingCartItems_Products
GO
ALTER TABLE dbo.Products SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.ShoppingCartItems
	DROP CONSTRAINT DF_ShoppingCartItems_Quantity
GO
ALTER TABLE dbo.ShoppingCartItems
	DROP CONSTRAINT DF_ShoppingCartItems_Price
GO
CREATE TABLE dbo.Tmp_ShoppingCartItems
	(
	Id bigint NOT NULL IDENTITY (1, 1),
	ShoppingCartId bigint NOT NULL,
	ProductId bigint NOT NULL,
	Quantity int NOT NULL,
	Price numeric(18, 2) NOT NULL,
	Discount numeric(18, 2) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_ShoppingCartItems SET (LOCK_ESCALATION = TABLE)
GO
ALTER TABLE dbo.Tmp_ShoppingCartItems ADD CONSTRAINT
	DF_ShoppingCartItems_Quantity DEFAULT ((0)) FOR Quantity
GO
ALTER TABLE dbo.Tmp_ShoppingCartItems ADD CONSTRAINT
	DF_ShoppingCartItems_Price DEFAULT ((0)) FOR Price
GO
SET IDENTITY_INSERT dbo.Tmp_ShoppingCartItems ON
GO
IF EXISTS(SELECT * FROM dbo.ShoppingCartItems)
	 EXEC('INSERT INTO dbo.Tmp_ShoppingCartItems (Id, ShoppingCartId, ProductId, Quantity, Price)
		SELECT Id, ShoppingCartId, ProductId, Quantity, Price FROM dbo.ShoppingCartItems WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_ShoppingCartItems OFF
GO
DROP TABLE dbo.ShoppingCartItems
GO
EXECUTE sp_rename N'dbo.Tmp_ShoppingCartItems', N'ShoppingCartItems', 'OBJECT' 
GO
ALTER TABLE dbo.ShoppingCartItems ADD CONSTRAINT
	PK_ShoppingCartItems PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.ShoppingCartItems ADD CONSTRAINT
	FK_ShoppingCartItems_Products FOREIGN KEY
	(
	ProductId
	) REFERENCES dbo.Products
	(
	Id
	) ON UPDATE  CASCADE 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.ShoppingCartItems ADD CONSTRAINT
	FK_ShoppingCartItems_ShoppingCarts FOREIGN KEY
	(
	ShoppingCartId
	) REFERENCES dbo.ShoppingCarts
	(
	Id
	) ON UPDATE  CASCADE 
	 ON DELETE  CASCADE 
	
GO
COMMIT
