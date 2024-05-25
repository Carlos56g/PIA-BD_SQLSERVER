USE eventosUanl_bd

-- Tabla Recintos
INSERT INTO Recintos (Recinto, Direccion, Capacidad) VALUES
('Auditorio Universitario', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicol�s de los Garza', 2000),
('Teatro Universitario', 'Av. Alfonso Reyes 4000, Col. Regina, Monterrey', 1200),
('Biblioteca Universitaria Ra�l Rangel Fr�as', 'Av. Alfonso Reyes 4000, Col. Regina, Monterrey', 300),
('Centro de Investigaci�n y Desarrollo en Ciencias de la Salud', 'Dr. Carlos Canseco 110, Col. Mitras Centro, Monterrey', 500),
('Estadio Gaspar Mass', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicol�s de los Garza', 15000);

-- Tabla Dependencias
INSERT INTO Dependencias (Dependencia) VALUES
('Facultad de Ciencias Fisico Matematicas'),
('Facultad de Medicina'),
('Facultad de Ciencias Qu�micas'),
('Facultad de Derecho y Criminolog�a'),
('Facultad de Filosof�a y Letras');

-- Tabla Roles
INSERT INTO Roles (Rol) VALUES
('Administrador General'),
('Administrador Dependencia'),
('Invitado Cliente'),
('Invitado'),
('Operador');

--Tabla Categorias
INSERT INTO Categorias (Categoria) VALUES
('Acad�mico'),
('Actividad de Formaci�n Integral'),
('Becas'),
('Caminata'),
('Campamento'),
('Campa�a'),
('C�tedra'),
('Ceremonia'),
('Certamen'),
('Certificaci�n'),
('Ciclo de pel�culas'),
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
('Di�logo'),
('Diplomado'),
('Emprendimiento'),
('Encuentro'),
('Espect�culo'),
('Espect�culo Danza'),
('Eventos'),
('Exposici�n'),
('Feria'),
('Festival'),
('Foro'),
('Jornada'),
('Masterclass'),
('Musical'),
('�pera'),
('Pl�ticas'),
('Premio'),
('Presentaci�n'),
('Programa'),
('Recorridos'),
('Responsabilidad Social'),
('Reuni�n'),
('Seminario'),
('Sesi�n'),
('Sesi�n informativa'),
('Simposio'),
('Sorteo'),
('Taller'),
('Teatro'),
('Torneo'),
('Transmisi�n'),
('Turismo'),
('Webinar');

-- Tabla MetodosPago
INSERT INTO MetodosPago (MetodoPago) VALUES
('Tarjeta de Cr�dito'),
('Tarjeta de D�bito'),
('PayPal'),
('Transferencia Bancaria'),
('Efectivo');

-- Tabla Eventos
INSERT INTO Eventos (Titulo, Descripcion, Fecha, RecintoID, DependenciaID, CategoriaID) VALUES
('Congreso de Matematicas', 'Congreso anual donde se presentan las �ltimas investigaciones en el campo de las matematicas.', '2024-09-15 09:00:00', 1, 1, 17),
('Simposio de Ciencias Qu�micas', 'Un simposio que re�ne a expertos en qu�mica para discutir nuevos avances y descubrimientos.', '2024-10-20 10:00:00', 2, 3, 50),
('Seminario de Medicina', 'Seminario sobre las innovaciones en tratamientos m�dicos y tecnolog�a sanitaria.', '2024-11-05 11:00:00', 4, 2, 47),
('Jornada de Derecho Penal', 'Una jornada dedicada a los estudios y casos recientes en el derecho penal.', '2024-12-01 09:00:00', 3, 4, 36),
('Conferencia de Literatura', 'Conferencia sobre las nuevas tendencias en literatura y cr�tica literaria.', '2024-08-25 15:00:00', 5, 5, 16);

-- Tabla Usuarios
INSERT INTO Usuarios (Nombre, ApellidoPaterno, ApellidoMaterno, Correo, Contrase�a, RolID, DependenciaID) VALUES
('Juan', 'P�rez', 'G�mez', 'juan.perez@example.com', 'password123', 1, 1),
('Mar�a', 'L�pez', 'Mart�nez', 'maria.lopez@example.com', 'password456', 2, 2),
('Carlos', 'Ram�rez', 'Hern�ndez', 'carlos.ramirez@example.com', 'password789', 3, 3),
('Ana', 'Gonz�lez', 'S�nchez', 'ana.gonzalez@example.com', null, 4, null),
('Luis', 'Fern�ndez', 'D�az', 'luis.fernandez@example.com', 'password654', 5, 5);

-- Tabla Butacas
INSERT INTO Butacas (ButacaID, RecintoID) VALUES
(1, 1),
(1, 2),
(1, 3), --Funcion que al dar de alta un recinto genere sus butacas
(1, 4),
(1, 5);

-- Tabla Boletos
INSERT INTO Boletos (Descripcion, Dise�o, CodigoBarras, UsuarioID, EventoID, RecintoID, ButacaID) VALUES
('Congreso de Matematicas', NULL, NULL, 1, 1, 1, 1),
('Simposio de Ciencias Qu�micas', NULL, NULL, 2, 2, 2, 1),
('Seminario de Medicina', NULL, NULL, 3, 3, 4, 1),
('Jornada de Derecho Penal', NULL, NULL, 4, 4, 3, 1),
('Conferencia de Literatura', NULL, NULL, 5, 5, 3, 1);

-- Tabla Pagos
INSERT INTO Pagos (Descripcion, Monto, Fecha, MetodoPagoID, BoletoID) VALUES
('Pago Boleto 1 Congreso de Matematicas', 150.00, '2024-05-01 12:00:00', 1, 1),
('Pago Boleto 2 Simposio de Ciencias Qu�micas', 50.00, '2024-05-02 13:00:00', 2, 2),
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