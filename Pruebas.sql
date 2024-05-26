EXEC sp_MotrarEventos

EXEC sp_AgregarEvento 'Bisontes vs Lechuzas','El esperado partido de fútbol americano entre las facultades de los Bisontes y las Lechuzas promete ser un emocionante enfrentamiento lleno de acción y espíritu deportivo. Este evento es una de las principales atracciones de la temporada universitaria, donde ambos equipos competirán por la gloria y el orgullo de sus respectivas facultades.',5,1,24

EXEC sp_MotrarEventos

EXEC sp_EliminarDependencia 

EXEC sp_AgregarRecinto 

EXEC sp_ModificarRecinto

EXEC sp_AgregarRecinto 'Recinto Prueba50', 'Jazmin 140', 50



EXEC sp_EliminarRecinto 1008


EXEC sp_MotrarUsuarios

EXEC sp_AgregarUsuario 'ADMIN CARLOS','GARCIA','HERRERA','carloseduardogarher@gmail.com','Carlos1',1,2

EXEC sp_EliminarUsuario 1002