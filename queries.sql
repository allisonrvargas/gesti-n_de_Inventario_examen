-- 1️⃣ Listar los productos con stock menor a 5 unidades
SELECT id_producto, nombre, stock, precio
FROM productos
WHERE stock < 5;

-- 2️⃣ Calcular ventas totales de un mes específico (Ejemplo: Agosto de 2026)
SELECT SUM(total) AS ventas_totales_agosto
FROM ventas
WHERE fecha_venta >= '2026-08-01' AND fecha_venta < '2026-09-01';

-- 3️⃣ Obtener el cliente con más compras realizadas
SELECT c.id_cliente, c.nombre, COUNT(v.id_venta) AS total_compras
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre
ORDER BY total_compras DESC
LIMIT 1;

-- 4️⃣ Listar los productos más vendidos
SELECT p.id_producto, p.nombre, SUM(dv.cantidad) AS cantidad_total_vendida
FROM productos p
JOIN detalle_ventas dv ON p.id_producto = dv.id_producto
GROUP BY p.id_producto, p.nombre
ORDER BY cantidad_total_vendida DESC;

-- 5️⃣ Consultar ventas realizadas en un rango de fechas
SELECT v.id_venta, c.nombre AS cliente, v.fecha_venta, v.total
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
WHERE v.fecha_venta BETWEEN '2026-08-01' AND '2026-08-31'
ORDER BY v.fecha_venta ASC;

-- 6️⃣ Identificar clientes que no han comprado en los últimos 6 meses (respecto a septiembre de 2026)
SELECT id_cliente, nombre, email
FROM clientes
WHERE id_cliente NOT IN (
    SELECT DISTINCT id_cliente
    FROM ventas
    WHERE fecha_venta >= '2026-03-02'
);



