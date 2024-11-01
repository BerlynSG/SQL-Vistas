--Ventas por Región/País
CREATE VIEW VentasPorPaisRegion AS
    SELECT o.ShipRegion, o.ShipCountry, SUM(d.Quantity) as Ventas
    FROM [Northwind].[dbo].[Order Details] d
    JOIN [Northwind].[dbo].[Orders] o ON o.OrderID = d.OrderID
    GROUP BY o.ShipRegion, o.ShipCountry