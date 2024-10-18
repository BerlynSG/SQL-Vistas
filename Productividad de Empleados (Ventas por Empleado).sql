--Productividad de Empleados (Ventas por Empleado)
CREATE VIEW ProductividadEmpleados AS
    SELECT e.LastName, e.FirstName, SUM(d.Quantity) as Ventas
    FROM [Northwind].[dbo].[Orders] o
    JOIN [Northwind].[dbo].[Order Details] d ON o.OrderID = d.OrderID
    JOIN [Northwind].[dbo].[Employees] e ON e.EmployeeID = o.EmployeeID
    GROUP BY e.LastName, e.FirstName