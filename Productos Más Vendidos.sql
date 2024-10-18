--Productos Más Vendidos
ALTER VIEW MasVendidos AS
    SELECT TOP 100 PERCENT
        p.ProductID, p.ProductName, (SUM(o.Quantity)) as Ventas
    FROM [Northwind].[dbo].[Order Details] o
    JOIN [Northwind].[dbo].[Products] p ON p.ProductID = o.ProductID
    GROUP BY p.ProductID, p.ProductName
    ORDER BY Ventas DESC
