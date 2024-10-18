--Ventas por Región/País
CREATE VIEW VentasPorCategoria AS
    SELECT o.ShipRegion, o.ShipCountry, COUNT(d.OrderID) as Ventas
    FROM [Northwind].[dbo].[Order Details] d
    JOIN [Northwind].[dbo].[Orders] o ON o.OrderID = d.OrderID
    GROUP BY o.ShipRegion, o.ShipCountry