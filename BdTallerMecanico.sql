use master
go
if exists(select name from sys.databases where name = 'Diagrama' )
begin
	drop database Diagrama 
end
go
create database Diagrama
go
use Diagrama
go

CREATE TABLE Clientes (
    DNI VARCHAR(20) PRIMARY KEY,
    Apellidos VARCHAR(100),
    Nombre VARCHAR(100),
    Direccion VARCHAR(255),
    CP VARCHAR(10),
    Poblacion VARCHAR(100),
    Telefono VARCHAR(20),
    Telefono2 VARCHAR(20)
);

CREATE TABLE Coches (
    Matricula VARCHAR(20) PRIMARY KEY,
    DNIPropietario VARCHAR(20),
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Color VARCHAR(30),
    Km INT,
    FOREIGN KEY (DNIPropietario) REFERENCES Clientes(DNI)
);

CREATE TABLE Reparaciones (
    NumReparacion INT PRIMARY KEY,
    Matricula VARCHAR(20),
    Descripcion TEXT,
    FechaEntrada DATE,
    FechaSalida DATE,
    Horas INT,
    FOREIGN KEY (Matricula) REFERENCES Coches(Matricula)
);

CREATE TABLE Piezas (
    Referencia VARCHAR(50) PRIMARY KEY,
    Descripcion TEXT,
    Precio DECIMAL(10,2),
    Stock INT
);

CREATE TABLE DetallesReparacion (
    NumReparacion INT,
    Referencia VARCHAR(50),
    Unidades INT,
    PRIMARY KEY (NumReparacion, Referencia),
    FOREIGN KEY (NumReparacion) REFERENCES Reparaciones(NumReparacion),
    FOREIGN KEY (Referencia) REFERENCES Piezas(Referencia)
);

