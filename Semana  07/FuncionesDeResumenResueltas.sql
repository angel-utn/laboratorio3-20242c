-- Los tipos de archivos que fueron compartidos más de una vez con el 
-- permiso con nombre 'Lectura'
Select 
    TA.TipoArchivo, Count(*)
From TiposArchivos TA
Inner Join Archivos A ON A.IDTipoArchivo = TA.IDTipoArchivo
Inner Join ArchivosCompartidos AC ON A.IDArchivo = AC.IDArchivo
Inner Join Permisos P ON P.IDPermiso = AC.IDPermiso
Where P.Nombre = 'Lectura'
Group By TA.TipoArchivo
Having Count(*) > 1

-- Listar Apellido y Nombre de los usuarios dueños cuyo promedio de tamaño 
-- de los archivos compartidos sea mayor a 500000 bytes. 
-- Ordenando el tamaño de forma descendente.

-- +-------------------------+---------------------------+
-- |   Apellido Nombre       | Promedio Archi Compartido |
-- +-------------------------+---------------------------+
-- | Fernández Luis          |       78643200            |
-- | Clarck Adrián           |       35037866            |                    
-- +-------------------------+---------------------------+

Select 
    U.Apellido + ' ' + U.Nombre as ApellidoNombre,
    Avg(A.Tamaño) As PromedioArchiCompartido
From Usuarios U
Inner Join Archivos A ON U.IDUsuario = A.IDUsuarioDueño
Inner Join ArchivosCompartidos AC ON AC.IDArchivo = A.IDArchivo
Group By U.Apellido + ' ' + U.Nombre
Having Avg(A.Tamaño) > 500000
Order By PromedioArchiCompartido Desc

-- Resolución Alejandro
SELECT CONCAT (U.Apellido, ' ', U.Nombre) AS [Apellido Nombre], AVG(A.Tamaño) [Promedio de tamaños de archivo compartidos] FROM Archivos AS A
	INNER JOIN ArchivosCompartidos AS AC
		ON A.IDArchivo = AC.IDArchivo
	INNER JOIN Usuarios AS U
		ON A.IDUsuarioDueño = U.IDUsuario
			GROUP BY U.Apellido, U.Nombre
			HAVING AVG(A.Tamaño) > 500000
			ORDER BY [Promedio de tamaños de archivo compartidos] DESC