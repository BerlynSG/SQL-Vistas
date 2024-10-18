--Número de Pedidos Procesados por Empleado
CREATE VIEW VentasPorCategoria AS
    SELECT e.LastName, e.FirstName, COUNT(*) as Pedidos
    FROM [Northwind].[dbo].[Orders] o
    JOIN [Northwind].[dbo].[Employees] e ON e.EmployeeID = o.EmployeeID
    GROUP BY e.LastName, e.FirstName