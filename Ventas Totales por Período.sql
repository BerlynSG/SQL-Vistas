--Ventas Totales por Período (Año y Mes)
CREATE VIEW VentasPorPeriodo AS
    SELECT YEAR(o.OrderDate) as Año,
        MONTH(o.OrderDate) as Mes,
        SUM(d.Quantity * d.UnitPrice) as Total
    FROM [Northwind].[dbo].[Order Details] d
    JOIN [Northwind].[dbo].[Orders] o ON o.OrderID = d.OrderID
    GROUP BY YEAR(o.OrderDate), MONTH(o.OrderDate)