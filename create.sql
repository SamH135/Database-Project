
-- Create the Inventory table
CREATE TABLE Inventory (
    ProductID INT,
    ProductName VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (ProductID, ProductName),
    FOREIGN KEY (ProductID, ProductName) REFERENCES Product(ProductID, Name)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- Create the User table
CREATE TABLE User (
    UserID INT PRIMARY KEY,
    JobTitle VARCHAR(255),
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Password VARCHAR(255)
);

-- Create the Manufacturer table
CREATE TABLE Manufacturer (
    ManufacturerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Phone VARCHAR(255),
    Email VARCHAR(255)
);

-- Create the Product table with a composite primary key
CREATE TABLE Product (
    ProductID INT,
    Name VARCHAR(255),
    Price DECIMAL(10, 2),
    Description TEXT,
    PRIMARY KEY (ProductID, Name)
);

-- Create the Supplies table with three primary keys
CREATE TABLE Supplies (
    ProductID INT,
    ProductName VARCHAR(255),
    ManufacturerID INT,
    PRIMARY KEY (ProductID, ProductName, ManufacturerID),
    FOREIGN KEY (ProductID, ProductName) REFERENCES Product(ProductID, Name)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (ManufacturerID) REFERENCES Manufacturer(ManufacturerID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Create the Order table with ON DELETE SET NULL
CREATE TABLE `Order` (
    OrderID INT PRIMARY KEY,
    Date DATE,
    Quantity INT,
    UserID INT,
    ProductID INT,
    FOREIGN KEY (UserID) REFERENCES `User`(UserID)
        ON DELETE SET NULL      -- so we don't lose records if a user is deleted 
        ON UPDATE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

