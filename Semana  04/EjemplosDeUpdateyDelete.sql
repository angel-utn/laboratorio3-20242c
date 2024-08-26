-- Modificaciones
Set Dateformat 'DMY'
Update Estudiantes Set Apellidos='Velez', FechaNacimiento='03/09/2000'
Where IDEstudiante = 1

Update Estudiantes Set Apellidos='Perez'
Where IDEstudiante = 2

-- Eliminaciones
Delete From Estudiantes Where IDEstudiante = 1