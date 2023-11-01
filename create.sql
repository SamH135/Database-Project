-- Create the User table
CREATE TABLE User (
    UserID INT PRIMARY KEY,
    JobTitle VARCHAR(255) NOT NULL,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL
);

-- Create the Supplier table
CREATE TABLE Supplier (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(255)
);

-- Create the Product table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Price DECIMAL(10, 2) NOT NULL,
    Description TEXT,
    Name VARCHAR(255) NOT NULL
);

-- Create the Supplies table with a composite primary key
CREATE TABLE Supplies (
    ProductID INT,
    SupplierID INT,
    PRIMARY KEY (ProductID, SupplierID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE CASCADE,
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID) ON DELETE CASCADE
);

-- Create the Order table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    Description TEXT,
    Date DATE,
    Quantity INT,
    UserID INT,
    ProductID INT,
    FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE CASCADE
);

-- Create the Inventory table
CREATE TABLE Inventory (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE CASCADE
);