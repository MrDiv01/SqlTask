SELECT TOP 5 [Country],[FirstName] FROM Employees
GROUP BY Country, FirstName
ORDER BY FirstName ASC;

SELECT Categories.CategoryName, COUNT(Products.ProductID) AS ProductCount FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Products.UnitPrice < 35
GROUP BY Categories.CategoryName;

SELECT Categories.CategoryName, COUNT(Products.ProductID) AS ProductCount FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Products.ProductName BETWEEN 'A%' AND 'K%' AND Products.UnitsInStock BETWEEN 5 AND 50
GROUP BY Categories.CategoryName;

SELECT OrderID, SUM(Quantity) AS TotalQuantity FROM [Order Details]
GROUP BY OrderID;

SELECT OrderID, SUM(UnitPrice * Quantity) AS TotalAmount FROM [Order Details]
GROUP BY OrderID
ORDER BY TotalAmount;

SELECT OrderID, SUM(UnitPrice * Quantity) AS TotalAmount FROM [Order Details]
GROUP BY OrderID
HAVING SUM(UnitPrice * Quantity) BETWEEN 2500 AND 3500;

SELECT OrderID, SUM(Quantity) AS TotalQuantity FROM [Order Details]
GROUP BY OrderID
HAVING SUM(Quantity) < 200;


