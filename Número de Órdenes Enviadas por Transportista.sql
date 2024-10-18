--Número de Órdenes Enviadas por Transportista
CREATE VIEW VentasPorTransportista AS
    SELECT ShipName, COUNT(OrderID) as Ventas
    FROM [Northwind].[dbo].[Orders]
    GROUP BY ShipName