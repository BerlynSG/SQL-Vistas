--Total de Ventas por Transportista
CREATE VIEW VentasPorTransportista AS
    SELECT o.ShipName, SUM(d.Quantity * d.UnitPrice) as Ventas
    FROM [Northwind].[dbo].[Order Details] d
    JOIN [Northwind].[dbo].[Orders] o ON o.OrderID = d.OrderID
    GROUP BY o.ShipName