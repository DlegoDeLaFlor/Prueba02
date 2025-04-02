
-- Insertar datos en Clientes
INSERT INTO Clientes (DNI, Apellidos, Nombre, Direccion, CP, Poblacion, Telefono, Telefono2) VALUES
('12345678A', 'García López', 'Juan', 'Calle A, 123', '28001', 'Madrid', '600111222', '910223344'),
('23456789B', 'Martínez Pérez', 'Ana', 'Avenida B, 456', '08002', 'Barcelona', '601222333', '920334455'),
('34567890C', 'Fernández Ruiz', 'Carlos', 'Paseo C, 789', '41003', 'Sevilla', '602333444', '930445566'),
('45678901D', 'López Gómez', 'María', 'Plaza D, 101', '29004', 'Málaga', '603444555', '940556677'),
('56789012E', 'Sánchez Torres', 'Pedro', 'Calle E, 202', '46005', 'Valencia', '604555666', '950667788'),
('67890123F', 'Rodríguez Díaz', 'Laura', 'Avenida F, 303', '35006', 'Las Palmas', '605666777', '960778899'),
('78901234G', 'González Moreno', 'David', 'Paseo G, 404', '50007', 'Zaragoza', '606777888', '970889900'),
('89012345H', 'Pérez Sánchez', 'Elena', 'Calle H, 505', '15008', 'A Coruña', '607888999', '980990011'),
('90123456I', 'Jiménez Castro', 'Sergio', 'Avenida I, 606', '03009', 'Alicante', '608999000', '990101122'),
('01234567J', 'Hernández Ortega', 'Marta', 'Plaza J, 707', '20010', 'San Sebastián', '609000111', '991112233');

-- Insertar datos en Coches
INSERT INTO Coches (Matricula, DNIPropietario, Marca, Modelo, Color, Km) VALUES
('1234ABC', '12345678A', 'Toyota', 'Corolla', 'Rojo', 120000),
('2345DEF', '23456789B', 'Ford', 'Focus', 'Azul', 95000),
('3456GHI', '34567890C', 'Honda', 'Civic', 'Negro', 80000),
('4567JKL', '45678901D', 'BMW', 'Serie 3', 'Blanco', 70000),
('5678MNO', '56789012E', 'Mercedes', 'Clase A', 'Gris', 60000),
('6789PQR', '67890123F', 'Volkswagen', 'Golf', 'Verde', 85000),
('7890STU', '78901234G', 'Audi', 'A4', 'Plata', 100000),
('8901VWX', '89012345H', 'Hyundai', 'Tucson', 'Naranja', 50000),
('9012YZA', '90123456I', 'Kia', 'Sportage', 'Azul', 45000),
('0123BCD', '01234567J', 'Nissan', 'Qashqai', 'Negro', 55000);

-- Insertar datos en Reparaciones
INSERT INTO Reparaciones (NumReparacion, Matricula, Descripcion, FechaEntrada, FechaSalida, Horas) VALUES
(1, '1234ABC', 'Cambio de aceite', '2024-03-01', '2024-03-02', 2),
(2, '2345DEF', 'Revisión general', '2024-03-05', '2024-03-07', 5),
(3, '3456GHI', 'Cambio de frenos', '2024-03-10', '2024-03-11', 3),
(4, '4567JKL', 'Sustitución de batería', '2024-03-15', '2024-03-15', 1),
(5, '5678MNO', 'Revisión sistema eléctrico', '2024-03-18', '2024-03-20', 4),
(6, '6789PQR', 'Cambio de neumáticos', '2024-03-21', '2024-03-22', 2),
(7, '7890STU', 'Pintura y chapa', '2024-03-25', '2024-03-29', 10),
(8, '8901VWX', 'Cambio de correa de distribución', '2024-04-01', '2024-04-03', 6),
(9, '9012YZA', 'Reparación de embrague', '2024-04-05', '2024-04-07', 8),
(10, '0123BCD', 'Revisión pre-ITV', '2024-04-10', '2024-04-10', 2);

-- Insertar datos en Piezas
INSERT INTO Piezas (Referencia, Descripcion, Precio, Stock) VALUES
('PZ001', 'Aceite motor 5W30', 45.50, 50),
('PZ002', 'Pastillas de freno', 30.00, 40),
('PZ003', 'Batería 12V 60Ah', 80.00, 25),
('PZ004', 'Neumático 205/55 R16', 90.00, 60),
('PZ005', 'Correa de distribución', 120.00, 15),
('PZ006', 'Filtro de aire', 25.00, 75),
('PZ007', 'Filtro de combustible', 35.00, 50),
('PZ008', 'Embrague completo', 250.00, 10),
('PZ009', 'Amortiguador delantero', 150.00, 30),
('PZ010', 'Juego de bujías', 50.00, 20);

-- Insertar datos en DetallesReparacion
INSERT INTO DetallesReparacion (NumReparacion, Referencia, Unidades) VALUES
(1, 'PZ001', 1),
(2, 'PZ006', 1),
(3, 'PZ002', 4),
(4, 'PZ003', 1),
(5, 'PZ007', 1),
(6, 'PZ004', 2),
(7, 'PZ009', 2),
(8, 'PZ005', 1),
(9, 'PZ008', 1),
(10, 'PZ010', 4);
