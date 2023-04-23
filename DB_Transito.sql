create database Act1.1
GO 
USE Act1.1
GO
CREATE TABLE TipoInfraccion(
    IDTipoInfraccion SMALLINT not null PRIMARY KEY,
    Infraccion VARCHAR (75) not null,
    fecha DATE not null,
    Localidad VARCHAR(25)
)
GO
CREATE TABLE Vehiculo(
    Patente VARCHAR(25) not null PRIMARY KEY,
    Marca VARCHAR(25) not null
)

GO
CREATE TABLE DATOS(
    Legajo SMALLINT not null PRIMARY KEY,
    Apellido VARCHAR(25) not null,
    Nombre VARCHAR(25) not null,
    FechaNacimiento date not null,
    FechaIngreso date not null,
)

GO
CREATE TABLE DatosContacto(
    IDcontacto TINYINT not null PRIMARY KEY,
    Email varchar (25) null,
    Telefono VARCHAR(25)
)

GO
CREATE TABLE AgenteTransito(
    Legajo SMALLINT not null PRIMARY KEY,
    Sueldo money not null,
    IDcontacto TINYINT not null FOREIGN KEY REFERENCES DatosContacto (IDcontacto),
    Activo BIT CHECK,
)

go
create table Infraccion(
    Codigo VARCHAR(25) not null PRIMARY KEY,
    IDTipoInfraccion SMALLINT not null FOREIGN KEY REFERENCES TipoInfraccion (IDTipoInfraccion),
    Importe money not null,
    Patente VARCHAR(25) not null FOREIGN KEY REFERENCES Vehiculo (Patente),
    Radar bit not NULL,
    LegajoAgente VARCHAR (25) not null FOREIGN KEY REFERENCES () CHECK