--Total de ordenes por Cliente
CREATE VIEW OrdenesPorCliente AS
    SELECT c.CustomerID, c.CompanyName, COUNT(o.OrderID) as Ventas
    FROM [Northwind].[dbo].[Orders] o
    JOIN [Northwind].[dbo].[Customers] c ON c.CustomerID = o.CustomerID
    GROUP BY c.CustomerID, c.CompanyName