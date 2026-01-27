-- Clean start (safe to re-run)
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Orders;

-- Simple tables
CREATE TABLE Employees (
  EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
  FirstName  VARCHAR(30) NOT NULL,
  LastName   VARCHAR(30) NOT NULL,
  Department VARCHAR(30) NOT NULL,
  Salary     INT NOT NULL,
  HireDate   DATE NOT NULL,
  Email      VARCHAR(100) NULL
);

CREATE TABLE Products (
  ProductID   INT IDENTITY(1,1) PRIMARY KEY,
  ProductName VARCHAR(50) NOT NULL,
  Category    VARCHAR(30) NOT NULL,
  Price       DECIMAL(10,2) NOT NULL,
  InStock     BIT NOT NULL
);

CREATE TABLE Orders (
  OrderID      INT IDENTITY(1,1) PRIMARY KEY,
  CustomerName VARCHAR(50) NOT NULL,
  OrderDate    DATE NOT NULL,
  Amount       DECIMAL(10,2) NOT NULL,
  Status       VARCHAR(20) NOT NULL
);

