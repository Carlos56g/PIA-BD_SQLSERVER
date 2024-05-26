USE eventosUanl_bd

-- Tabla Recintos
--INSERT INTO Recintos (Recinto, Direccion, Capacidad) VALUES
--('Auditorio Universitario', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicol�s de los Garza', 2000),
--('Teatro Universitario', 'Av. Alfonso Reyes 4000, Col. Regina, Monterrey', 1200),
--('Biblioteca Universitaria Ra�l Rangel Fr�as', 'Av. Alfonso Reyes 4000, Col. Regina, Monterrey', 300),
--('Centro de Investigaci�n y Desarrollo en Ciencias de la Salud', 'Dr. Carlos Canseco 110, Col. Mitras Centro, Monterrey', 500),
--('Estadio Gaspar Mass', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicol�s de los Garza', 15000);

--RECINTOS
EXEC sp_AgregarRecinto 'Auditorio Universitario', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicol�s de los Garza', 2000;
EXEC sp_AgregarRecinto 'Biblioteca Universitaria Ra�l Rangel Fr�as', 'Av. Alfonso Reyes 4000, Col. Regina, Monterrey', 300;
EXEC sp_AgregarRecinto 'Centro de Internacionalizaci�n', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicol�s de los Garza', 500;
EXEC sp_AgregarRecinto 'Centro de Investigaci�n y Desarrollo en Ciencias de la Salud', 'Dr. Carlos Canseco 110, Col. Mitras Centro, Monterrey', 500;
EXEC sp_AgregarRecinto 'Estadio Gaspar Mass', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicol�s de los Garza', 15000;
EXEC sp_AgregarRecinto 'Estadio Universitario', 'Av. Pedro de Alba s/n, Ciudad Universitaria, San Nicol�s de los Garza', 41000;
EXEC sp_AgregarRecinto 'Hospital Universitario "Dr. Jos� Eleuterio Gonz�lez"', 'Madero y Gonzalitos s/n, Mitras Centro, 64460 Monterrey, N.L.', 1000;
EXEC sp_AgregarRecinto 'Teatro Universitario', 'Av. Alfonso Reyes 4000, Col. Regina, Monterrey', 1200;
EXEC sp_AgregarRecinto 'Recinto Virtual UANLe', 'NA', 1000;

-- Tabla Dependencias
INSERT INTO Dependencias (Dependencia) VALUES
('UANLe - Direcci�n de Educaci�n a Distancia'),
('CEI - Centro de Idiomas'),
('CICSA - Centro de Investigaci�n en Ciencias de la Salud'),
('CIMAV - Centro de Investigaci�n en Materiales Avanzados'),
('CIPA - Centro de Investigaci�n en Producci�n Agropecuaria'),
('CIQA - Centro de Investigaci�n en Qu�mica Aplicada'),
('CIE - Centro de Investigaciones Econ�micas'),
('CIDEB - Centro de Investigaciones y Desarrollo de Educaci�n Biling�e'),
('CIDICS - Centro de Investigaci�n y Desarrollo en Ciencias de la Salud'),
('CIDE - Centro de Investigaci�n y Desarrollo de la Educaci�n'),
('CIHR - Centro de Informaci�n de Historia Regional'),
('CIIDIT - Centro de Innovaci�n, Investigaci�n y Desarrollo en Ingenier�a y Tecnolog�a'),
('CESU - Centro de Estudios sobre la Universidad'),
('CECLE - Centro de Estudios y Certificaci�n de Lenguas Extranjeras'),
('CTT - Centro de Transferencia Tecnol�gica'),
('IBT - Instituto de Biotecnolog�a'),
('IIC - Instituto de Ingenier�a Civil'),
('I2T2 - Instituto de Innovaci�n y Transferencia de Tecnolog�a'),
('IIMM - Instituto de Investigaci�n en Metalurgia y Materiales'),
('IIS - Instituto de Investigaci�n Social'),
('IFM - Instituto de F�sica y Matem�ticas'),
('IIJ - Instituto de Investigaciones Jur�dicas'),
('IIDE - Instituto de Investigaci�n y Desarrollo de la Educaci�n'),
('CAFU - Centro de Acondicionamiento F�sico Universitario'),
('CASE - Centro de Apoyo y Servicios Estudiantiles'),
('CEMED - Centro de Medios'),
('CICM - Centro de Idiomas y Cultura de Monterrey'),
('Editorial Universitaria'),
('Hospital Universitario "Dr. Jos� Eleuterio Gonz�lez"'),
('Museo de Ciencias Naturales'),
('Museo de Historia Mexicana'),
('Parque Zool�gico y Bot�nico "La Pastora"'),
('FARQ - Facultad de Arquitectura'),
('FAE - Facultad de Artes Esc�nicas'),
('FAV - Facultad de Artes Visuales'),
('FCB - Facultad de Ciencias Biol�gicas'),
('FCC - Facultad de Ciencias de la Comunicaci�n'),
('FCT - Facultad de Ciencias de la Tierra'),
('FCFM - Facultad de Ciencias F�sico Matem�ticas'),
('FCF - Facultad de Ciencias Forestales'),
('FCPyRI - Facultad de Ciencias Pol�ticas y Relaciones Internacionales'),
('FACPYA - Facultad de Contadur�a P�blica y Administraci�n'),
('FACDYC - Facultad de Derecho y Criminolog�a'),
('FACDYC - Facultad de Econom�a'),
('FAEN - Facultad de Enfermer�a'),
('FFyL - Facultad de Filosof�a y Letras'),
('FIME - Facultad de Ingenier�a Mec�nica y El�ctrica'),
('FM - Facultad de Medicina'),
('FMVZ - Facultad de Medicina Veterinaria y Zootecnia'),
('FAMUS - Facultad de M�sica'),
('FO - Facultad de Odontolog�a'),
('FOD - Facultad de Organizaci�n Deportiva'),
('FPsi - Facultad de Psicolog�a'),
('FASPYN - Facultad de Salud P�blica y Nutrici�n'),
('FTSDH - Facultad de Trabajo Social y Desarrollo Humano'),
('FCQ - Facultad de Ciencias Qu�micas'),
('FIC - Facultad de Ingenier�a Civil'),
('FIA - Facultad de Ingenier�a Agropecuaria'),
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
('Carlos', 'Garcia', 'Herrera', 'carlos@gmail.com', 'Carlos1', 1, 59),
('Mar�a', 'L�pez', 'Mart�nez', 'maria@gmail.com', 'Maria1', 2, 2),
('Carlos', 'Ram�rez', 'Hern�ndez', 'carlos.ramirez@gmail.com', 'password789', 3, 3),
('Ana', 'Gonz�lez', 'S�nchez', 'ana.gonzalez@gmail.com', null, 4, 2),
('Luis', 'Fern�ndez', 'D�az', 'luis.fernandez@gmail.com', 'password654', 5, 5);

-- Tabla Butacas
--INSERT INTO Butacas (ButacaID, RecintoID) VALUES
--(1, 1),
--(1, 2),
--(1, 3), --Funcion que al dar de alta un recinto genere sus butacas
--(1, 4),
--(1, 5);

-- Tabla Boletos
--INSERT INTO Boletos (Descripcion, Dise�o, CodigoBarras, UsuarioID, EventoID, RecintoID, ButacaID) VALUES
--('Congreso de Matematicas', NULL, NULL, 1, 1, 1, 1),
--('Simposio de Ciencias Qu�micas', NULL, NULL, 2, 2, 2, 1),
--('Seminario de Medicina', NULL, NULL, 3, 3, 4, 1),
--('Jornada de Derecho Penal', NULL, NULL, 4, 4, 3, 1),
--('Conferencia de Literatura', NULL, NULL, 5, 5, 3, 1);

-- Tabla Pagos
--INSERT INTO Pagos (Descripcion, Monto, Fecha, MetodoPagoID, BoletoID) VALUES
--('Pago Boleto 1 Congreso de Matematicas', 150.00, '2024-05-01 12:00:00', 1, 1),
--('Pago Boleto 2 Simposio de Ciencias Qu�micas', 50.00, '2024-05-02 13:00:00', 2, 2),
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