Create Database Universidad
Go
Use Universidad
Go
Create Table Carreras(
    IDCarrera smallint not null primary key identity(10, 1),
    Nombre varchar(50) not null,
    DuracionAños tinyint not null check (DuracionAños >= 1)
)
Go
Alter Table Carreras
Add CantidadHoras smallint not null default (1000) 
Go
Alter Table Carreras
Add Constraint CHK_CantidadHoras Check (CantidadHoras >= 100)
Go
Create Table Alumnos(
    Legajo int primary key not null check(Legajo >= 1),
    Apellidos varchar(50) not null,
    Nombres varchar(50) not null,
    IDCarrera smallint null foreign key references Carreras(IDCarrera)
)

-- Clave única alternativa
Alter Table Alumnos
Add Email varchar(250) not null unique