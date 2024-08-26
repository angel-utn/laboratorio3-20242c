Create Database PescaParaConsultasDeSeleccion
Go
Use PescaParaConsultasDeSeleccion
Go
CREATE TABLE capturas (
    idcaptura INT PRIMARY KEY,
    especie VARCHAR(50),
    peso DECIMAL(5, 2) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    torneo VARCHAR(50) NOT NULL,
    idparticipante INT NULL
);
Go
SET DATEFORMAT 'YMD'
INSERT INTO capturas (idcaptura, especie, peso, fecha, hora, torneo, idparticipante) VALUES
(1, 'Dorado', 8.75, '2022-01-15', '07:45:00', 'Torneo de Pesca La Plata', 101),
(2, 'Tucunaré', 5.60, '2023-02-10', '09:30:00', 'Campeonato de Pesca Manaus', 102),
(3, 'Bagre', 3.25, '2021-03-05', '10:15:00', 'Torneo del Río Magdalena', 103),
(4, 'Pez Espada', 12.80, '2022-01-20', '11:00:00', 'Gran Torneo Marlin Azul', 104),
(5, 'Tararira', 6.10, '2024-04-12', '12:45:00', 'Torneo de Pesca Chascomús', 105),
(6, 'Pez Vela', 9.90, '2023-02-25', '08:30:00', 'Torneo Internacional de Pesca', 106),
(7, 'Pacú', 4.55, '2024-03-19', '14:20:00', 'Copa del Pacú', 107),
(8, 'Surubí', 15.30, '2021-04-28', '13:05:00', 'Torneo del Surubí Corrientes', 108),
(9, 'Pintado', 7.85, '2023-05-10', '15:00:00', 'Campeonato de Pesca Manaus', 102),
(10, 'Piranha', 1.75, '2022-06-06', '16:45:00', 'Torneo del Amazonas', 110),
(11, 'Sábalo', 2.95, '2023-05-18', '06:30:00', 'Torneo de Pesca Fluvial Amateur', 111),
(12, 'Trucha Arcoíris', 3.50, '2024-07-10', '07:15:00', 'Campeonato Profesional Andino de Pesca', 112),
(13, 'Atún', 11.40, '2022-08-05', '08:00:00', 'Torneo Internacional de Pesca', NULL),
(14, 'Mero', 14.20, '2023-07-22', '09:45:00', 'Campeonato de Pesca Punta Cana', 114),
(15, 'Corvina', 4.20, '2024-09-18', '10:30:00', 'Torneo del Atlántico', 115),
(16, 'Robalo', 5.75, '2022-08-30', '11:15:00', 'Torneo del Atlántico', 115),
(17, 'Pez Gato', 3.80, '2023-09-25', '12:00:00', 'Torneo Profesional del Golfo', 117),
(18, 'Merluza', 6.40, '2021-10-10', '13:45:00', 'Torneo de la Patagonia', 118),
(19, 'Dorado', 8.20, '2024-10-22', '14:30:00', 'Torneo del Paraná', 119),
(20, 'Tilapia', 2.60, '2022-11-05', '15:15:00', 'Torneo Amateur de Pesca de Lima', 120),
(21, 'Pez Espada', 13.70, '2023-12-10', '16:00:00', 'Gran Torneo Marlin Azul', 104),
(22, 'Surubí', 16.10, '2024-12-22', '07:45:00', 'Torneo del Surubí Corrientes', 108),
(23, 'Pacú', 5.20, '2022-12-28', '08:30:00', 'Copa del Pacú', 107),
(24, 'Bagre', 4.00, '2024-11-15', '09:15:00', 'Torneo del Río Magdalena', 103),
(25, 'Tararira', 7.50, '2021-10-12', '10:00:00', 'Torneo de Pesca Chascomús', 105),
(26, 'Trucha Marrón', 6.70, '2022-09-20', '11:45:00', 'Torneo de la Patagonia', 118),
(27, 'Pez Vela', 10.90, '2023-08-15', '12:30:00', 'Torneo Internacional de Pesca', 106),
(28, 'Sábalo', 3.30, '2024-07-25', '13:15:00', 'Torneo de Pesca Fluvial Amateur', 111),
(29, 'Dorado', 9.50, '2022-06-18', '14:00:00', 'Torneo de Pesca La Plata', 101),
(30, 'Tilapia', 2.40, '2023-05-12', '14:45:00', 'Torneo Amateur de Pesca de Lima', 120),
(31, 'Merluza', 5.95, '2024-04-18', '15:30:00', 'Torneo de la Patagonia', 118),
(32, 'Piranha', 2.10, '2021-03-25', '16:15:00', 'Torneo del Amazonas', 110),
(33, 'Robalo', 4.60, '2024-02-22', '06:00:00', 'Torneo del Atlántico', 115),
(34, 'Pez Espada', 12.55, '2022-01-05', '06:45:00', 'Gran Torneo Marlin Azul', NULL),
(35, 'Dorado', 7.80, '2023-01-29', '07:30:00', 'Torneo del Paraná', 119),
(36, 'Surubí', 15.90, '2021-02-15', '08:15:00', 'Torneo del Surubí Corrientes', 108),
(37, 'Atún', 10.50, '2022-03-10', '09:00:00', 'Torneo Internacional de Pesca', 106),
(38, 'Tararira', 6.30, '2024-04-05', '09:45:00', 'Torneo de Pesca Chascomús', 105),
(39, 'Mero', 13.10, '2022-05-22', '10:30:00', 'Campeonato de Pesca Punta Cana', NULL),
(40, 'Pintado', 8.50, '2023-06-28', '11:15:00', 'Campeonato de Pesca Manaus', 102);
