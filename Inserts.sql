USE eventosUanl_bd

-- Tabla Recintos
--INSERT INTO Recintos (Recinto, Direccion, Capacidad) VALUES
--('Auditorio Universitario', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicolás de los Garza', 2000),
--('Teatro Universitario', 'Av. Alfonso Reyes 4000, Col. Regina, Monterrey', 1200),
--('Biblioteca Universitaria Raúl Rangel Frías', 'Av. Alfonso Reyes 4000, Col. Regina, Monterrey', 300),
--('Centro de Investigación y Desarrollo en Ciencias de la Salud', 'Dr. Carlos Canseco 110, Col. Mitras Centro, Monterrey', 500),
--('Estadio Gaspar Mass', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicolás de los Garza', 15000);

--RECINTOS
EXEC sp_AgregarRecinto 'Auditorio Universitario', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicolás de los Garza', 2000;
EXEC sp_AgregarRecinto 'Biblioteca Universitaria Raúl Rangel Frías', 'Av. Alfonso Reyes 4000, Col. Regina, Monterrey', 300;
EXEC sp_AgregarRecinto 'Centro de Internacionalización', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicolás de los Garza', 500;
EXEC sp_AgregarRecinto 'Centro de Investigación y Desarrollo en Ciencias de la Salud', 'Dr. Carlos Canseco 110, Col. Mitras Centro, Monterrey', 500;
EXEC sp_AgregarRecinto 'Estadio Gaspar Mass', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicolás de los Garza', 15000;
EXEC sp_AgregarRecinto 'Estadio Universitario', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicolás de los Garza', 41000;
EXEC sp_AgregarRecinto 'Hospital Universitario "Dr. José Eleuterio González"', 'Madero y Gonzalitos s/n, Mitras Centro, 64460 Monterrey, N.L.', 1000;
EXEC sp_AgregarRecinto 'Teatro Universitario', 'Av. Alfonso Reyes 4000, Col. Regina, Monterrey', 1200;
EXEC sp_AgregarRecinto 'Recinto Virtual UANLe', 'NA', 1000;

-- Tabla Dependencias
INSERT INTO Dependencias (Dependencia) VALUES
('UANLe - Dirección de Educación a Distancia'),
('CEI - Centro de Idiomas'),
('CICSA - Centro de Investigación en Ciencias de la Salud'),
('CIMAV - Centro de Investigación en Materiales Avanzados'),
('CIPA - Centro de Investigación en Producción Agropecuaria'),
('CIQA - Centro de Investigación en Química Aplicada'),
('CIE - Centro de Investigaciones Económicas'),
('CIDEB - Centro de Investigaciones y Desarrollo de Educación Bilingüe'),
('CIDICS - Centro de Investigación y Desarrollo en Ciencias de la Salud'),
('CIDE - Centro de Investigación y Desarrollo de la Educación'),
('CIHR - Centro de Información de Historia Regional'),
('CIIDIT - Centro de Innovación, Investigación y Desarrollo en Ingeniería y Tecnología'),
('CESU - Centro de Estudios sobre la Universidad'),
('CECLE - Centro de Estudios y Certificación de Lenguas Extranjeras'),
('CTT - Centro de Transferencia Tecnológica'),
('IBT - Instituto de Biotecnología'),
('IIC - Instituto de Ingeniería Civil'),
('I2T2 - Instituto de Innovación y Transferencia de Tecnología'),
('IIMM - Instituto de Investigación en Metalurgia y Materiales'),
('IIS - Instituto de Investigación Social'),
('IFM - Instituto de Física y Matemáticas'),
('IIJ - Instituto de Investigaciones Jurídicas'),
('IIDE - Instituto de Investigación y Desarrollo de la Educación'),
('CAFU - Centro de Acondicionamiento Físico Universitario'),
('CASE - Centro de Apoyo y Servicios Estudiantiles'),
('CEMED - Centro de Medios'),
('CICM - Centro de Idiomas y Cultura de Monterrey'),
('Editorial Universitaria'),
('Hospital Universitario "Dr. José Eleuterio González"'),
('Museo de Ciencias Naturales'),
('Museo de Historia Mexicana'),
('Parque Zoológico y Botánico "La Pastora"'),
('FARQ - Facultad de Arquitectura'),
('FAE - Facultad de Artes Escénicas'),
('FAV - Facultad de Artes Visuales'),
('FCB - Facultad de Ciencias Biológicas'),
('FCC - Facultad de Ciencias de la Comunicación'),
('FCT - Facultad de Ciencias de la Tierra'),
('FCFM - Facultad de Ciencias Físico Matemáticas'),
('FCF - Facultad de Ciencias Forestales'),
('FCPyRI - Facultad de Ciencias Políticas y Relaciones Internacionales'),
('FACPYA - Facultad de Contaduría Pública y Administración'),
('FACDYC - Facultad de Derecho y Criminología'),
('FACDYC - Facultad de Economía'),
('FAEN - Facultad de Enfermería'),
('FFyL - Facultad de Filosofía y Letras'),
('FIME - Facultad de Ingeniería Mecánica y Eléctrica'),
('FM - Facultad de Medicina'),
('FMVZ - Facultad de Medicina Veterinaria y Zootecnia'),
('FAMUS - Facultad de Música'),
('FO - Facultad de Odontología'),
('FOD - Facultad de Organización Deportiva'),
('FPsi - Facultad de Psicología'),
('FASPYN - Facultad de Salud Pública y Nutrición'),
('FTSDH - Facultad de Trabajo Social y Desarrollo Humano'),
('FCQ - Facultad de Ciencias Químicas'),
('FIC - Facultad de Ingeniería Civil'),
('FIA - Facultad de Ingeniería Agropecuaria'),
('NA');

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
('Carlos', 'Garcia', 'Herrera', 'carlos@gmail.com', 'Carlos1', 1, 59),
('María', 'López', 'Martínez', 'maria@gmail.com', 'Maria1', 2, 2),
('Carlos', 'Ramírez', 'Hernández', 'carlos.ramirez@gmail.com', 'password789', 3, 3),
('Ana', 'González', 'Sánchez', 'ana.gonzalez@gmail.com', null, 4, 2),
('Luis', 'Fernández', 'Díaz', 'luis.fernandez@gmail.com', 'password654', 5, 5);

-- Tabla Butacas
--INSERT INTO Butacas (ButacaID, RecintoID) VALUES
--(1, 1),
--(1, 2),
--(1, 3), --Funcion que al dar de alta un recinto genere sus butacas
--(1, 4),
--(1, 5);

-- Tabla Boletos
--INSERT INTO Boletos (Descripcion, Diseño, CodigoBarras, UsuarioID, EventoID, RecintoID, ButacaID) VALUES
--('Congreso de Matematicas', NULL, NULL, 1, 1, 1, 1),
--('Simposio de Ciencias Químicas', NULL, NULL, 2, 2, 2, 1),
--('Seminario de Medicina', NULL, NULL, 3, 3, 4, 1),
--('Jornada de Derecho Penal', NULL, NULL, 4, 4, 3, 1),
--('Conferencia de Literatura', NULL, NULL, 5, 5, 3, 1);

-- Tabla Pagos
--INSERT INTO Pagos (Descripcion, Monto, Fecha, MetodoPagoID, BoletoID) VALUES
--('Pago Boleto 1 Congreso de Matematicas', 150.00, '2024-05-01 12:00:00', 1, 1),
--('Pago Boleto 2 Simposio de Ciencias Químicas', 50.00, '2024-05-02 13:00:00', 2, 2),
--('Pago Boleto 3 Seminario de Medicina', 75.00, '2024-05-03 14:00:00', 3, 3),
--('Pago Boleto 4 Jornada de Derecho Penal', 30.00, '2024-05-04 15:00:00', 4, 4),
--('Pago Boleto 5 Conferencia de Literatura', 20.00, '2024-05-05 16:00:00', 5, 5);

-- Tabla Asistencia
--INSERT INTO Asistencia (EventoID, BoletoID) VALUES
--(1, 1),
--(2, 2),
--(3, 3),
--(4, 4),
--(5, 5);

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