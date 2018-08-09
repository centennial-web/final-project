-- Fix table name (misspelled)
exec sp_rename 'dbo.Cousines', 'Cuisines'
GO
exec sp_rename 'dbo.RestaurantCousines', 'RestaurantCuisines'
GO

-- Restaurant X Cuisines
DELETE FROM RestaurantCuisines
GO

-- Cuisines
DELETE FROM Cuisines
INSERT INTO Cuisines (Name) VALUES
('Chinese'),
('Brazilian'),
('Canadian'),
('American'),
('Korean'),
('Italian'),
('Spanish'),
('Vietnamese'),
('Caribbean'),
('Greek'),
('Hong Kong'),
('Indian'),
('Persian'),
('Colombian'),
('Afghani'),
('Portuguese'),
('Polish'),
('French'),
('African'),
('Bangladeshi'),
('British'),
('Cambodian'),
('Cuban'),
('Jamaican'),
('Japanese'),
('Malaysian'),
('Mexican'),
('Pakistani'),
('Philippine'),
('Thailandese')
GO

DELETE FROM Categories
INSERT INTO Categories (Name) VALUES 
('Hamburger'),
('Pizza'),
('Ramen'),
('Sushi & Sashimi'),
('Sea food'),
('Pasta'),
('Barbecue')
GO

-- Restaurants
DELETE FROM Restaurants
GO

DECLARE @RestaurantId BIGINT
DECLARE @CousineId BIGINT
--1
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Bar Buca', '4165992822', '75 Portland St', 'M5V 2M9', 'Toronto', 'ON', 'http://www.buca.ca', 1, 5, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'Italian'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
SELECT @CousineId=Id From Cuisines Where Name = 'Canadian'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--2
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Indian Street Food Co', '4163223270', '1701 Bayview Ave', 'M4G 3C1', 'East York', 'ON', 'http://www.indianstreetfoodco.com', 1, 4.5, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'Indian'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--3
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Honest Weight', '4166049992', '2766 Dundas St. W', 'M6P 1Y3', 'Toronto', 'ON', 'http://www.honestweight.ca', 1, 6, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'Canadian'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--4
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Rickshaw Bar', '6473521227', '685 Queen St. W', 'M6J 1E6', 'Toronto', 'ON', 'http://www.rickshawbar.com', 1, 4.5, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'Cambodian'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
SELECT @CousineId=Id From Cuisines Where Name = 'Vietnamese'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--5
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Khao San Road', '6473525773', '11 Charlotte St', 'M5V 2H5', 'Toronto', 'ON', 'http://www.khaosanroad.ca', 1, 6, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'Thailandese'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--6
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Momofuku Noodle Bar', '6472538000', '190 University Ave', 'M5H 0A3', 'Toronto', 'ON', 'http://noodlebar-toronto.momofuku.com', 1, 5, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'Japanese'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--7
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Big Crow', '6477483287', '176 Dupont St', 'M5R 2E6', 'Toronto', 'ON', 'http://www.roseandsonsbigcrow.com', 1, 5, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'American'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--8
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Bar Raval', '6473448001', '505 College St', 'M6J 2J3', 'Toronto', 'ON', 'http://www.thisisbarraval.com', 1, 3, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'Spanish'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--9
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Patois', '6473508999', '794 Dundas St W', 'M6J 1V1', 'Toronto', 'ON', 'http://www.patoistoronto.com', 1, 2, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'Jamaican'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--10
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('7 Numbers', '4163225183', '516 Eglinton Ave W', 'M5N 1A5', 'Toronto', 'ON', 'http://www.sevennumbers.com', 1, 6, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'Italian'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--11
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Playa Cabana Barrio Coreano', '6473415188', '642 Bloor St W', 'M6G 1K9', 'Toronto', 'ON', 'http://www.playacabana.ca/barrio', 1, 4, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'Mexican'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
SELECT @CousineId=Id From Cuisines Where Name = 'Korean'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--12
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('The Stockyards', '4166589666', '699 St Clair Ave W', 'M6C 1B2', 'Toronto', 'ON', 'http://www.thestockyards.ca', 1, 4.5, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'American'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--13
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Playa Cabana Cantina', '6473527767', '2883 Dundas St W', 'M6P 1Y9', 'Toronto', 'ON', 'http://www.playacabana.ca', 1, 5.5, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'Mexican'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--14
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Bar Begonia', '6473523337', '252 Dupont St', 'M5R 1V7', 'Toronto', 'ON', 'http://www.barbegonia.com', 1, 3, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'French'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
--15
INSERT INTO Restaurants (Name, PhoneNumber, Street, ZipCode, City, Province, Website, Delivery, DeliveryValue, Comments) VALUES ('Grand Electric', '4166273459', '1330 Queen St W', 'M6K 1L4', 'Toronto', 'ON', 'http://www.grandelectricbar.com/', 1, 4, null)
SET @RestaurantId = SCOPE_IDENTITY()
SELECT @CousineId=Id From Cuisines Where Name = 'Mexican'
INSERT INTO RestaurantCuisines (RestaurantId, CousineId) VALUES (@RestaurantId, @CousineId)
GO

