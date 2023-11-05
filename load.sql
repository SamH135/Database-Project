-- Load data into the Inventory table
LOAD DATA LOCAL INFILE 'C:\Users\samue\OneDrive\Desktop\4347 Project SQL tables + data\Inventory.csv'
INTO TABLE Inventory
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(ProductID, ProductName, Quantity);

-- Load data into the User table
LOAD DATA LOCAL INFILE 'C:\Users\samue\OneDrive\Desktop\4347 Project SQL tables + data\User.csv'
INTO TABLE `User`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(UserID, JobTitle, FirstName, LastName, UserPassword);

-- Load data into the Manufacturer table
LOAD DATA LOCAL INFILE 'C:\Users\samue\OneDrive\Desktop\4347 Project SQL tables + data\Manufacturer.csv'
INTO TABLE Manufacturer
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(ManufacturerID, MName, Phone, Email);

-- Load data into the Product table
LOAD DATA LOCAL INFILE 'C:\Users\samue\OneDrive\Desktop\4347 Project SQL tables + data\Product.csv'
INTO TABLE Product
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(ProductID, PName, Price, PDescription);

-- Load data into the Supplies table
LOAD DATA LOCAL INFILE 'C:\Users\samue\OneDrive\Desktop\4347 Project SQL tables + data\Supplies.csv'
INTO TABLE Supplies
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(ProductID, ProductName, ManufacturerID);

-- Load data into the Orders table
LOAD DATA LOCAL INFILE 'C:\Users\samue\OneDrive\Desktop\4347 Project SQL tables + data\Orders.csv'
INTO TABLE Orders
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(OrderID, OrderDate, Quantity, UserID, ProductID);
