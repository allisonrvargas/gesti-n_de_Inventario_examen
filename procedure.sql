CREATE OR REPLACE PROCEDURE registrar_venta(
    p_id_cliente INT,
    p_id_producto INT,
    p_cantidad INT
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_stock INT;
    v_precio NUMERIC(10,2);
    v_id_cliente INT;
    v_id_venta INT;
    v_subtotal NUMERIC(10,2);
BEGIN
    -- 1. Validar si el cliente existe
    SELECT id_cliente INTO v_id_cliente 
    FROM clientes 
    WHERE id_cliente = p_id_cliente;
    
    IF v_id_cliente IS NULL THEN
        RAISE EXCEPTION 'ERROR: El cliente con ID % no existe. Cancelando venta.', p_id_cliente;
    END IF;

    -- 2. Verificar stock y obtener precio del producto
    SELECT stock, precio INTO v_stock, v_precio 
    FROM productos 
    WHERE id_producto = p_id_producto;
    
    IF v_stock IS NULL THEN
        RAISE EXCEPTION 'ERROR: El producto con ID % no existe. Cancelando venta.', p_id_producto;
    END IF;

    IF v_stock < p_cantidad THEN
        RAISE EXCEPTION 'ERROR: Stock insuficiente para el producto ID %. Disponible: %, Solicitado: %. Cancelando venta.', 
            p_id_producto, v_stock, p_cantidad;
    END IF;

    -- 3. Calcular subtotal
    v_subtotal := v_precio * p_cantidad;

    -- 4. Registrar la venta
    INSERT INTO ventas (id_cliente, fecha_venta, total)
    VALUES (p_id_cliente, NOW(), v_subtotal)
    RETURNING id_venta INTO v_id_venta;

    -- 5. Registrar el detalle
    INSERT INTO detalle_ventas (id_venta, id_producto, cantidad, precio_unitario, subtotal)
    VALUES (v_id_venta, p_id_producto, p_cantidad, v_precio, v_subtotal);

    -- 6. Actualizar inventario
    UPDATE productos
    SET stock = stock - p_cantidad
    WHERE id_producto = p_id_producto;

    RAISE NOTICE 'Venta registrada con éxito. Venta ID: %, Total: %', v_id_venta, v_subtotal;
END;
$$;