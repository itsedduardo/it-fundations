SELECT * FROM Employees
SELECT * FROM Orders
SELECT * FROM Products 


/*
Employees in Engineering hired in 2025 or later
Show FirstName, LastName, Salary.
Sort by Salary (DESC), then FirstName (ASC).
*/

SELECT 
FirstName,
LastName,
Salary
FROM Employees 
WHERE (Department = 'Engineering') AND (HireDate >= '2025-01-01')
ORDER BY Salary DESC, FirstName ASC

/*
Electronics priced between 100 and 1,000 (inclusive)
From #Products, show ProductName, Price.
Sort by Price (DESC), then ProductName (ASC).
*/

SELECT ProductName, Price 
FROM Products
WHERE Price BETWEEN 100 AND 1000
ORDER BY Price DESC, ProductName ASC

/*
Orders in February 2025 with Amount >= 200
From #Orders, show OrderID, CustomerName, Amount, OrderDate.
Sort by Amount (DESC), then OrderDate (DESC).
*/

SELECT OrderID, CustomerName, Amount, OrderDate
FROM Orders
WHERE (Amount >= 200) AND (OrderDate BETWEEN '2025-02-01' AND '2025-02-28')
ORDER BY Amount DESC, OrderDate DESC

/*
Employees without an email OR with Salary < 60000
Show EmployeeID, FirstName, LastName, Email, Salary.
Sort by Salary (ASC), then EmployeeID (ASC).
*/

SELECT EmployeeID, FirstName, LastName, Email, Salary
FROM Employees
WHERE (Salary < 60000) OR (Email IS NULL)
ORDER BY Salary ASC, EmployeeID ASC

/*
Products out of stock whose ProductName starts with L or O
Show ProductID, ProductName, InStock.
Sort by ProductName (ASC).
*/

SELECT ProductID, ProductName, InStock 
FROM Products
WHERE InStock = 0 AND (ProductName LIKE 'L%' OR ProductName LIKE 'O%')
ORDER BY ProductName ASC