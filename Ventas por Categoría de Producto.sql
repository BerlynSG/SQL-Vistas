--Ventas por Categoría de Producto
CREATE VIEW VentasPorCategoria AS
    SELECT c.CategoryID, c.CategoryName, SUM(d.Quantity) as Ventas
    FROM [Northwind].[dbo].[Order Details] d
    JOIN [Northwind].[dbo].[Products] p ON p.ProductID = d.ProductID
    JOIN [Northwind].[dbo].[Categories] c ON c.CategoryID = p.CategoryID
    GROUP BY c.CategoryID, c.CategoryName