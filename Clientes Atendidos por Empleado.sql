--Clientes Atendidos por Empleado
CREATE VIEW ClientesAtendidosEmpleado AS
    SELECT e.EmployeeID, e.LastName, e.FirstName, COUNT(DISTINCT o.CustomerID) as Clientes
    FROM [Northwind].[dbo].[Orders] o
    JOIN [Northwind].[dbo].[Employees] e ON e.EmployeeID = o.EmployeeID
    GROUP BY e.EmployeeID, e.LastName, e.FirstName