USE eventosUanl_bd

-- Tabla Recintos
INSERT INTO Recintos (Recinto, Direccion, Capacidad) VALUES
('Auditorio Universitario', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicolás de los Garza', 2000),
('Teatro Universitario', 'Av. Alfonso Reyes 4000, Col. Regina, Monterrey', 1200),
('Biblioteca Universitaria Raúl Rangel Frías', 'Av. Alfonso Reyes 4000, Col. Regina, Monterrey', 300),
('Centro de Investigación y Desarrollo en Ciencias de la Salud', 'Dr. Carlos Canseco 110, Col. Mitras Centro, Monterrey', 500),
('Estadio Gaspar Mass', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicolás de los Garza', 15000);

-- Tabla Dependencias
INSERT INTO Dependencias (Dependencia) VALUES
('Facultad de Ciencias Fisico Matematicas'),
('Facultad de Medicina'),
('Facultad de Ciencias Químicas'),
('Facultad de Derecho y Criminología'),
('Facultad de Filosofía y Letras');

-- Tabla Roles
INSERT INTO Roles (Rol) VALUES
('Administrador General'),
('Administrador Dependencia'),
('Invitado Cliente'),
('Invitado'),
('Operador');

--Tabla Categorias
INSERT INTO Categorias (Categoria) VALUES
('Académico'),
('Actividad de Formación Integral'),
('Becas'),
('Caminata'),
('Campamento'),
('Campaña'),
('Cátedra'),
('Ceremonia'),
('Certamen'),
('Certificación'),
('Ciclo de películas'),
('Clase magistral'),
('Coloquio'),
('Concierto'),
('Concurso'),
('Conferencia'),
('Congreso'),
('Conversatorio'),
('Convocatoria'),
('Cultural'),
('Cumbre'),
('Curso'),
('Danza'),
('Deportes'),
('Diálogo'),
('Diplomado'),
('Emprendimiento'),
('Encuentro'),
('Espectáculo'),
('Espectáculo Danza'),
('Eventos'),
('Exposición'),
('Feria'),
('Festival'),
('Foro'),
('Jornada'),
('Masterclass'),
('Musical'),
('Ópera'),
('Pláticas'),
('Premio'),
('Presentación'),
('Programa'),
('Recorridos'),
('Responsabilidad Social'),
('Reunión'),
('Seminario'),
('Sesión'),
('Sesión informativa'),
('Simposio'),
('Sorteo'),
('Taller'),
('Teatro'),
('Torneo'),
('Transmisión'),
('Turismo'),
('Webinar');

-- Tabla MetodosPago
INSERT INTO MetodosPago (MetodoPago) VALUES
('Tarjeta de Crédito'),
('Tarjeta de Débito'),
('PayPal'),
('Transferencia Bancaria'),
('Efectivo');

-- Tabla Eventos
INSERT INTO Eventos (Titulo, Descripcion, Fecha, RecintoID, DependenciaID, CategoriaID) VALUES
('Congreso de Matematicas', 'Congreso anual donde se presentan las últimas investigaciones en el campo de las matematicas.', '2024-09-15 09:00:00', 1, 1, 17),
('Simposio de Ciencias Químicas', 'Un simposio que reúne a expertos en química para discutir nuevos avances y descubrimientos.', '2024-10-20 10:00:00', 2, 3, 50),
('Seminario de Medicina', 'Seminario sobre las innovaciones en tratamientos médicos y tecnología sanitaria.', '2024-11-05 11:00:00', 4, 2, 47),
('Jornada de Derecho Penal', 'Una jornada dedicada a los estudios y casos recientes en el derecho penal.', '2024-12-01 09:00:00', 3, 4, 36),
('Conferencia de Literatura', 'Conferencia sobre las nuevas tendencias en literatura y crítica literaria.', '2024-08-25 15:00:00', 5, 5, 16);

-- Tabla Usuarios
INSERT INTO Usuarios (Nombre, ApellidoPaterno, ApellidoMaterno, Correo, Contraseña, RolID, DependenciaID) VALUES
('Juan', 'Pérez', 'Gómez', 'juan.perez@example.com', 'password123', 1, 1),
('María', 'López', 'Martínez', 'maria.lopez@example.com', 'password456', 2, 2),
('Carlos', 'Ramírez', 'Hernández', 'carlos.ramirez@example.com', 'password789', 3, 3),
('Ana', 'González', 'Sánchez', 'ana.gonzalez@example.com', null, 4, null),
('Luis', 'Fernández', 'Díaz', 'luis.fernandez@example.com', 'password654', 5, 5);

-- Tabla Butacas
INSERT INTO Butacas (ButacaID, RecintoID) VALUES
(1, 1),
(1, 2),
(1, 3), --Funcion que al dar de alta un recinto genere sus butacas
(1, 4),
(1, 5);

-- Tabla Boletos
INSERT INTO Boletos (Descripcion, Diseño, CodigoBarras, UsuarioID, EventoID, RecintoID, ButacaID) VALUES
('Congreso de Matematicas', NULL, NULL, 1, 1, 1, 1),
('Simposio de Ciencias Químicas', NULL, NULL, 2, 2, 2, 1),
('Seminario de Medicina', NULL, NULL, 3, 3, 4, 1),
('Jornada de Derecho Penal', NULL, NULL, 4, 4, 3, 1),
('Conferencia de Literatura', NULL, NULL, 5, 5, 3, 1);

-- Tabla Pagos
INSERT INTO Pagos (Descripcion, Monto, Fecha, MetodoPagoID, BoletoID) VALUES
('Pago Boleto 1 Congreso de Matematicas', 150.00, '2024-05-01 12:00:00', 1, 1),
('Pago Boleto 2 Simposio de Ciencias Químicas', 50.00, '2024-05-02 13:00:00', 2, 2),
('Pago Boleto 3 Seminario de Medicina', 75.00, '2024-05-03 14:00:00', 3, 3),
('Pago Boleto 4 Jornada de Derecho Penal', 30.00, '2024-05-04 15:00:00', 4, 4),
('Pago Boleto 5 Conferencia de Literatura', 20.00, '2024-05-05 16:00:00', 5, 5);

-- Tabla Asistencia
INSERT INTO Asistencia (EventoID, BoletoID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Tabla Costos
INSERT INTO Costos (Costo, Descripcion, EventoID) VALUES
(0, 'Entrada General', 1),
(50, 'Entrada Estudiante', 2),
(100, 'Entrada General', 2),
(200, 'Entrada General', 3),
(100, 'Precio Temprano', 4),
(200, 'Precio Normal', 4),
(300, 'Precio Extemporaneo', 4),
(0, 'Entrada General', 5);