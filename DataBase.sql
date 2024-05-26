--CREATE DATABASE eventosUanl_bd

--USE eventosUanl_bd

--Tabla Recintos
CREATE TABLE Recintos(
	RecintoID int primary key identity,
	Recinto varchar(100) not null,
	Direccion varchar(100) not null,
	Capacidad int not null,
)

--Tabla Dependencias
CREATE TABLE Dependencias(
	DependenciaID int primary key identity,
	Dependencia varchar(100) not null,
)

--Tabla Roles
CREATE TABLE Roles(
	RolID int primary key identity,
	Rol varchar(100) not null,
)

--Tabla Categorias
CREATE TABLE Categorias(
	CategoriaID int primary key identity,
	Categoria varchar(100) not null,
)

--Tabla Metodos de Pago
CREATE TABLE MetodosPago(
	MetodoPagoID int primary key identity,
	MetodoPago varchar(100) not null,
)


--Tabla Eventos
CREATE TABLE Eventos(
	EventoID int primary key identity,
	Titulo varchar(100) not null,
	Descripcion varchar(max) not null,
	Fecha datetime not null,
	RecintoID int not null,
	DependenciaID int not null,
	CategoriaID int not null,
	Visible bit
	foreign key (RecintoID) references Recintos(RecintoID),
	foreign key (DependenciaID) references Dependencias(DependenciaID),
	foreign key (CategoriaID) references Categorias(CategoriaID),
)


--Tabla Usuarios
CREATE TABLE Usuarios(
	UsuarioID int primary key identity,
	Nombre varchar(100) not null,
	ApellidoPaterno varchar(100) not null,
	ApellidoMaterno varchar(100),
	Correo varchar(100) not null unique,
	Contraseña varchar(100),
	RolID int not null,
	DependenciaID int not null,
	foreign key (DependenciaID) references Dependencias(DependenciaID),
	foreign key (RolID) references Roles(RolID)
)

--Tabla Butacas
CREATE TABLE Butacas(
	ButacaID int not null,
    RecintoID int not null,
	primary key(ButacaID,RecintoID),
	foreign key (RecintoID) references Recintos(RecintoID),
)

--Tabla Boletos
CREATE TABLE Boletos(
	BoletoID int primary key identity,
	Descripcion varchar(100) not null,
	Diseño varbinary(max),
	CodigoBarras varbinary(max),
	UsuarioID int not null,
	EventoID int not null,
	RecintoID int not null,
	ButacaID int not null,
	foreign key (UsuarioID) references Usuarios(UsuarioID),
	foreign key (EventoID) references Eventos(EventoID),
	foreign key (ButacaID, RecintoID) references Butacas(ButacaID,RecintoID)
)


--Tabla Pagos
CREATE TABLE Pagos(
	PagoID int primary key identity,
	Descripcion varchar(100) not null,
	Monto money not null,
	Fecha datetime not null,
	MetodoPagoID int not null,
	BoletoID int not null,
	foreign key (MetodoPagoID) references MetodosPago(MetodoPagoID),
	foreign key (BoletoID) references Boletos(BoletoID),

)


--Tabla Asistencia
CREATE TABLE Asistencia(
	EventoID int not null,
    BoletoID int not null,
	primary key (EventoID, BoletoID),
	foreign key (EventoID) references Eventos(EventoID),
	foreign key (BoletoID) references Boletos(BoletoID),
)

--Tabla Costos
CREATE TABLE Costos(
	CostoID int primary key identity,
    Costo money not null,
	Descripcion varchar(100) not null,
	EventoID int not null,
	foreign key (EventoID) references Eventos(EventoID),
	constraint  CHK_Costo CHECK (Costo >= 0)
)


