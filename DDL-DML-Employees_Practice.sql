/*
DDL (structure):
A) Add a nullable column Notes VARCHAR(100) to #Products.
B) Change Employees.Salary from INT to DECIMAL(10,2) (keep it NOT NULL).
C) Create Audit with:
	AuditID INT IDENTITY(1,1) PRIMARY KEY
	TableName SYSNAME NOT NULL
	Action VARCHAR(20) NOT NULL
	ActionDate DATETIME2 NOT NULL DEFAULT (SYSUTCDATETIME())
*/

ALTER TABLE Products
ADD Notes VARCHAR(100) DEFAULT NULL
-- Nullable column added! -- A) [V]
SELECT * FROM Products

ALTER TABLE Employees 
ALTER COLUMN Salary DECIMAL(10,2) NOT NULL
-- Column altered! -- B) [V]
SELECT * FROM Employees

CREATE TABLE AuditTable(
	AuditID INT IDENTITY(1,1) PRIMARY KEY,
	TableName SYSNAME NOT NULL,
	ActionColumn VARCHAR(20) NOT NULL,
	ActionDate DATETIME2 NOT NULL DEFAULT (SYSUTCDATETIME())
)
-- Table Created! -- C) [V]
SELECT * FROM AuditTable
/*


DML (data):
D) Insert a new employee of your choice into #Employees.
E) Increase Amount by 10.00 for all #Orders where Status = 'Pending'.
F) Delete products where Price < 10.00 from #Products.
*/


SELECT * FROM Employees

INSERT INTO Employees		-- D) [V]
VALUES ( 'Carolina', 'Taylor', 'HR', 30000, '2026-01-15', 'ctaylor@corp.local');

SELECT * FROM Orders 

UPDATE Orders				-- E) [V]
SET Amount = Amount + 10
WHERE Status = 'Pending' 

SELECT * FROM Products

DELETE FROM Products		-- F) [V]
WHERE Price < 10		