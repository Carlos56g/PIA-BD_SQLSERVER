EXEC sp_MotrarEventos

EXEC sp_AgregarEvento 'Bisontes vs Lechuzas','El esperado partido de fútbol americano entre las facultades de los Bisontes y las Lechuzas promete ser un emocionante enfrentamiento lleno de acción y espíritu deportivo. Este evento es una de las principales atracciones de la temporada universitaria, donde ambos equipos competirán por la gloria y el orgullo de sus respectivas facultades.',5,1,24

EXEC sp_MotrarEventos

CREATE TABLE Prueba(
	ID int primary key identity,
	Titulo varchar(100) not null,
	Descripcion varchar(max) not null,
	)

