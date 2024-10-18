--Productos Más Vendidos por categoría
ALTER VIEW MasVendidosCategoria AS
    SELECT TOP 100 PERCENT
        c.CategoryID, c.CategoryName, 
        p.ProductID, p.ProductName, (SUM(o.Quantity)) as Ventas
    FROM [Northwind].[dbo].[Order Details] o
    JOIN [Northwind].[dbo].[Products] p ON p.ProductID = o.ProductID
    JOIN [Northwind].[dbo].[Categories] c ON p.CategoryID = c.CategoryID
    GROUP BY c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
    ORDER BY CategoryID, Ventas DESC
