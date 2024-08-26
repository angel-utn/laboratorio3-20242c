Create Database AcademiaMusica
Go
Use AcademiaMusica
Go
Create Table Estudiantes(
    IDEstudiante bigint not null primary key identity (1, 1),
    Apellidos varchar(100) not null,
    Nombres varchar(100) not null,
    FechaNacimiento date not null,
    Ciudad varchar(50),
    FechaIngreso date not null default(getdate())
)
Go
Create Table Tipos_Instrumentos(
    IDTipoInstrumento tinyint not null primary key identity (1, 1),
    NombreTipo varchar(50) not null
)
Go
Create Table Instrumentos(
    IDInstrumento smallint not null primary key identity(1,1),
    Nombre varchar(50) not null,
    IDTipoInstrumento tinyint not null foreign key references Tipos_Instrumentos(IDTipoInstrumento),
    Codigo varchar(10) not null unique
)
Go
Create Table Instrumentos_x_Estudiante(
    IDEstudiante bigint not null foreign key references Estudiantes(IDEstudiante),
    IDInstrumento smallint not null foreign key references Instrumentos(IDInstrumento),
    primary key (IDEstudiante, IDInstrumento)
)

