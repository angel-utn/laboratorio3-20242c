-- Las mediciones que tengan una temperatura mayor al promedio de temperatura general
Select * From Mediciones Where Temperatura > (Select Avg(Temperatura) From Mediciones)

-- Las mediciones que tengan una temperatura menor al promedio de temperatura 
-- general del año actual
Select * From Mediciones Where Temperatura < (
    Select Avg(Temperatura) From Mediciones Where Year(FechaHora) = Year(getdate())
)

-- Las ciudades que no tengan mediciones en el año 2024
-- Conjunto Ciudades
--          -
-- Conjunto Ciudades con Mediciones en 2024
--------------------------------------------
-- Conjunto Ciudades sin Mediciones en 2024

Select C.Nombre From Ciudades C
Where C.IDCiudad NOT IN ( 
    Select Distinct IDCiudad From Mediciones Where Year(FechaHora) = 2024
)

-- Las mediciones en las que se hayan registrado una temperatura menor 
-- a la de cualquier ciudad Italia (a la temperatura más alta registrada por una ciudad de Italia).

Select C1.Nombre, M1.* From Mediciones M1 
Inner Join Ciudades C1 ON M1.IDCiudad = C1.IDCiudad
Where M1.Temperatura >
(
    Select Max(M.Temperatura) From Mediciones M
    Inner Join Ciudades C ON M.IDCiudad = C.IDCiudad
    Inner Join Paises P ON P.IDPais = C.IDPais
    Where P.Nombre = 'Italia'
)

-- Alternativa
Select C1.Nombre, M1.* From Mediciones M1 
Inner Join Ciudades C1 ON M1.IDCiudad = C1.IDCiudad
Where M1.Temperatura > ALL (
    Select M.Temperatura From Mediciones M
    Inner Join Ciudades C ON M.IDCiudad = C.IDCiudad
    Inner Join Paises P ON P.IDPais = C.IDPais
    Where P.Nombre = 'Italia' And M.Temperatura Is not Null
)

-- Nombre País, Prom Temp 2022, Prom Temp 2023, Prom Temp 2024
Select P.Nombre, 
    (
        Select Avg(M.Temperatura) From Mediciones M
        Inner Join Ciudades C ON M.IDCiudad = C.IDCiudad
        Where Year(M.FechaHora) = 2022 And C.IDPais = P.IDPais
    ) as Prom2022,
    (
        Select Avg(M.Temperatura) From Mediciones M
        Inner Join Ciudades C ON M.IDCiudad = C.IDCiudad
        Where Year(M.FechaHora) = 2023 And C.IDPais = P.IDPais
    ) as Prom2023,
    (
        Select Avg(M.Temperatura) From Mediciones M
        Inner Join Ciudades C ON M.IDCiudad = C.IDCiudad
        Where Year(M.FechaHora) = 2024 And C.IDPais = P.IDPais
    ) as Prom2024
From Paises P

-- Nombres de países que el promedio de temp2022 sea mayor al 2023 y 
-- el del 2023 mayor al del 2024
Select EstAnuales.Nombre From (
        Select P.Nombre, 
        (
            Select Avg(M.Temperatura) From Mediciones M
            Inner Join Ciudades C ON M.IDCiudad = C.IDCiudad
            Where Year(M.FechaHora) = 2022 And C.IDPais = P.IDPais
        ) as Prom2022,
        (
            Select Avg(M.Temperatura) From Mediciones M
            Inner Join Ciudades C ON M.IDCiudad = C.IDCiudad
            Where Year(M.FechaHora) = 2023 And C.IDPais = P.IDPais
        ) as Prom2023,
        (
            Select Avg(M.Temperatura) From Mediciones M
            Inner Join Ciudades C ON M.IDCiudad = C.IDCiudad
            Where Year(M.FechaHora) = 2024 And C.IDPais = P.IDPais
        ) as Prom2024
    From Paises P
) As EstAnuales
Where EstAnuales.Prom2022 > EstAnuales.Prom2023 And EstAnuales.Prom2023 > EstAnuales.Prom2024