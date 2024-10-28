--Total de Ventas por Cliente
CREATE VIEW VentasPorCliente AS
    SELECT c.CustomerID, c.CompanyName, SUM(d.Quantity * d.UnitPrice) as Ventas
    FROM [Northwind].[dbo].[Order Details] d
    JOIN [Northwind].[dbo].[Orders] o ON o.OrderID = d.OrderID
    JOIN [Northwind].[dbo].[Customers] c ON c.CustomerID = o.CustomerID
    GROUP BY c.CustomerID, c.CompanyName