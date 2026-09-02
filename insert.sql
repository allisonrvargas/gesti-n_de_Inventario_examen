-- Inserción de 15 Proveedores
INSERT INTO proveedores (nombre, contacto, telefono, email) VALUES
('Tech S.A.', 'Allison Vargas', '3475-0101', 'allison@tech.com'),
('Electronica Global', 'Majo Montepeque', '8565-1234', 'ventas@global.com'),
('Electronicos Pro', 'Evelyn Ramirez', '1234-0103', 'electro@pro.com'),
('Distribuidora Tech', 'Sofi Lopez', '8794-0104', 'tech@distribuidora.com'),
('soporte', 'Jorge Ramos', '5685-0105', 'Jorge@soporte.com'),
('Laptops y Más', 'Marco Polo', '3478-7894', 'polo@laptopsmas.com'),
('Periféricos Express', 'Pablo Lopez', '2145-3698', 'pablo@perifericosexpress.com'),
('Hardware', 'Cleidy Perez', '6874-0108', 'Cleidy@hardware.com'),
('Redes Y Servidores', 'Carlos Velasco', '3879-0109', 'carlosvelasco@redesyservidores.com'),
('AudioTech', 'Joseph Ramirez', '0784-1210', 'Jose@audiotech.com'),
('SmartSystems', 'Lucas Pajarito', '3548-9876', 'Lucas@smartsystems.com'),
('VisionDigital', 'Alejandro Bautista', '7894-1357', 'alebautista@visiondigital.com'),
('Tecnologia Resolutiva', 'Brandon Mejia', '0324-4578', 'brandon@tecnologiaresolutiva.com'),
('PowerSolutions', 'Irma Arias', '8756-2191', 'Arias@powersolutions.com'),
('ElectronicsWorld', 'Eduin Salas', '8926-1023', 'EduinSalas@electronicsworld.com');

-- Inserción de Categorías
INSERT INTO categorias (nombre, descripcion) VALUES
('Laptops', 'Equipos portátiles'),
('Smartphones', 'Teléfonos móviles inteligentes'),
('Monitores', 'Pantallas para computadoras'),
('Accesorios', 'Teclados, mouses, cables y periféricos'),
('Componentes', 'Procesadores, RAM, discos duros');

-- Inserción de 15 Productos
INSERT INTO productos (nombre, id_categoria, precio, stock, id_proveedor) VALUES
('Laptop HP', 1, 1000.00, 3, 6),
('MacBook Air', 1, 11999.99, 12, 1),
('iPhone 16', 2, 5000.00, 4, 2),
('Samsung Galaxy S24', 2, 10000.00, 8, 2),
('Monitor LG 30"', 3, 2000.00, 2, 12),
('Teclado Mecánico', 4, 125.00, 25, 7),
('Mouse Inalámbrico Logitech', 4, 50.00, 30, 7),
('Disco Duro SSD', 5, 1000.00, 15, 3),
('Memoria RAM 16GB', 5, 500.00, 1, 3),
('Procesador Intel Core i7', 5, 900.00, 6, 13),
('Tarjeta de Video', 5, 400.00, 2, 13),
('Audífonos Sony', 4, 230.00, 10, 10),
('Router Wi-Fi', 4, 850.00, 18, 9),
('Cargador Carga Rápida USB-C', 4, 300.00, 50, 4),
('Tablet Samsung Galaxy Tab', 2, 3000.00, 7, 2);

-- Inserción de 15 Clientes
INSERT INTO clientes (nombre, email, telefono, fecha_registro) VALUES
('Juan Pérez', 'juan.perez@email.com', '9048-1054', '2025-10-15'),
('María Rodríguez', 'maria.rodriguez@email.com', '9875-1002', '2025-11-20'),
('Carlos Gómez', 'carlos.gomez@email.com', '7848-9784', '2026-01-10'),
('Ana Martínez', 'ana.martinez@email.com', '3954-3254', '2026-02-01'),
('Luis Hernández', 'luis.hernandez@email.com', '3645-9875', '2025-05-12'),
('Laura Díaz', 'laura.diaz@email.com', '2698-1985', '2025-06-18'),
('José Ramírez', 'jose.ramirez@email.com', '3487-1967', '2026-03-05'),
('Andrea Sánchez', 'andrea.sanchez@email.com', '3526-8748', '2026-04-12'),
('David Flores', 'david.flores@email.com', '7416-3259', '2026-05-22'),
('Paula Benítez', 'paula.benitez@email.com', '3654-8795', '2026-06-30'),
('Roberto Ruiz', 'roberto.ruiz@email.com', '9874-3241', '2026-07-11'),
('Sofía Morales', 'sofia.morales@email.com', '3698-9877', '2026-08-01'),
('Gabriel Torres', 'gabriel.torres@email.com', '8974-3543', '2026-08-15'),
('Valeria Herrera', 'valeria.herrera@email.com', '9872-8714', '2026-08-20'),
('Miguel Ángel', 'miguel.angel@email.com', '1245-1354', '2026-08-25');

-- Inserción de 15 Ventas 
INSERT INTO ventas (id_cliente, fecha_venta, total) VALUES
(1, '2026-07-05 10:30:00', 1000.00),
(1, '2026-08-10 14:15:00', 125.00),
(2, '2026-08-11 11:00:00', 5000.00),
(3, '2026-08-12 16:45:00', 1000.00),
(1, '2026-08-15 09:20:00', 10000.00),
(4, '2026-08-18 17:10:00', 2000.00),
(7, '2026-08-20 12:00:00', 400.00),
(8, '2026-08-22 15:30:00', 230.00),
(9, '2026-08-25 10:00:00', 850.00),
(10, '2026-08-26 13:25:00', 3000.00),
(2, '2026-08-27 18:00:00', 50.00),
(3, '2026-08-28 11:50:00', 1000.00),
(11, '2026-08-29 16:05:00', 500.00),
(12, '2026-08-30 09:45:00', 600.00),
(13, '2026-09-01 10:15:00', 900.00);

-- Inserción de dealle ventas
INSERT INTO detalle_ventas (id_venta, id_producto, cantidad, precio_unitario, subtotal) VALUES
(1, 1, 1, 1000.00, 1000.00),     -- Laptop HP
(2, 6, 1, 125.00, 125.00),       -- Teclado Mecánico
(3, 3, 1, 5000.00, 5000.00),     -- iPhone 16
(4, 7, 2, 50.00, 100.00),        -- Mouse Inalámbrico Logitech (2 x 50)
(4, 10, 1, 900.00, 900.00),      -- Procesador Intel Core i7
(5, 4, 1, 10000.00, 10000.00),   -- Samsung Galaxy S24
(6, 5, 1, 2000.00, 2000.00),     -- Monitor LG 30"
(7, 11, 1, 400.00, 400.00),      -- Tarjeta de Video
(8, 12, 1, 230.00, 230.00),      -- Audífonos Sony
(9, 13, 1, 850.00, 850.00),      -- Router Wi-Fi
(10, 15, 1, 3000.00, 3000.00),   -- Tablet Samsung Galaxy Tab
(11, 7, 1, 50.00, 50.00),        -- Mouse Inalámbrico Logitech
(12, 8, 1, 1000.00, 1000.00),    -- Disco Duro SSD
(13, 9, 1, 500.00, 500.00),      -- Memoria RAM 16GB
(14, 14, 2, 300.00, 600.00),     -- Cargador Carga Rápida USB-C (2 x 300)
(15, 10, 1, 900.00, 900.00);     -- Procesador Intel Core i7