USE eventosUanl_bd
--AGREGAR----------------------------------------------------------------------------
--SP para el registro de un Nuevo Evento
CREATE OR ALTER PROCEDURE sp_AgregarEvento
	@Titulo varchar(100),
	@Descripcion varchar(max),
	@Fecha datetime,
	@RecintoID int,
	@DependenciaID int,
	@CategoriaID int
AS

BEGIN
	--Insertamos el Evento en su Tabla Correspondiente
	INSERT INTO Eventos (Titulo, Descripcion, Fecha, RecintoID, DependenciaID, CategoriaID) VALUES(@Titulo,@Descripcion,@Fecha,@RecintoID,@DependenciaID,@CategoriaID)
END
GO

--SP para el registro de un Nuevo Costo
CREATE OR ALTER PROCEDURE sp_AgregarCosto
	@EventoID int,
	@Descripcion varchar(100),
	@Costo money
AS

BEGIN
	--Insertamos el Costo en su Tabla Correspondiente
	INSERT INTO Costos (EventoID, Descripcion, Costo) VALUES(@EventoID,@Descripcion,@Costo)
END
GO


--SP para nueva dependencia
CREATE OR ALTER PROCEDURE sp_AgregarDependencia
	@Dependencia varchar(100)
AS

BEGIN
	--Insertamos la dependencia en su Tabla Correspondiente
	INSERT INTO Dependencias(Dependencia) VALUES(@Dependencia)
END
GO


--SP para nuevo Recinto
	CREATE OR ALTER PROCEDURE sp_AgregarRecinto
			@Recinto varchar(100),
			@Direccion varchar(100),
			@Capacidad int
		AS
		BEGIN	
		DECLARE @NuevoRecintoID int
		DECLARE @i int = 0
			--Insertamos el recinto en su Tabla Correspondiente
			INSERT INTO Recintos(Recinto,Direccion,Capacidad) VALUES(@Recinto,@Direccion,@Capacidad)
			--CREAR N REGISTROS EN LA TABLA BUTACAS
			SET @NuevoRecintoID = IDENT_CURRENT('Recintos')
			WHILE (@i<@Capacidad) BEGIN
				INSERT INTO Butacas(RecintoID,ButacaID) VALUES(@NuevoRecintoID,@i+1)
				SET  @i=@i+1
			END
		END;
	GO


--Agregar Nuevo Usuario
CREATE OR ALTER PROCEDURE sp_AgregarUsuario
	@Nombre varchar(100),
	@ApellidoPaterno varchar(100),
	@ApellidoMaterno varchar(100),
	@Correo varchar(100),
	@Contraseña varchar(100),
	@RolID int,
	@DependenciaID int
AS

BEGIN
	--Insertamos al usario en su Tabla Correspondiente
	INSERT INTO Usuarios(Nombre,ApellidoPaterno,ApellidoMaterno,Correo,Contraseña,RolID,DependenciaID) VALUES(@Nombre,@ApellidoPaterno,@ApellidoMaterno,@Correo,@Contraseña,@RolID,@DependenciaID)
END
GO



--EXTRAS---------------------

--SP para Mostrar los Eventos Disponibles
CREATE OR ALTER PROCEDURE sp_MotrarEventos

AS

BEGIN
	SELECT Eventos.EventoID, Eventos.Titulo, Categorias.Categoria, Dependencias.Dependencia, Recintos.Recinto, Eventos.Fecha, Eventos.Descripcion FROM Eventos
	JOIN Categorias ON Eventos.CategoriaID=Categorias.CategoriaID
	JOIN Recintos ON Eventos.RecintoID=Recintos.RecintoID
	JOIN Dependencias ON Eventos.DependenciaID=Dependencias.DependenciaID
END
GO


--SP para Mostrar los Usuarios Disponibles
CREATE OR ALTER PROCEDURE sp_MotrarUsuarios

AS

BEGIN
	SELECT Usuarios.UsuarioID, Usuarios.Nombre,  Usuarios.ApellidoPaterno, Usuarios.ApellidoMaterno,Usuarios.Correo, Dependencias.Dependencia, Roles.Rol FROM Usuarios
	JOIN Dependencias ON Usuarios.DependenciaID=Dependencias.DependenciaID
	JOIN Roles ON Usuarios.RolID=Roles.RolID
END
GO








--ACTUALIZAR-------------------------------

--SP para actualizar un Nuevo Evento
CREATE OR ALTER PROCEDURE sp_ModificarEvento
	@Titulo varchar(100),
	@Descripcion varchar(max),
	@Fecha datetime,
	@RecintoID int,
	@DependenciaID int,
	@CategoriaID int,
	@EventoID int
AS

BEGIN
	UPDATE Eventos SET Titulo=@Titulo, Descripcion=@Descripcion, Fecha=@Fecha, RecintoID=@RecintoID, DependenciaID=@DependenciaID, CategoriaID=@CategoriaID WHERE EventoID=@EventoID
END
GO



--SP para actualizar un Costo Nuevo
CREATE OR ALTER PROCEDURE sp_ModificarCosto
	@Descripcion varchar(max),
	@Costo money,
	@CostoID int
AS

BEGIN
	UPDATE Costos SET Descripcion=@Descripcion, Costo=@Costo WHERE CostoID=@CostoID
END

GO



--SP Para Actualizar una Dependencia
CREATE OR ALTER PROCEDURE sp_ModificarDependencia
	@Dependencia varchar(100),
	@DependenciaID int
AS

BEGIN
	UPDATE Dependencias SET Dependencia=@Dependencia WHERE DependenciaID=@DependenciaID
END

GO



--Sp para Actualizar un Recinto
CREATE OR ALTER PROCEDURE sp_ModificarRecinto
	@RecintoID int,
	@Recinto varchar(100),
	@Direccion varchar(100),
	@Capacidad int
AS

BEGIN
	--Eliminamos las butacas anteriores
	DELETE FROM Butacas WHERE RecintoID=@RecintoID
	DECLARE @i int = 0
		--CREAR N REGISTROS EN LA TABLA BUTACAS
		WHILE (@i<@Capacidad) BEGIN
			INSERT INTO Butacas(RecintoID,ButacaID) VALUES(@RecintoID,@i+1)
			SET  @i=@i+1
		END
	UPDATE Recintos SET Recinto=@Recinto,Direccion=@Direccion,Capacidad=Capacidad WHERE RecintoID=@RecintoID
END

GO




--DELETEEEE------------


CREATE OR ALTER PROCEDURE sp_EliminarEvento
			@EventoID int
		AS

		BEGIN	
			DELETE FROM Costos WHERE EventoID=@EventoID
			DELETE FROM Eventos WHERE EventoID=@EventoID
		END;
	GO


	CREATE OR ALTER PROCEDURE sp_EliminarDependencia
			@DependenciaID int
		AS

		BEGIN	
			DECLARE @LimiteE INT
			DECLARE @i INT= 0
			DECLARE @EventoID INT
			DECLARE @UsuarioID INT
			DECLARE @LimiteU INT
			DECLARE @i2 INT= 0

			--ELIMINA TODOS LOS USUARIOS DE ESA DEPENDENCIA
			SELECT @LimiteU = COUNT(*) FROM Usuarios WHERE (DependenciaID=@DependenciaID);
			SELECT TOP 1 @UsuarioID = UsuarioID FROM Usuarios WHERE (DependenciaID=@DependenciaID);
			WHILE (@i<@LimiteU) BEGIN
				EXEC sp_EliminarUsuario @UsuarioID
				SELECT TOP 1 @UsuarioID = UsuarioID FROM Usuarios WHERE (DependenciaID=@DependenciaID);
				SET  @i2=@i2+1
			END
			--ELIMINA TODOS LOS EVENTOS DE ESA DEPENDENCIA
			SELECT @LimiteE = COUNT(*) FROM Eventos WHERE (DependenciaID=@DependenciaID);
			SELECT TOP 1 @EventoID = EventoID FROM Eventos WHERE (DependenciaID=@DependenciaID);
			WHILE (@i<@LimiteE) BEGIN
				EXEC sp_EliminarEvento @EventoID;
				SELECT TOP 1 @EventoID = EventoID FROM Eventos WHERE DependenciaID = @DependenciaID AND EventoID > @EventoID;
				SET  @i=@i+1
			END
			DELETE FROM Dependencias WHERE DependenciaID=@DependenciaID 
		END;
	GO



--SP para eliminar Recinto
CREATE OR ALTER PROCEDURE sp_EliminarRecinto
	@RecintoID int
	AS

	BEGIN
	DELETE FROM Butacas WHERE RecintoID=@RecintoID

	--Eliminamos todos los eventos por medio del procedude
	DECLARE @Limite INT
	DECLARE @i INT= 0
	DECLARE @EventoID INT
	SELECT @Limite = COUNT(*) FROM Eventos WHERE (RecintoID=@RecintoID);
	SELECT TOP 1 @EventoID = EventoID FROM Eventos WHERE (RecintoID=@RecintoID);
	WHILE (@i<@Limite) BEGIN
		EXEC sp_EliminarEvento @EventoID;
		SELECT TOP 1 @EventoID = EventoID FROM Eventos WHERE RecintoID = @RecintoID AND EventoID > @EventoID;
		SET  @i=@i+1
	END
	DELETE FROM Recintos WHERE RecintoID=@RecintoID 
	END
GO

--SP para Eliminar Usuarios
CREATE OR ALTER PROCEDURE sp_EliminarUsuario
	@UsuarioID INT
AS

BEGIN
	--ANTES DE ELIMINAR UN USUARIO, DEBEMOS DE ELIMINAR TODAS LAS REFERENCIAS QUE TIENE EN LAS DEMAS TABLAS
	--ES DECIR, LOS BOLETOS, PERO NO SE IMPLEMENTO EL SISTEMA DE BOLETOS
	DELETE FROM Usuarios WHERE UsuarioID=@UsuarioID
END
GO


--Eliminar Evento
