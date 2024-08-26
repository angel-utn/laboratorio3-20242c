-- Inserta estudiantes
Set Dateformat 'DMY'

Insert Into Estudiantes(Apellidos, Nombres, FechaNacimiento)
Values ('Jimenez', 'Valeria', '02/02/1990')

Insert Into Estudiantes(Apellidos, Nombres, FechaNacimiento, FechaIngreso)
Values ('Perez', 'Pablo', '12/11/1995', '10/10/2000')

Insert Into Estudiantes(Apellidos, Nombres, FechaNacimiento, FechaIngreso)
Values 
('Martinez', 'Milagros', '01/08/2000','11/10/2022'),
('Martinez', 'Mariana', '01/08/2000','11/10/2022'),
('Martinez', 'Martin', '01/08/2000','11/10/2022')

-- Tipos de instrumento
INSERT INTO Tipos_Instrumentos (NombreTipo) VALUES
('Cuerda'),
('Viento'),
('Percusión'),
('Teclado'),
('Electrónico');

-- Instrumentos
INSERT INTO Instrumentos (Nombre, IDTipoInstrumento, Codigo) VALUES
('Guitarra', 1, 'GTR001'),
('Flauta', 2, 'FLA002'),
('Batería', 3, 'BAT003'),
('Piano', 4, 'PIA004'),
('Saxofón', 2, 'SAX005'),
('Violín', 1, 'VIO006'),
('Trombón', 2, 'TRO007'),
('Teclado', 4, 'TEC008'),
('Bajo', 1, 'BAS009'),
('Sintetizador', 5, 'SIN010');

-- Instrumentos_x_Estudiante

Insert Into Instrumentos_x_Estudiante(IDEstudiante, IDInstrumento)
Values 
(5, 5),
(5, 6)