-- Count

-- La cantidad de mediciones
Select Count(*) From Mediciones

-- La cantidad de mediciones en los que lluvia no es null
Select Count(Lluvia) From Mediciones

-- La cantidad de mediciones en los que lluvia no es null
Select Count(*) From MEdiciones Where Lluvia Is not Null

-- La cantidad de ciudades en las que llovió
Select Count(Distinct IDCiudad) From Mediciones Where Lluvia > 0

-- La temperatura promedio de 2022
Select AVG(Temperatura) As PromedioTemperatura2022
 From Mediciones Where Year(FechaHora) = 2022

 Select SUM(Temperatura) / Count(*)  As PromedioTemperatura2022
 From Mediciones Where Year(FechaHora) = 2022

 -- La temperatura promedio de 2020
 Select AVG(Temperatura) As PromedioTemperatura2020
 From Mediciones Where Year(FechaHora) = 2020

 -- La temperatura máxima
 Select MAX(Temperatura) As MaxTemp From Mediciones

-- La temperatura máxima de Argentina
 Select MAX(M.Temperatura) As MaxTemp From Mediciones M
 Inner Join Ciudades C ON C.IDCiudad = M.IDCiudad
 Inner Join Paises P ON P.IDPais = C.IDPais
 Where P.Nombre like 'Argentina'

 -- La fecha más antigua de medición de Uruguay
 Select 
 Cast(Min(M.FechaHora) As Date) As FechaMasAntigua 
 From Mediciones M
 Inner Join Ciudades C ON C.IDCiudad = M.IDCiudad
 Inner Join Paises P ON P.IDPais = C.IDPais
 Where P.Nombre like 'Uruguay'

-- Por cada año y mes, la cantidad de mediciones
Select
    Year(FechaHora) As Año,
    Month(FechaHora) as Mes,
    Count(*) As CantMediciones
From Mediciones
group by Year(FechaHora), Month(FechaHora)
order by CantMediciones desc

-- Cantidad de AlertasMeteorológicos por Nivel de Peligrosidad y Año
Select NV.Nombre, Year(M.FechaHora) As Año, Count(*) as CantidadAlertas
From Mediciones M
Inner Join AlertasMeteorologicos AM ON AM.IDMedicion = M.ID
Inner Join NivelesPeligrosidad NV ON NV.ID = AM.IDNivelPeligrosidad
Group By NV.Nombre, Year(M.FechaHora), NV.Severidad
Order by Año asc, NV.Severidad ASC

-- Cantidad de AlertasMeteorológicos por Nivel de Peligrosidad y Año. Solamente
-- aquellos registros que tengan más de 2 alertas.
Select NV.Nombre, Year(M.FechaHora) As Año, Count(*) as CantidadAlertas
From Mediciones M
Inner Join AlertasMeteorologicos AM ON AM.IDMedicion = M.ID
Inner Join NivelesPeligrosidad NV ON NV.ID = AM.IDNivelPeligrosidad
Group By NV.Nombre, Year(M.FechaHora), NV.Severidad
Having Count(*) > 2
Order by Año asc, NV.Severidad ASC