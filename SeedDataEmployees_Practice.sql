SELECT * FROM Employees
SELECT * FROM Orders
SELECT * FROM Products

-- Sample data
INSERT INTO Employees (FirstName, LastName, Department, Salary, HireDate, Email) VALUES
('Ana','Silva','Engineering',80000,'2024-11-10','ana@corp.local'),
('Joao','Souza','Engineering',60000,'2025-01-15','joao@corp.local'),
('Maria','Lima','Sales',70000,'2023-09-01','maria@corp.local'),
('Pedro','Alves','HR',50000,'2025-02-20',NULL),
('Luiza','Costa','Engineering',90000,'2022-05-05','luiza@corp.local'),
('Bruno','Dias','Support',55000,'2025-02-02','bruno@corp.local'),
('Carla','Nunes','Sales',72000,'2025-02-14','carla@corp.local'),
('Diego','Ramos','Sales',65000,'2025-03-01',NULL);

INSERT INTO Products (ProductName, Category, Price, InStock) VALUES
('Laptop Pro 14','Electronics',1499.99,1),
('Laptop Air 13','Electronics', 999.99,1),
('USB-C Cable','Electronics',     9.99,1),
('Office Chair','Furniture',     199.90,0),
('Standing Desk','Furniture',    499.00,1),
('Ceramic Mug','Home',            12.50,1),
('LED Lamp','Home',               35.00,0),
('Noise-Cancel Headphones','Electronics',299.00,1);

INSERT INTO Orders (CustomerName, OrderDate, Amount, Status) VALUES
('Alice','2025-01-10',120.00,'Shipped'),
('Alice','2025-02-05',220.00,'Shipped'),
('Bob','2025-02-20', 80.00,'Pending'),
('Carol','2025-02-20',500.00,'Shipped'),
('Dan','2025-02-25',150.00,'Cancelled'),
('Eva','2025-03-01',300.00,'Pending');