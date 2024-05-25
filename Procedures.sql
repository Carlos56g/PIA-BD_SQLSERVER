

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





--SP para Registrar un nuevo Recinto


--SP para Mostrar los Eventos Disponibles
CREATE OR ALTER PROCEDURE sp_MotrarEventos

AS

BEGIN
	SELECT Eventos.EventoID, Eventos.Titulo, Categorias.Categoria, Dependencias.Dependencia, Recintos.Recinto, Eventos.Fecha, Eventos.Descripcion, Costos.Costo FROM Eventos
	JOIN Categorias ON Eventos.CategoriaID=Categorias.CategoriaID
	JOIN Recintos ON Eventos.RecintoID=Recintos.RecintoID
	JOIN Dependencias ON Eventos.DependenciaID=Dependencias.DependenciaID
	JOIN Costos ON Eventos.EventoID=Costos.EventoID
END
GO



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



CREATE OR ALTER PROCEDURE sp_EliminarEvento
	@EventoID int
AS

BEGIN
	DELETE FROM Costos WHERE EventoID=@EventoID
	DELETE FROM Eventos WHERE EventoID=@EventoID
END

GO


--SP para Mostrar las Butacas





--SP