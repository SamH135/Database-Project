-- Load data into the User table
LOAD DATA INFILE 'User.csv'
INTO TABLE User
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(UserID, JobTitle, Username, Password);

-- Load data into the Supplier table
LOAD DATA INFILE 'Supplier.csv'
INTO TABLE Supplier
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(SupplierID, Name, Phone, Email);

-- Load data into the Product table
LOAD DATA INFILE 'Product.csv'
INTO TABLE Product
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ProductID, Price, Description, Name);

-- Load data into the Supplies table
LOAD DATA INFILE 'Supplies.csv'
INTO TABLE Supplies
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ProductID, SupplierID);

-- Load data into the Order table
LOAD DATA INFILE 'Order.csv'
INTO TABLE Orders
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(OrderID, Description, Date, Quantity, UserID, ProductID);

-- Load data into the Inventory table
LOAD DATA INFILE 'Inventory.csv'
INTO TABLE Inventory
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ProductID, ProductName);
