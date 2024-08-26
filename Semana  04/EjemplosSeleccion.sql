-- Todos los registros de capturas
Select * From capturas

-- Todos los registros indicando IDCaptura, Nombre de la especie.
Select idcaptura, especie from capturas

-- Todos los registros indicando IDCaptura, Nombre de la especie, Fecha y hora.
Select idcaptura, especie, fecha, hora from capturas

-- Todos los registros indicando IDCaptura, Nombre de la especie, Fecha y hora. Ordenado por fecha de mayor a menor.
Select idcaptura, especie, fecha, hora from capturas order by fecha desc

-- Todos los registros indicando IDCaptura, Nombre de la especie, Peso Fecha y hora. 
-- Ordenado por especie de forma ascendente y en segundo lugar por peso de forma descendente.
Select idcaptura, especie, peso, fecha, hora from capturas order by especie asc, peso desc


-- ID de la captura, nombre de la especie, año, mes, día del mes y día de la semana.
Select  idcaptura as Codigo, 
        especie, 
        year(fecha) as Año, 
        Month(fecha) as Mes, 
        Day(fecha) as Dia,
        Datepart(weekday, fecha) as DiaSemana 
from capturas

-- ID de la captura, nombre de la especie, hora y momento del día (Amanecer, Atardecer, Anochecer)
-- Amanecer: [5 a 12)
-- Atardecer: [12 a 16)
-- Anochecer: [16 a 5)

Select 
    idcaptura,
    especie,
    hora,
     Case
        When datepart(hour, hora) >= 5 And datepart(hour, hora) < 12 Then 'Amanecer'
        When datepart(hour, hora) >= 12 And datepart(hour, hora) < 16 Then 'Atardecer'
        Else 'Anochecer'
     end As MomentoDelDia
From capturas

-- Todos los torneos de cada captura
Select torneo from capturas

-- Todos los torneos sin repetir de las capturas
select distinct torneo from capturas

-- Todas la capturas realizadas en el año 2024
select * from capturas where year(fecha) = 2024

-- Todas la capturas realizadas en el año 2024 y que hayan superado los 8kgs
select * from capturas where year(fecha) = 2024 and peso > 8

-- Todas las capturas realizadas en el Torneo de Pesca La Plata.
select * from capturas where torneo = 'Torneo de Pesca La Plata'

-- Todas las capturas de Dorado, Pejerrey y Atún
select * from capturas where especie = 'Dorado' Or especie = 'Pejerrey' Or especie = 'Atún'

-- Todas las capturas de Dorado, Bagre, Tararira, Piranha, Pintado, Sábalo, Mero y Atún
select * from capturas where especie in ('Dorado', 'Bagre', 'Tararira', 'Piranha', 'Pintado', 'Sábalo', 'Mero', 'Atún')

-- Todas las capturas de especies que no sean Dorado, Bagre, Tararira, Piranha, Pintado, Sábalo, Mero y Atún
select * from capturas where especie not in ('Dorado', 'Bagre', 'Tararira', 'Piranha', 'Pintado', 'Sábalo', 'Mero', 'Atún')

-- Todas la capturas cuyo peso se encuentre 5 y 10kgs
select * from capturas where peso >= 5 and peso <= 7

select * from capturas where peso between 5 and 7

-- Todas las capturas de los partipantes que no tienen un ID
select * from capturas where idparticipante is NULL

-- Todas las capturas de los partipantes que sí tienen un ID
select * from capturas where idparticipante is not NULL

-- Todos los torneos que tengan la palabra 'profesional' en su nombre
select * from capturas where torneo like '%profesional%'

select * from capturas where torneo like '%pesca'

-- Ranking de las 5 capturas más pesadas
Select top 5 * from capturas order by peso desc