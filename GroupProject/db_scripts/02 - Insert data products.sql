DELETE FROM Products
GO

-- Products
DECLARE @RestaurantId BIGINT
DECLARE @CategoryId BIGINT
--1
SELECT @RestaurantId=Id FROM Restaurants WHERE Name = 'Bar Buca'
SELECT @CategoryId=Id FROM Categories WHERE Name = 'Pizza'
INSERT INTO Products (RestaurantId, CategoryId, Name, Description, Price, DiscountValue, Active) VALUES
(@RestaurantId, @CategoryId, 'Canadian Pizza', 'Loads of pepperoni, fresh mushrooms, and smoked bacon, topped with an extra layer of premium mozzarella cheese.', 17.89, 0, 1)
--2
SELECT @RestaurantId=Id FROM Restaurants WHERE Name = 'Bar Buca'
SELECT @CategoryId=Id FROM Categories WHERE Name = 'Pizza'
INSERT INTO Products (RestaurantId, CategoryId, Name, Description, Price, DiscountValue, Active) VALUES
(@RestaurantId, @CategoryId, 'Brooklyn Pizza', 'Specifically engineered to be big, thin, and perfectly foldable.', 15.56, 0, 1)
--3
SELECT @RestaurantId=Id FROM Restaurants WHERE Name = 'Bar Buca'
SELECT @CategoryId=Id FROM Categories WHERE Name = 'Pizza'
INSERT INTO Products (RestaurantId, CategoryId, Name, Description, Price, DiscountValue, Active) VALUES
(@RestaurantId, @CategoryId, 'Pepperoni Pizza', 'Lots and lots of pepperoni topped with an extra layer of cheese.', 17.00, 0, 1)
--4
SELECT @RestaurantId=Id FROM Restaurants WHERE Name = 'Bar Buca'
SELECT @CategoryId=Id FROM Categories WHERE Name = 'Pizza'
INSERT INTO Products (RestaurantId, CategoryId, Name, Description, Price, DiscountValue, Active) VALUES
(@RestaurantId, @CategoryId, 'Deluxe Pizza', 'A mouth-watering combination of pepperoni, savory Italian sausage, fresh green peppers, fresh mushrooms, fresh onions and cheese.', 21.00, 2.5, 1)
--5
SELECT @RestaurantId=Id FROM Restaurants WHERE Name = 'Bar Buca'
SELECT @CategoryId=Id FROM Categories WHERE Name = 'Pizza'
INSERT INTO Products (RestaurantId, CategoryId, Name, Description, Price, DiscountValue, Active) VALUES
(@RestaurantId, @CategoryId, 'Chicken Pizza', 'Smothered in flavorful BBQ sauce and loaded with chicken, bacon, onions, green peppers and cheddar cheese.', 16.00, 0, 1)
