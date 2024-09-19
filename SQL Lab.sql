--CREATE DATABASE MealKits;

--CREATE TABLE Customers (
--    UserID INT IDENTITY(1,1) PRIMARY KEY,
--    FullName NVARCHAR(255) NOT NULL,
--    Email NVARCHAR(255) NOT NULL UNIQUE,
--    SubscriptionLevel NVARCHAR(50),
--    SubscriptionStartDate DATE,
--    SubscriptionEndDate DATE,
--    State VARCHAR(100)
--);

--1.
--SELECT * FROM Customers;

--2.
--SELECT * FROM Customers 
--WHERE SubscriptionLevel = 'Premium';

--3.
--SELECT DISTINCT [State] FROM Customers;

--4.
--SELECT COUNT ([State]) FROM Customers
--WHERE [State] = 'NY';

--5.
--SELECT FullName, Email FROM Customers
--WHERE SubscriptionEndDate IS NULL;

--6

--CREATE INDEX idx_State--ON Customers ([State]);

--7

--INSERT INTO Customers (FullName, Email, SubscriptionLevel, SubscriptionStartDate, SubscriptionEndDate, [State])
--VALUES ('DeAngelo Robinson', 'imperfectsworld@gmail.com', 'Premium', '2024-01-01', '2024-12-31', 'MI');

--8
--UPDATE [Customers] SET [SubscriptionLevel] = 'Premium' WHERE UserID = 25

--9
--SELECT COUNT (*) FROM Customers
--WHERE [Email] LIKE '%.edu'

--10
--DELETE FROM Customers
--WHERE SubscriptionEndDate <= '2024-08-01';

--11
--SELECT FullName, Email FROM Customers
--WHERE SubscriptionLevel = 'Premium'
--ORDER BY FullName ASC;

--12
--CREATE TABLE Meals (
--    MealID INT IDENTITY(1,1) PRIMARY KEY,
--    MealName NVARCHAR(255) NOT NULL,
--    Calories INT,
--    Price MONEY,
--    IsVegetarian BIT,
--    SubscriptionLevel NVARCHAR(50)
--	);


--13
--INSERT INTO Meals (MealName, Calories, Price, IsVegetarian, SubscriptionLevel)
--VALUES
--('Pizza', 500, 8.00, 1, 'Premium'), 
--('Raviolli', 1200, 18.00, 0, 'Standard'),
--('Poop', 2500, 0, 0, 'Premium');

--14
--INSERT INTO Meals (MealName, Calories, Price, IsVegetarian, SubscriptionLevel)
--VALUES ('Truffle Risotto', 700, 25.00, 0, 'Premium'), 
--('Lobster Mac & Cheese', 900, 28.00, 0, 'Premium'),
--('Vegetable Quiche', 500, 11.00, 1, 'Standard'),
--('Roasted Duck Breast', 700, 22.50, 0, 'Premium'),
--('Mushroom Stroganoff', 500, 12.00, 1, 'Standard'),
--('Filet Mignon', 700, 30.00, 0, 'Premium'),
--('Greek Salad', 500, 9.00, 1, 'Standard'),
--('Wild Mushroom Soup', 500, 14.00, 1, 'Premium'),
--('Chicken Parmesan', 700, 13.50, 0, 'Standard'),
--('Seafood Paella', 900, 26.00, 0, 'Premium');

--15
--SELECT TOP 5 MealName from Meals
--WHERE IsVegetarian = 1;


--16
--SELECT * FROM Meals
--ORDER BY Calories DESC, Price DESC;

--17
--SELECT * FROM Meals;
--UPDATE Meals SET [Price] = Price + 5 WHERE SubscriptionLevel = 'Premium';
--SELECT * FROM Meals;

--18--SELECT AVG(price) FROM Meals;--SELECT Max(price) FROM Meals;--SELECT Min(price) FROM Meals;--19--SELECT * FROM Meals
--WHERE Price BETWEEN 10 AND 20;--20
--ALTER TABLE Meals
--ADD star_rating INT NULL;

--21
--DROP TABLE Meals;