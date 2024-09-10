Use Clima

-- Insertando 10 países en la tabla Paises
INSERT INTO Paises (IDPais, Nombre)
VALUES
    (1, 'Argentina'),
    (2, 'Brasil'),
    (3, 'Chile'),
    (4, 'Uruguay'),
    (5, 'Estados Unidos'),
    (6, 'Canadá'),
    (7, 'Australia'),
    (8, 'Francia'),
    (9, 'Alemania'),
    (10, 'Italia');


-- Insertando 7 ciudades para cada país en la tabla Ciudades
INSERT INTO Ciudades (IDCiudad, Nombre, IDPais)
VALUES
    -- Argentina
    (1, 'Buenos Aires', 1),
    (2, 'Córdoba', 1),
    (3, 'Rosario', 1),
    (4, 'Mendoza', 1),
    (5, 'La Plata', 1),
    (6, 'Mar del Plata', 1),
    (7, 'San Miguel de Tucumán', 1),

    -- Brasil
    (8, 'São Paulo', 2),
    (9, 'Rio de Janeiro', 2),
    (10, 'Salvador', 2),
    (11, 'Brasília', 2),
    (12, 'Fortaleza', 2),
    (13, 'Belo Horizonte', 2),
    (14, 'Manaus', 2),

    -- Chile
    (15, 'Santiago', 3),
    (16, 'Valparaíso', 3),
    (17, 'Concepción', 3),
    (18, 'La Serena', 3),
    (19, 'Antofagasta', 3),
    (20, 'Temuco', 3),
    (21, 'Iquique', 3),

    -- Uruguay
    (22, 'Montevideo', 4),
    (23, 'Salto', 4),
    (24, 'Punta del Este', 4),
    (25, 'Ciudad de la Costa', 4),
    (26, 'Las Piedras', 4),
    (27, 'Rivera', 4),
    (28, 'Maldonado', 4),

    -- Estados Unidos
    (29, 'New York', 5),
    (30, 'Los Angeles', 5),
    (31, 'Chicago', 5),
    (32, 'Houston', 5),
    (33, 'Phoenix', 5),
    (34, 'Philadelphia', 5),
    (35, 'San Antonio', 5),

    -- Otros países
    (36, 'Toronto', 6),
    (37, 'Sydney', 7),
    (38, 'París', 8),
    (39, 'Roma', 10),
    (40, 'Berlín', 9),
    (41, 'Sicilia', 10),
    (42, 'Florencia', 10);

INSERT INTO NivelesPeligrosidad (ID, Nombre, Severidad, Color, Instrucciones)
VALUES 
    (1, 'Bajo', 1, 'Verde', 'Manténgase alerta y siga las recomendaciones de las autoridades.'),
    (2, 'Moderado', 2, 'Amarillo', 'Prepárese para posibles condiciones peligrosas. Siga las instrucciones de seguridad.'),
    (3, 'Alto', 3, 'Naranja', 'Tome precauciones adicionales y esté preparado para evacuar si es necesario.'),
    (4, 'Muy Alto', 4, 'Rojo', 'Evacúe la zona de inmediato. Siga las rutas de evacuación establecidas.'),
    (5, 'Extremo', 5, 'Rojo', 'Peligro extremo. Evacúe de inmediato y busque refugio seguro.'),
    (6, 'Severo', 6, 'Morado', 'Severidad alta. Tome medidas de seguridad inmediatas.');

INSERT INTO Mediciones (IDCiudad,FechaHora,Temperatura,Viento,Lluvia) VALUES
	 (17,'2022-05-31 10:00:09.0',13.32,-8.32,0.90),
	 (41,'2022-12-18 10:15:05.0',4.05,-10.30,4.00),
	 (20,'2024-01-24 05:26:38.0',27.31,3.30,7.50),
	 (41,'2022-08-25 21:42:35.0',8.76,NULL,NULL),
	 (42,'2023-07-01 10:10:12.0',8.39,18.52,5.21),
	 (19,'2022-05-01 07:58:36.0',23.96,10.44,3.27),
	 (21,'2023-04-24 10:37:15.0',13.53,NULL,9.38),
	 (40,'2023-10-12 11:21:27.0',6.60,10.66,NULL),
	 (4,'2024-09-30 13:15:15.0',24.15,-12.14,NULL),
	 (2,'2023-02-05 15:24:59.0',21.49,8.99,8.04),
	 (19,'2022-12-07 07:05:59.0',8.77,19.24,NULL),
	 (11,'2023-06-27 18:56:02.0',5.52,0.49,-2.05),
	 (18,'2023-07-06 00:34:57.0',28.30,7.22,-6.58),
	 (8,'2022-05-07 17:25:04.0',NULL,10.72,1.60),
	 (2,'2023-07-14 08:13:16.0',-5.44,NULL,0.21),
	 (14,'2023-10-03 01:12:49.0',-3.32,12.46,6.79),
	 (2,'2022-11-14 09:10:56.0',11.49,10.90,NULL),
	 (20,'2024-12-29 21:53:52.0',22.46,8.79,7.41),
	 (27,'2024-03-23 12:40:27.0',17.49,8.34,3.86),
	 (11,'2024-04-14 02:09:51.0',21.46,13.36,5.91),
	 (37,'2024-03-01 00:18:06.0',4.31,9.99,5.65),
	 (29,'2022-09-16 16:16:22.0',5.01,19.78,-8.25),
	 (16,'2023-11-11 01:37:09.0',3.90,14.69,NULL),
	 (11,'2022-01-16 15:50:36.0',8.02,NULL,0.87),
	 (9,'2022-08-30 00:33:21.0',11.22,NULL,5.60),
	 (33,'2024-04-24 06:33:12.0',4.64,-19.49,9.41),
	 (24,'2023-08-20 19:55:16.0',20.17,NULL,2.75),
	 (21,'2022-10-01 01:06:40.0',NULL,7.46,3.67),
	 (2,'2023-03-01 20:57:25.0',7.97,6.10,9.96),
	 (22,'2023-02-08 21:43:51.0',-4.61,3.43,5.59),
	 (10,'2022-09-07 22:43:31.0',9.65,-14.10,5.55),
	 (13,'2023-05-25 18:49:14.0',3.73,NULL,-0.39),
	 (20,'2022-12-13 07:13:09.0',20.17,19.73,4.48),
	 (36,'2023-03-16 05:03:11.0',-9.35,8.00,9.50),
	 (14,'2022-05-04 00:52:39.0',20.29,13.12,7.66),
	 (1,'2022-09-01 14:21:39.0',-23.45,4.66,4.72),
	 (27,'2023-11-06 23:24:19.0',27.86,-17.64,9.27),
	 (20,'2023-04-14 07:48:24.0',NULL,-8.48,8.40),
	 (42,'2022-12-26 15:34:44.0',17.47,10.97,0.23),
	 (39,'2023-05-11 10:16:17.0',8.72,-10.41,1.28),
	 (30,'2022-04-14 04:04:20.0',19.93,-17.11,6.73),
	 (10,'2024-10-22 23:23:41.0',24.48,3.13,8.14),
	 (14,'2024-02-16 23:20:41.0',16.04,4.00,0.15),
	 (8,'2024-11-12 19:39:57.0',20.40,12.62,NULL),
	 (41,'2023-08-23 18:24:15.0',-10.27,NULL,-6.77),
	 (31,'2023-10-10 15:06:26.0',8.27,NULL,-4.29),
	 (7,'2022-10-24 06:24:33.0',NULL,1.38,3.17),
	 (37,'2022-07-28 18:57:44.0',3.51,-14.27,6.50),
	 (37,'2023-03-31 13:27:29.0',5.73,18.02,4.27),
	 (42,'2024-08-16 21:43:29.0',25.04,9.64,6.84),
	 (13,'2023-07-15 12:28:01.0',12.53,6.95,4.94),
	 (8,'2022-05-22 14:05:23.0',20.33,19.74,NULL),
	 (34,'2022-03-01 19:10:54.0',-6.06,NULL,1.27),
	 (40,'2023-07-07 23:27:36.0',28.38,10.36,8.60),
	 (29,'2024-01-31 21:46:40.0',6.59,-14.46,1.60),
	 (1,'2022-10-31 04:05:57.0',16.44,-1.35,-3.33),
	 (33,'2023-11-13 12:18:36.0',-6.05,12.06,4.99),
	 (38,'2022-10-29 18:35:40.0',-18.89,11.76,7.28),
	 (9,'2023-06-26 18:47:25.0',28.93,NULL,8.27),
	 (23,'2023-10-19 05:52:20.0',2.07,9.93,NULL),
	 (34,'2023-10-15 14:06:20.0',28.74,8.92,5.90),
	 (33,'2024-05-10 04:41:44.0',18.24,17.21,0.21),
	 (12,'2024-07-28 16:38:00.0',NULL,0.01,5.17),
	 (30,'2022-11-22 13:23:43.0',23.61,8.33,8.56),
	 (9,'2023-09-12 17:57:25.0',NULL,7.80,5.03),
	 (20,'2024-02-02 00:43:52.0',28.36,12.79,7.04),
	 (19,'2024-01-14 20:44:38.0',-1.45,6.37,-6.90),
	 (3,'2022-10-05 15:42:36.0',NULL,5.85,3.49),
	 (15,'2022-01-19 06:31:39.0',-25.52,16.94,-8.90),
	 (12,'2024-09-29 14:59:36.0',-9.62,NULL,6.24),
	 (13,'2023-04-06 01:55:08.0',NULL,7.70,8.06),
	 (21,'2024-11-18 04:40:51.0',5.26,3.48,-8.79),
	 (31,'2022-08-08 17:21:02.0',NULL,-3.38,NULL),
	 (2,'2024-04-23 06:47:39.0',-16.36,12.10,5.46),
	 (27,'2024-11-09 23:55:40.0',3.56,NULL,-0.67),
	 (13,'2022-03-31 19:53:03.0',17.04,-3.74,6.29),
	 (14,'2022-09-07 03:21:36.0',1.95,12.95,3.35),
	 (6,'2022-11-14 05:45:33.0',16.07,14.28,1.08),
	 (13,'2022-09-11 15:58:15.0',24.57,NULL,6.07),
	 (37,'2023-11-17 23:04:52.0',19.12,12.47,7.58),
	 (27,'2024-03-28 19:35:30.0',7.39,0.62,8.38),
	 (35,'2023-06-12 06:42:28.0',NULL,7.47,8.77),
	 (30,'2022-06-03 01:32:26.0',-23.69,18.05,5.35),
	 (7,'2022-11-24 15:51:10.0',1.30,8.45,0.21),
	 (15,'2022-12-20 13:37:30.0',NULL,12.15,9.44),
	 (4,'2022-11-18 17:36:18.0',-6.21,14.45,-3.03),
	 (26,'2023-06-16 10:59:03.0',12.16,-19.26,4.14),
	 (18,'2024-03-14 18:36:29.0',17.22,-9.87,8.38),
	 (27,'2024-09-27 06:12:08.0',-14.53,NULL,8.73),
	 (42,'2022-11-25 21:21:50.0',NULL,-13.89,0.19),
	 (34,'2023-09-10 17:46:27.0',5.42,15.32,5.15),
	 (14,'2022-10-25 05:45:02.0',NULL,3.82,NULL),
	 (7,'2024-10-16 00:08:55.0',12.20,3.75,6.23),
	 (35,'2023-09-18 00:31:44.0',-20.51,0.69,NULL),
	 (7,'2024-04-22 00:16:29.0',NULL,-0.02,1.24),
	 (31,'2024-12-22 05:27:10.0',23.22,-7.94,3.86),
	 (19,'2023-08-26 16:22:54.0',17.83,NULL,1.28),
	 (28,'2022-11-30 14:55:14.0',8.71,9.87,NULL),
	 (17,'2023-04-13 15:35:29.0',9.72,7.02,-8.25),
	 (13,'2022-11-08 07:08:28.0',16.11,1.00,8.90),
	 (24,'2024-08-12 05:29:33.0',26.24,NULL,4.18),
	 (34,'2022-01-04 17:52:35.0',6.24,NULL,5.74),
	 (26,'2024-09-27 18:07:18.0',12.01,17.73,9.88),
	 (29,'2022-05-14 11:57:28.0',NULL,-16.36,5.66),
	 (29,'2024-05-21 04:15:22.0',10.40,16.02,7.85),
	 (22,'2023-08-19 02:12:24.0',24.13,-14.22,6.58),
	 (31,'2024-11-28 05:21:00.0',1.23,0.91,9.86),
	 (23,'2024-12-13 00:42:27.0',12.78,7.76,NULL),
	 (32,'2023-04-26 15:49:49.0',8.01,18.89,-4.20),
	 (19,'2024-06-16 02:36:57.0',1.61,17.22,8.34),
	 (26,'2022-02-09 07:54:04.0',14.76,7.00,-4.06),
	 (13,'2023-03-23 03:44:44.0',26.94,-7.03,8.59),
	 (2,'2023-05-01 01:57:35.0',-12.59,6.71,0.48),
	 (18,'2024-11-11 07:15:23.0',NULL,12.06,NULL),
	 (23,'2024-10-14 01:44:54.0',20.35,17.24,-8.23),
	 (9,'2024-03-08 08:57:55.0',29.01,-5.93,3.69),
	 (37,'2024-11-14 06:26:25.0',-17.33,12.31,4.27),
	 (36,'2024-09-25 05:08:32.0',2.79,11.19,9.97),
	 (39,'2024-10-02 02:36:44.0',-23.35,4.49,-7.46),
	 (30,'2022-08-07 23:34:12.0',27.16,NULL,3.01),
	 (27,'2024-01-01 14:48:10.0',5.66,NULL,9.37),
	 (12,'2023-01-27 03:35:30.0',NULL,5.29,6.86),
	 (22,'2024-01-29 06:47:24.0',3.17,17.79,5.39),
	 (21,'2024-05-08 20:02:39.0',10.26,-17.30,9.72),
	 (5,'2022-12-30 15:50:11.0',25.11,5.13,2.48),
	 (14,'2023-03-06 05:24:10.0',3.47,18.80,1.19),
	 (38,'2022-01-29 10:45:04.0',4.39,11.61,6.93),
	 (23,'2022-04-11 11:21:25.0',-6.70,5.53,0.48),
	 (28,'2022-03-28 14:39:02.0',14.59,-0.82,5.85),
	 (11,'2024-03-24 10:38:12.0',11.63,1.69,3.40),
	 (21,'2024-05-04 09:45:43.0',28.55,14.63,4.11),
	 (24,'2023-03-16 19:06:33.0',16.66,NULL,7.66),
	 (27,'2024-02-20 11:50:23.0',21.12,15.06,1.66),
	 (40,'2023-06-28 22:35:15.0',18.09,1.02,7.32),
	 (5,'2022-06-21 16:19:59.0',-18.27,19.52,3.17),
	 (17,'2024-06-26 18:16:11.0',NULL,NULL,5.39),
	 (38,'2023-03-28 04:38:43.0',4.19,-14.65,1.59),
	 (18,'2023-01-23 13:49:19.0',24.07,NULL,3.08),
	 (27,'2023-01-16 16:31:57.0',NULL,6.74,-9.85),
	 (15,'2022-05-15 03:14:46.0',2.60,13.62,3.57),
	 (16,'2022-01-25 10:45:48.0',7.89,-10.49,NULL),
	 (39,'2022-11-18 21:20:44.0',29.93,7.15,NULL),
	 (2,'2023-06-04 20:37:46.0',-8.23,-11.67,3.42),
	 (22,'2022-12-12 09:20:03.0',24.10,3.87,9.77),
	 (40,'2022-12-21 02:47:52.0',6.92,8.56,5.59),
	 (22,'2023-04-22 19:24:01.0',NULL,15.51,4.17),
	 (35,'2023-08-21 13:48:10.0',16.27,4.55,NULL),
	 (5,'2022-10-06 21:17:56.0',5.19,1.24,NULL),
	 (27,'2023-11-04 03:03:46.0',-26.29,NULL,-1.64),
	 (24,'2023-03-23 05:02:52.0',28.61,15.80,4.17),
	 (13,'2024-10-02 04:08:36.0',-25.49,4.72,7.71),
	 (39,'2023-08-06 13:46:07.0',26.72,11.86,-9.72),
	 (37,'2023-11-27 21:03:10.0',-12.52,-12.26,8.29),
	 (3,'2022-07-19 11:10:36.0',-28.96,-2.64,5.23),
	 (17,'2023-01-20 10:52:03.0',2.76,1.71,4.62),
	 (38,'2022-05-18 20:23:30.0',13.84,17.71,NULL),
	 (21,'2024-08-17 12:00:52.0',9.50,18.63,7.66),
	 (10,'2022-04-16 08:35:20.0',NULL,-5.89,6.73),
	 (20,'2024-11-22 13:29:00.0',11.26,9.92,7.33),
	 (36,'2022-06-02 11:47:34.0',NULL,3.87,-3.38),
	 (2,'2024-06-06 09:34:23.0',-14.46,-0.75,-2.70),
	 (31,'2024-09-29 17:10:17.0',NULL,12.76,-9.35),
	 (20,'2022-02-20 20:09:44.0',25.67,9.07,3.78),
	 (6,'2022-10-16 05:37:00.0',NULL,-13.28,8.34),
	 (41,'2024-02-13 11:00:02.0',24.57,4.92,NULL),
	 (14,'2024-04-13 23:53:52.0',21.40,NULL,NULL),
	 (25,'2022-04-25 18:16:07.0',12.84,14.52,5.08),
	 (20,'2023-12-27 02:36:50.0',26.00,3.59,8.98),
	 (23,'2023-06-12 10:50:54.0',11.91,1.05,6.78),
	 (33,'2022-08-10 23:17:36.0',25.07,-8.21,2.28),
	 (36,'2024-02-28 05:51:23.0',26.72,17.53,9.54),
	 (30,'2024-01-21 06:07:33.0',16.14,15.82,NULL),
	 (13,'2023-10-02 17:11:37.0',25.22,-11.10,9.41),
	 (42,'2023-10-19 06:30:39.0',14.65,9.76,3.64),
	 (1,'2022-04-28 00:49:50.0',6.50,7.73,-1.39),
	 (39,'2022-05-22 00:11:25.0',6.36,12.09,NULL),
	 (4,'2022-05-04 00:57:21.0',NULL,-4.42,6.09),
	 (16,'2024-09-08 05:26:07.0',9.81,5.78,1.97),
	 (31,'2022-02-14 09:47:28.0',23.77,8.17,2.56),
	 (38,'2023-01-20 19:28:05.0',9.52,18.25,9.47),
	 (40,'2024-05-05 10:48:46.0',5.10,19.94,8.58),
	 (35,'2023-11-25 10:03:49.0',27.99,14.73,NULL),
	 (8,'2023-07-11 21:40:22.0',14.76,8.90,2.87),
	 (19,'2023-12-01 13:31:54.0',-14.79,3.32,6.80),
	 (10,'2022-06-07 20:52:02.0',16.91,18.75,NULL),
	 (23,'2022-10-30 22:23:46.0',-13.78,-15.61,5.49),
	 (16,'2023-06-08 07:13:37.0',-16.99,-13.89,8.46),
	 (35,'2024-07-12 05:01:17.0',-11.25,-13.28,3.28),
	 (3,'2024-02-11 14:22:53.0',0.30,5.91,8.54),
	 (17,'2022-12-12 11:29:27.0',8.23,12.27,9.63),
	 (13,'2023-02-04 01:20:17.0',8.31,19.67,-4.55),
	 (2,'2022-09-23 05:11:55.0',27.63,18.91,4.62),
	 (17,'2022-08-17 11:32:17.0',13.45,2.13,-5.12),
	 (6,'2023-07-25 11:42:39.0',-21.58,7.88,8.62),
	 (24,'2024-08-25 19:04:42.0',-8.20,-19.71,NULL),
	 (38,'2023-09-12 12:44:17.0',0.32,-16.31,-6.73),
	 (25,'2022-08-02 19:02:47.0',25.18,0.76,9.11),
	 (4,'2023-02-19 13:27:05.0',28.26,9.62,2.77),
	 (2,'2022-06-21 15:30:15.0',3.51,14.33,NULL),
	 (41,'2024-09-28 05:56:00.0',14.58,NULL,NULL),
	 (39,'2022-08-13 05:34:13.0',-11.86,14.26,2.55),
	 (41,'2022-06-14 20:37:57.0',17.70,9.39,0.63),
	 (24,'2023-01-17 07:17:52.0',13.89,13.26,-7.40),
	 (34,'2024-10-06 08:58:01.0',-17.15,8.41,1.48),
	 (12,'2024-09-15 08:35:11.0',-5.70,-5.54,1.37),
	 (28,'2022-07-30 19:17:30.0',24.76,15.21,8.45),
	 (27,'2022-07-06 05:26:59.0',20.42,10.15,NULL),
	 (40,'2023-08-01 11:15:34.0',21.39,-10.86,2.33),
	 (17,'2023-12-04 00:32:05.0',2.02,5.97,-6.89),
	 (16,'2024-07-19 08:08:18.0',15.35,1.01,5.65),
	 (21,'2022-12-02 14:07:52.0',-25.39,NULL,-4.10),
	 (35,'2023-03-24 13:55:37.0',21.04,6.78,-5.78),
	 (23,'2024-02-03 05:29:04.0',2.60,NULL,9.56),
	 (39,'2023-09-29 06:12:22.0',15.82,NULL,9.91),
	 (3,'2024-08-09 22:51:18.0',14.12,12.32,6.72),
	 (31,'2024-07-04 06:25:29.0',-22.90,0.60,3.71),
	 (27,'2024-01-31 07:45:25.0',-1.84,9.65,NULL),
	 (9,'2023-03-13 12:59:18.0',9.93,NULL,8.69),
	 (24,'2024-12-12 21:46:23.0',1.79,-11.71,-1.53),
	 (3,'2024-09-13 14:38:42.0',-23.83,18.80,1.90),
	 (30,'2024-01-07 13:14:13.0',-15.10,10.01,8.68),
	 (8,'2024-09-07 15:15:52.0',29.91,-9.67,7.05),
	 (29,'2022-08-23 12:16:09.0',17.96,-7.17,0.94),
	 (20,'2024-07-24 02:20:26.0',19.11,7.38,9.29),
	 (24,'2024-03-02 10:55:56.0',NULL,0.73,2.50),
	 (25,'2024-08-02 00:21:25.0',6.23,5.42,NULL),
	 (38,'2022-08-15 12:41:01.0',NULL,3.48,3.93),
	 (15,'2023-09-30 03:17:16.0',20.44,-7.59,2.83),
	 (20,'2024-06-09 21:59:20.0',12.78,11.20,2.48),
	 (29,'2023-08-19 15:43:41.0',2.82,-16.36,4.23),
	 (8,'2023-09-05 07:57:38.0',3.72,4.20,0.59),
	 (5,'2023-12-27 07:32:48.0',-24.01,18.25,NULL),
	 (15,'2024-08-26 07:12:31.0',21.92,11.58,NULL),
	 (20,'2022-08-07 05:44:23.0',-18.01,NULL,-6.11),
	 (33,'2024-07-29 12:07:38.0',10.79,15.26,5.58),
	 (41,'2024-03-08 05:19:37.0',14.92,NULL,0.90),
	 (28,'2024-02-10 11:19:55.0',16.31,0.17,8.97),
	 (14,'2023-03-13 11:20:45.0',NULL,-9.38,-7.60),
	 (5,'2022-12-07 22:04:46.0',0.67,19.19,-7.69),
	 (10,'2023-07-13 11:22:50.0',-3.96,7.18,7.55),
	 (33,'2022-05-14 20:40:20.0',-15.18,8.24,NULL),
	 (36,'2024-11-14 20:29:26.0',-29.90,-17.76,7.76),
	 (13,'2024-11-12 00:18:33.0',-4.31,-18.90,1.60),
	 (25,'2023-07-23 18:53:18.0',28.40,14.53,7.53),
	 (3,'2022-03-02 21:29:41.0',18.86,17.12,7.48),
	 (29,'2023-12-02 07:04:07.0',8.25,NULL,NULL),
	 (1,'2022-09-18 21:02:00.0',23.66,14.04,NULL),
	 (18,'2023-03-25 19:51:43.0',25.16,5.39,-9.66),
	 (17,'2022-01-09 00:16:56.0',-2.92,18.56,5.93),
	 (42,'2022-02-01 19:49:37.0',19.33,0.58,2.89),
	 (32,'2023-02-25 12:20:56.0',26.30,10.60,-4.35),
	 (13,'2022-07-13 18:54:51.0',8.41,4.95,-8.72),
	 (2,'2022-01-17 14:31:03.0',5.46,19.14,NULL),
	 (32,'2022-04-22 12:34:14.0',22.89,1.79,3.64),
	 (14,'2024-05-05 02:57:50.0',29.28,18.80,2.94),
	 (7,'2023-06-16 03:29:34.0',28.05,-9.98,-4.12),
	 (34,'2024-02-26 16:54:12.0',27.96,5.68,-1.38),
	 (8,'2024-06-20 12:34:17.0',4.91,-12.68,4.47),
	 (29,'2023-12-10 05:32:55.0',-5.96,16.05,3.01),
	 (26,'2024-01-04 06:54:22.0',-6.18,9.97,-5.32),
	 (24,'2023-08-23 14:05:01.0',19.12,-10.20,6.22),
	 (28,'2023-09-16 04:16:52.0',-29.14,17.52,-5.31),
	 (26,'2023-09-14 07:21:23.0',27.45,11.76,3.05),
	 (3,'2024-08-06 05:36:19.0',-19.73,18.92,8.52),
	 (20,'2024-12-19 05:15:03.0',1.20,7.23,6.25),
	 (36,'2023-03-20 14:23:31.0',1.05,16.00,4.61),
	 (29,'2024-06-29 16:04:18.0',8.78,5.93,0.61),
	 (25,'2022-02-06 17:57:55.0',22.12,13.76,2.63),
	 (37,'2023-06-07 08:11:48.0',6.85,10.80,NULL),
	 (3,'2024-03-17 22:47:33.0',-19.32,-0.91,NULL),
	 (15,'2022-08-28 21:00:57.0',-3.55,19.27,-0.61),
	 (1,'2023-05-01 18:49:18.0',-29.48,14.31,6.29),
	 (10,'2022-10-30 05:52:12.0',15.41,17.94,5.43),
	 (7,'2022-02-28 22:57:10.0',3.32,0.36,4.80),
	 (9,'2023-11-04 04:15:50.0',12.25,0.70,2.90),
	 (41,'2024-04-16 08:17:38.0',12.97,11.07,9.84),
	 (1,'2024-07-01 19:08:36.0',4.18,7.31,-9.70),
	 (1,'2023-12-02 22:23:08.0',17.52,2.17,7.80),
	 (12,'2022-11-22 01:56:41.0',20.76,NULL,9.98),
	 (21,'2022-11-14 02:21:52.0',25.77,4.87,3.14),
	 (15,'2022-10-06 15:06:13.0',NULL,8.87,2.17),
	 (28,'2023-08-29 08:51:03.0',14.59,8.33,0.81),
	 (35,'2022-01-15 09:26:52.0',2.22,10.95,0.32),
	 (7,'2022-05-07 04:08:49.0',-26.59,-14.62,6.34),
	 (7,'2024-05-01 09:29:22.0',-4.14,1.87,6.07),
	 (32,'2024-08-07 23:32:08.0',0.03,NULL,-1.67),
	 (14,'2024-11-29 11:12:00.0',8.83,2.07,7.14),
	 (37,'2022-09-22 11:49:55.0',4.79,-3.46,5.97),
	 (33,'2022-07-07 10:30:23.0',13.38,NULL,8.21),
	 (22,'2023-12-06 17:11:36.0',-7.37,0.80,7.17),
	 (42,'2023-10-11 12:57:04.0',29.49,15.83,2.32),
	 (7,'2024-04-09 08:18:24.0',3.86,3.12,0.78),
	 (6,'2022-08-31 22:37:40.0',3.79,17.08,-6.70),
	 (36,'2024-06-18 10:29:27.0',24.75,18.74,-3.88),
	 (18,'2024-12-22 13:59:43.0',12.60,NULL,4.02),
	 (35,'2024-04-18 22:30:57.0',-21.87,-7.47,5.62),
	 (18,'2022-10-23 02:57:21.0',-17.82,11.64,7.27),
	 (10,'2022-12-23 09:14:40.0',NULL,3.82,9.87),
	 (38,'2024-05-27 01:34:46.0',26.74,NULL,-8.08),
	 (42,'2024-09-18 20:00:48.0',-29.46,13.96,NULL),
	 (7,'2024-07-04 23:08:49.0',3.06,10.61,3.26),
	 (18,'2022-07-21 08:53:08.0',11.50,11.92,1.21),
	 (13,'2022-08-16 09:02:26.0',10.84,5.91,0.66),
	 (1,'2022-09-10 23:49:16.0',17.88,18.75,6.16),
	 (1,'2023-08-08 04:23:18.0',-2.85,17.13,0.53),
	 (8,'2022-01-09 07:10:02.0',23.18,19.80,7.00),
	 (14,'2022-07-23 15:20:13.0',16.16,NULL,6.86),
	 (23,'2024-06-20 18:03:54.0',-22.92,18.81,2.50),
	 (30,'2023-03-22 06:36:58.0',29.94,13.52,8.97),
	 (3,'2023-04-07 21:15:31.0',23.41,17.09,7.55),
	 (20,'2024-03-25 04:56:59.0',-12.24,-15.12,8.59),
	 (18,'2022-04-07 01:09:00.0',4.70,17.56,3.21),
	 (9,'2023-06-02 08:24:28.0',12.44,3.60,9.11),
	 (38,'2023-04-17 18:50:22.0',24.12,9.05,NULL),
	 (27,'2024-11-01 00:20:37.0',0.34,NULL,9.58),
	 (8,'2022-02-28 11:17:54.0',NULL,1.04,-3.87),
	 (13,'2024-05-19 20:10:32.0',13.29,10.66,NULL),
	 (10,'2024-05-21 00:08:21.0',22.14,3.32,2.23),
	 (6,'2024-03-29 23:12:27.0',NULL,NULL,6.13),
	 (12,'2024-09-13 10:02:19.0',25.67,NULL,NULL),
	 (20,'2024-02-17 05:19:04.0',6.49,10.90,7.58),
	 (30,'2023-11-06 11:08:16.0',20.94,16.83,3.58),
	 (36,'2023-07-09 19:00:28.0',18.96,-2.92,4.77),
	 (9,'2024-04-14 08:02:28.0',18.04,5.98,2.51),
	 (32,'2022-03-29 16:33:14.0',21.32,1.84,-9.91),
	 (25,'2024-08-04 21:21:37.0',15.00,-17.91,-5.76),
	 (30,'2024-01-13 21:29:02.0',NULL,NULL,5.69),
	 (11,'2023-08-12 18:02:29.0',29.08,4.72,7.86),
	 (24,'2024-04-26 09:21:05.0',9.61,14.53,-2.15),
	 (23,'2023-07-15 05:39:41.0',20.38,8.99,7.87),
	 (13,'2022-09-02 11:05:44.0',11.86,12.77,-3.12),
	 (7,'2024-09-29 01:49:16.0',2.07,NULL,NULL),
	 (38,'2023-06-22 03:39:33.0',NULL,NULL,0.89),
	 (28,'2023-01-10 10:30:50.0',-22.05,2.38,1.63),
	 (18,'2024-02-09 01:58:10.0',NULL,19.78,NULL),
	 (31,'2024-11-16 14:45:22.0',9.67,10.76,8.11),
	 (19,'2024-04-17 01:48:20.0',21.20,-18.39,4.24),
	 (34,'2024-02-17 14:41:04.0',28.54,2.79,5.16),
	 (19,'2024-10-17 21:53:09.0',2.74,5.66,-3.38),
	 (42,'2022-08-01 20:52:12.0',18.96,NULL,9.63),
	 (34,'2022-06-21 21:02:04.0',28.90,12.49,6.87),
	 (1,'2023-09-21 18:24:15.0',NULL,17.80,-3.69),
	 (8,'2022-11-23 12:51:15.0',29.54,NULL,4.78),
	 (12,'2022-01-28 07:25:30.0',-12.46,13.24,-5.03),
	 (11,'2022-12-19 20:43:21.0',6.18,-4.68,-3.30),
	 (39,'2022-04-18 03:01:56.0',-29.51,-18.83,3.71),
	 (24,'2022-03-18 07:36:22.0',NULL,1.78,2.53),
	 (29,'2024-06-02 13:37:21.0',16.09,-9.31,0.26),
	 (16,'2024-11-12 07:08:49.0',1.19,NULL,0.26),
	 (19,'2024-02-04 01:19:15.0',NULL,3.15,-1.81),
	 (6,'2023-02-02 21:45:46.0',16.28,18.71,7.87),
	 (36,'2022-10-17 16:25:45.0',16.35,12.48,9.44),
	 (36,'2024-02-14 21:01:17.0',9.13,0.89,-5.50),
	 (13,'2023-03-27 13:00:11.0',27.22,NULL,2.27),
	 (35,'2024-12-04 08:26:43.0',-5.19,18.51,6.02),
	 (16,'2022-03-22 08:24:24.0',24.85,4.18,9.23),
	 (7,'2022-06-07 15:40:45.0',18.30,19.10,-8.44),
	 (13,'2023-11-13 01:01:42.0',23.78,10.49,9.63),
	 (5,'2023-08-18 00:33:55.0',14.73,6.47,5.38),
	 (42,'2024-05-19 18:29:43.0',-26.18,-6.50,0.03),
	 (33,'2023-12-26 21:48:39.0',-12.72,NULL,1.80),
	 (12,'2022-05-02 22:33:08.0',28.55,3.58,3.41),
	 (33,'2022-07-20 07:16:39.0',9.48,14.91,8.20),
	 (38,'2023-05-05 21:08:18.0',18.29,10.77,7.40),
	 (12,'2024-10-21 00:20:16.0',22.28,-10.15,0.67),
	 (21,'2023-03-08 19:58:49.0',-17.74,12.46,4.23),
	 (19,'2024-11-02 01:12:15.0',6.11,-0.70,NULL),
	 (40,'2024-10-19 12:07:50.0',-23.06,15.18,7.14),
	 (21,'2023-07-20 06:00:47.0',6.05,12.95,7.70),
	 (19,'2022-04-19 01:52:10.0',23.76,11.94,0.11),
	 (39,'2024-03-03 15:47:50.0',16.50,-11.22,NULL),
	 (13,'2024-02-16 16:40:30.0',12.44,13.78,9.37),
	 (34,'2023-12-03 12:17:45.0',23.32,NULL,4.77),
	 (42,'2022-10-28 05:55:42.0',26.34,-4.65,9.82),
	 (19,'2022-06-30 11:12:30.0',15.17,15.94,2.24),
	 (25,'2024-03-02 06:11:48.0',-17.93,-7.88,NULL),
	 (9,'2023-08-02 02:14:42.0',25.16,18.37,3.12),
	 (4,'2023-02-09 13:57:35.0',NULL,9.41,4.08),
	 (3,'2022-09-10 23:34:35.0',NULL,-8.29,-3.86),
	 (38,'2024-06-24 13:05:59.0',20.43,18.53,0.82),
	 (30,'2024-11-13 15:11:48.0',7.32,2.13,NULL),
	 (25,'2023-05-17 13:23:08.0',1.23,13.26,-3.50),
	 (11,'2023-10-24 17:49:37.0',10.84,NULL,0.31),
	 (37,'2022-08-29 22:31:04.0',1.21,13.50,NULL),
	 (10,'2023-02-22 01:11:10.0',0.65,16.00,5.06),
	 (40,'2023-10-25 23:29:17.0',26.69,18.22,0.22),
	 (12,'2024-11-23 06:14:31.0',17.39,10.07,9.12),
	 (33,'2024-07-01 14:24:04.0',4.68,5.03,NULL),
	 (31,'2022-11-12 14:32:39.0',-27.27,2.17,0.74),
	 (10,'2023-05-09 23:53:11.0',-10.31,-14.01,-0.18),
	 (12,'2023-11-09 15:23:57.0',NULL,1.99,-3.60),
	 (5,'2023-02-19 14:15:49.0',NULL,9.64,NULL),
	 (6,'2023-11-08 09:45:02.0',12.19,9.13,-5.97),
	 (28,'2023-03-20 01:33:00.0',-18.15,5.36,1.41),
	 (10,'2024-02-26 04:43:52.0',18.48,0.48,-8.13),
	 (7,'2024-04-04 00:29:35.0',2.57,15.74,6.42),
	 (42,'2024-10-26 05:04:00.0',-10.72,-19.11,8.03),
	 (16,'2022-04-18 03:51:22.0',NULL,6.68,3.76),
	 (30,'2024-06-08 23:59:03.0',-4.69,17.27,NULL),
	 (40,'2024-11-21 17:28:12.0',19.81,14.16,1.10),
	 (28,'2023-08-13 10:47:21.0',-3.97,-15.50,9.80),
	 (19,'2022-01-29 20:38:25.0',16.91,8.31,6.53),
	 (1,'2023-07-24 16:30:01.0',14.97,5.12,2.92),
	 (22,'2023-09-13 08:26:51.0',-18.60,NULL,1.56),
	 (41,'2022-06-23 01:41:27.0',13.13,13.18,8.43),
	 (1,'2023-01-12 15:26:22.0',NULL,-17.07,NULL),
	 (24,'2023-03-09 08:10:15.0',17.77,16.23,-6.80),
	 (10,'2024-04-30 18:58:33.0',22.36,14.94,0.41),
	 (10,'2022-06-01 10:03:11.0',2.80,5.31,4.32),
	 (10,'2024-08-22 00:25:29.0',-1.76,1.35,3.36),
	 (14,'2023-07-15 14:35:47.0',16.03,9.03,9.58),
	 (24,'2023-05-09 17:15:46.0',15.70,19.30,6.20),
	 (10,'2022-04-11 08:57:52.0',14.17,NULL,1.32),
	 (2,'2022-06-18 09:06:53.0',12.74,-8.94,1.58),
	 (3,'2023-12-31 08:53:00.0',NULL,5.90,0.30),
	 (24,'2022-11-26 21:01:37.0',25.21,13.28,7.17),
	 (17,'2022-07-28 22:23:56.0',27.26,9.94,7.80),
	 (39,'2023-10-12 06:17:56.0',15.06,13.39,9.21),
	 (19,'2022-01-16 23:22:30.0',12.47,4.44,0.13),
	 (8,'2022-05-25 02:28:40.0',-9.95,19.63,3.30),
	 (14,'2024-03-01 02:55:56.0',21.11,-11.96,1.28),
	 (14,'2022-05-05 13:02:50.0',9.71,-0.28,-6.18),
	 (25,'2024-08-25 01:39:27.0',21.88,16.38,5.27),
	 (10,'2023-03-01 15:54:13.0',28.80,4.34,7.76),
	 (4,'2024-09-21 11:44:40.0',0.29,4.89,8.88),
	 (27,'2022-09-16 05:36:39.0',-27.09,11.67,5.48),
	 (42,'2023-01-30 09:06:07.0',-19.39,-14.03,0.31),
	 (11,'2023-05-29 15:25:36.0',-17.16,11.42,-2.13),
	 (18,'2023-05-07 15:04:58.0',-6.69,1.43,3.87),
	 (23,'2022-09-26 14:21:43.0',-6.50,19.08,1.90),
	 (29,'2023-08-01 06:52:28.0',10.02,7.94,-4.78),
	 (31,'2024-02-10 09:27:25.0',15.04,12.93,7.27),
	 (26,'2024-08-01 20:19:28.0',18.18,0.90,6.64),
	 (39,'2024-08-19 12:19:22.0',11.80,8.92,NULL),
	 (34,'2022-07-11 16:54:16.0',1.58,-8.15,9.03),
	 (41,'2023-07-10 21:46:24.0',-25.94,7.69,7.40),
	 (6,'2024-08-22 07:42:23.0',-19.34,16.95,8.60),
	 (19,'2022-01-29 04:29:51.0',2.72,19.82,-3.46),
	 (36,'2023-10-14 09:38:41.0',13.76,7.57,6.31),
	 (26,'2022-06-09 17:23:40.0',22.07,17.17,0.93),
	 (36,'2022-02-21 20:18:42.0',-15.78,15.61,0.34),
	 (11,'2024-07-25 16:01:11.0',29.98,13.38,6.21),
	 (39,'2022-02-17 00:11:26.0',14.26,10.36,8.14),
	 (38,'2024-05-09 08:51:52.0',21.56,16.88,2.18),
	 (35,'2023-03-25 20:00:06.0',-25.40,-17.56,3.27),
	 (24,'2023-12-03 02:06:10.0',14.72,18.74,8.63),
	 (27,'2024-12-08 00:43:21.0',20.66,7.31,8.27),
	 (33,'2024-12-06 19:48:07.0',1.97,16.45,-2.47),
	 (8,'2024-05-14 19:22:29.0',10.85,14.33,6.80),
	 (40,'2022-10-07 23:11:35.0',-25.98,11.90,2.07),
	 (5,'2022-11-11 20:23:23.0',-29.20,14.64,1.66),
	 (9,'2024-08-05 16:37:09.0',29.20,10.04,-0.06),
	 (27,'2024-08-04 16:15:16.0',17.48,-19.58,3.77),
	 (40,'2023-11-01 16:40:06.0',21.96,13.16,3.81),
	 (23,'2023-04-05 10:58:02.0',1.89,7.30,1.67),
	 (8,'2022-07-09 13:38:27.0',20.42,17.67,1.56),
	 (10,'2023-10-11 07:45:34.0',-10.63,14.82,8.04),
	 (10,'2022-04-03 19:05:16.0',25.53,16.85,-9.59),
	 (15,'2024-07-20 08:13:00.0',16.91,2.17,2.16),
	 (1,'2024-06-04 17:47:22.0',20.87,14.49,-8.27),
	 (22,'2023-06-15 14:30:43.0',23.94,NULL,6.48),
	 (14,'2023-09-07 02:53:04.0',-28.19,2.65,7.92),
	 (10,'2024-10-19 00:32:53.0',5.67,8.49,1.85),
	 (5,'2022-11-06 01:54:42.0',-17.79,1.72,6.68),
	 (30,'2023-05-21 00:03:28.0',4.09,-14.59,8.81),
	 (38,'2024-07-28 13:18:09.0',-16.82,13.24,8.91),
	 (8,'2022-10-23 00:55:23.0',NULL,1.53,0.89),
	 (21,'2023-09-06 12:34:29.0',29.84,0.91,-9.71),
	 (26,'2024-11-27 18:34:12.0',NULL,17.17,-6.94),
	 (16,'2024-08-05 15:44:32.0',25.51,11.14,0.61),
	 (24,'2023-04-29 00:48:52.0',NULL,-18.79,-2.48),
	 (31,'2023-10-16 23:10:51.0',21.01,5.45,3.13),
	 (30,'2024-01-12 04:28:02.0',NULL,0.60,1.70),
	 (2,'2023-07-15 02:57:54.0',-14.35,2.68,3.56),
	 (37,'2023-12-12 11:30:15.0',25.40,12.58,2.69),
	 (22,'2023-01-08 21:10:36.0',-16.41,17.67,9.29),
	 (41,'2022-09-10 20:26:31.0',13.68,9.38,2.71),
	 (28,'2023-10-23 06:58:20.0',6.41,17.81,8.57),
	 (18,'2023-06-11 07:35:45.0',14.48,NULL,3.66),
	 (26,'2022-01-16 22:43:06.0',-8.46,6.07,0.14),
	 (32,'2022-11-19 21:20:29.0',-28.94,14.63,7.20),
	 (15,'2022-06-23 04:05:01.0',-15.59,3.04,6.20),
	 (18,'2022-12-20 15:12:59.0',-2.62,18.32,3.72),
	 (24,'2024-09-28 00:16:19.0',-10.28,5.43,4.64),
	 (25,'2022-10-26 10:38:27.0',19.90,11.50,5.54),
	 (40,'2024-12-13 23:30:38.0',28.65,NULL,NULL),
	 (24,'2023-07-13 12:31:51.0',3.21,19.66,7.42),
	 (9,'2024-03-10 10:26:34.0',-17.03,18.48,-8.27),
	 (7,'2022-07-07 11:34:00.0',-24.60,4.73,NULL),
	 (20,'2022-03-31 08:59:04.0',24.39,-11.01,6.11),
	 (31,'2023-05-15 16:23:02.0',-8.64,18.80,8.12),
	 (36,'2023-01-03 08:07:44.0',17.61,9.14,9.55),
	 (35,'2024-03-16 20:11:11.0',29.38,14.93,4.46),
	 (37,'2023-04-08 17:06:36.0',12.99,-16.96,-6.97),
	 (5,'2023-04-13 03:55:30.0',25.56,19.66,3.78),
	 (27,'2024-02-26 22:57:24.0',-26.42,1.39,4.42),
	 (2,'2023-06-15 13:04:42.0',-24.01,10.81,-7.77),
	 (9,'2022-09-07 01:59:41.0',8.35,5.10,-1.14),
	 (23,'2022-03-30 10:47:51.0',NULL,3.24,NULL),
	 (9,'2024-11-18 00:48:33.0',NULL,8.31,4.66),
	 (30,'2022-08-16 22:50:53.0',-19.59,12.98,1.63),
	 (3,'2024-08-03 20:38:41.0',22.99,0.55,3.41),
	 (13,'2022-03-19 15:04:13.0',5.87,-7.17,6.67),
	 (30,'2023-10-10 16:10:14.0',21.14,-19.74,-1.80),
	 (15,'2022-12-15 18:03:42.0',17.48,6.52,1.80),
	 (12,'2024-06-02 02:44:13.0',20.37,-2.50,-9.70),
	 (18,'2024-05-18 13:33:24.0',NULL,14.38,1.33),
	 (3,'2024-07-21 19:20:23.0',10.04,-0.02,NULL),
	 (22,'2024-05-31 18:49:00.0',15.44,18.59,3.69),
	 (9,'2023-08-03 03:14:07.0',-5.26,-17.28,-0.32),
	 (21,'2023-08-13 11:35:28.0',NULL,NULL,1.70),
	 (20,'2023-12-06 11:52:13.0',5.90,NULL,0.13),
	 (33,'2022-12-22 23:14:49.0',24.79,18.69,3.93),
	 (8,'2023-02-16 22:59:40.0',NULL,-12.87,4.03),
	 (35,'2024-10-20 22:49:44.0',17.32,0.14,4.35),
	 (34,'2023-05-07 17:25:17.0',25.39,6.21,NULL),
	 (39,'2024-02-03 21:01:50.0',1.29,-0.12,2.91),
	 (11,'2024-03-13 06:59:12.0',28.16,19.72,-3.25),
	 (38,'2022-09-12 05:26:52.0',-7.38,-18.57,2.10),
	 (13,'2022-08-24 14:14:12.0',NULL,3.05,4.13),
	 (3,'2023-02-15 00:32:28.0',9.32,-9.74,3.99),
	 (15,'2023-12-05 06:18:37.0',27.26,12.99,8.85),
	 (17,'2024-02-27 21:03:35.0',12.43,13.78,NULL),
	 (32,'2023-09-22 04:59:55.0',2.19,9.11,5.51),
	 (27,'2023-01-15 13:30:15.0',28.80,15.13,6.07),
	 (25,'2022-05-17 06:55:46.0',17.83,12.74,-2.05),
	 (39,'2023-11-27 11:46:12.0',10.02,17.81,7.40),
	 (36,'2022-06-03 11:12:52.0',28.30,-9.41,3.93),
	 (35,'2023-09-03 14:48:55.0',11.45,5.10,NULL),
	 (13,'2023-04-08 11:47:43.0',26.17,18.19,7.45),
	 (35,'2023-12-02 11:33:55.0',12.82,6.01,2.50),
	 (2,'2023-09-11 08:16:01.0',2.87,19.24,1.89),
	 (15,'2023-12-23 11:24:05.0',20.20,19.28,-9.54),
	 (30,'2022-11-14 06:00:23.0',NULL,13.25,2.03),
	 (28,'2023-03-02 10:24:16.0',23.92,-4.00,7.53),
	 (29,'2022-12-30 01:57:32.0',15.79,11.16,-3.80),
	 (20,'2023-02-25 13:59:47.0',8.18,15.75,0.54),
	 (23,'2023-05-07 21:20:00.0',NULL,2.63,4.32),
	 (20,'2023-09-04 07:23:45.0',11.02,6.56,0.79),
	 (22,'2024-01-18 23:26:05.0',29.17,1.13,3.98),
	 (33,'2024-05-22 08:00:38.0',29.33,13.54,5.23),
	 (35,'2022-02-27 00:56:10.0',NULL,11.88,8.35),
	 (15,'2024-04-17 13:35:10.0',26.45,3.94,-5.67),
	 (36,'2022-11-24 06:43:15.0',-6.83,-10.21,5.96),
	 (12,'2023-02-22 06:18:23.0',10.13,6.00,-2.19),
	 (25,'2022-03-03 02:35:03.0',9.00,-6.83,9.71),
	 (10,'2023-12-15 16:34:28.0',9.33,12.02,-4.97),
	 (38,'2024-08-16 22:47:08.0',-24.87,7.56,4.30),
	 (25,'2022-05-11 13:43:59.0',28.80,14.60,NULL),
	 (18,'2024-02-02 22:46:50.0',22.36,NULL,9.59),
	 (2,'2024-08-10 22:01:21.0',-15.87,0.17,5.86),
	 (26,'2023-04-01 02:01:35.0',-15.07,-8.92,7.19),
	 (17,'2022-03-25 07:21:41.0',NULL,18.32,8.57),
	 (4,'2022-12-09 07:29:10.0',27.45,-10.06,1.27),
	 (11,'2024-07-03 07:25:23.0',12.13,-14.08,0.46),
	 (40,'2024-05-07 07:14:54.0',27.63,12.32,6.86),
	 (2,'2024-07-02 00:43:09.0',-8.81,1.55,5.57),
	 (5,'2022-01-27 07:18:05.0',17.90,-1.20,5.90),
	 (29,'2023-09-23 01:18:10.0',8.57,13.18,6.64),
	 (20,'2024-12-26 07:03:22.0',NULL,5.33,4.69),
	 (3,'2024-09-06 07:44:00.0',29.90,0.65,6.34),
	 (35,'2023-01-01 21:28:08.0',29.03,5.33,NULL),
	 (27,'2023-01-08 09:16:44.0',26.14,4.18,2.02),
	 (1,'2023-02-23 19:54:00.0',NULL,3.44,5.23),
	 (30,'2023-10-05 16:17:20.0',21.35,9.23,5.08),
	 (38,'2023-12-22 06:07:20.0',-18.38,8.52,-9.13),
	 (14,'2024-10-01 17:00:01.0',NULL,1.90,NULL),
	 (2,'2023-10-10 05:44:25.0',24.62,NULL,5.70),
	 (18,'2023-09-23 08:31:09.0',2.33,-17.26,-8.60),
	 (42,'2023-07-30 00:45:31.0',-7.23,-19.97,3.13),
	 (8,'2022-11-11 01:13:35.0',-7.79,1.12,9.24),
	 (13,'2022-12-11 18:08:33.0',18.16,18.81,3.59),
	 (5,'2022-04-15 13:29:44.0',NULL,-12.89,0.17),
	 (10,'2023-01-26 11:50:48.0',19.35,17.03,7.70),
	 (8,'2024-03-24 09:45:32.0',-10.46,5.42,-1.94),
	 (39,'2022-11-28 02:15:46.0',2.32,7.91,-6.68),
	 (6,'2022-05-26 01:38:24.0',13.04,16.13,NULL),
	 (3,'2023-04-07 18:31:42.0',14.37,-18.32,1.10),
	 (1,'2022-04-03 02:22:42.0',0.55,18.10,4.04),
	 (14,'2024-04-29 10:22:48.0',NULL,16.05,9.34),
	 (40,'2023-02-09 09:07:57.0',NULL,8.42,3.21),
	 (9,'2024-05-02 17:07:03.0',25.06,2.44,-7.75),
	 (14,'2023-11-11 13:03:38.0',4.54,-14.44,5.96),
	 (24,'2024-05-10 22:39:31.0',-3.35,15.12,0.58),
	 (35,'2024-01-03 21:15:17.0',24.59,NULL,5.10),
	 (4,'2024-12-20 05:04:46.0',4.51,0.46,9.09),
	 (30,'2022-05-16 06:04:11.0',9.24,NULL,3.74),
	 (37,'2023-10-08 14:08:05.0',0.11,NULL,-7.81),
	 (13,'2023-06-20 00:22:57.0',3.76,12.41,7.47),
	 (19,'2023-03-04 07:06:11.0',10.86,8.60,-0.61),
	 (37,'2023-04-24 10:00:51.0',-9.44,17.99,9.68),
	 (33,'2023-03-01 01:32:38.0',9.57,17.42,8.80),
	 (13,'2024-04-24 07:41:19.0',17.69,8.98,9.33),
	 (29,'2023-01-03 21:59:27.0',-16.40,12.24,-4.38),
	 (6,'2022-10-14 18:27:59.0',-5.91,2.37,8.40),
	 (30,'2022-12-29 21:45:45.0',2.95,13.82,6.04),
	 (35,'2024-05-10 15:20:46.0',27.74,8.50,6.07),
	 (16,'2022-09-28 02:57:13.0',NULL,6.98,2.02),
	 (12,'2024-02-18 02:21:10.0',NULL,2.76,4.62),
	 (21,'2022-02-05 02:58:28.0',20.50,17.85,9.39),
	 (10,'2023-05-11 23:33:50.0',5.43,0.78,NULL),
	 (15,'2024-03-04 01:35:17.0',-18.64,14.75,NULL),
	 (26,'2022-07-05 19:02:14.0',21.23,5.66,1.13),
	 (37,'2023-03-13 04:49:06.0',6.88,8.86,-6.11),
	 (37,'2024-06-17 07:48:47.0',NULL,2.67,8.93),
	 (15,'2023-06-30 10:00:47.0',3.66,7.02,-0.40),
	 (25,'2024-05-05 17:04:10.0',5.00,2.35,4.66),
	 (22,'2022-06-13 12:20:18.0',13.47,16.64,-6.00),
	 (12,'2023-07-17 05:32:42.0',22.44,10.59,9.04),
	 (13,'2024-04-09 23:20:27.0',NULL,4.93,4.74),
	 (8,'2023-05-13 18:00:53.0',NULL,18.25,-4.12),
	 (40,'2022-03-01 00:32:53.0',NULL,-0.45,9.69),
	 (1,'2023-06-28 04:12:09.0',5.68,3.98,0.18),
	 (18,'2022-03-15 07:59:25.0',11.23,NULL,-3.35),
	 (30,'2022-07-24 10:08:02.0',7.01,-18.43,6.98),
	 (4,'2024-06-26 07:28:44.0',15.65,15.16,NULL),
	 (26,'2023-12-30 03:31:03.0',24.23,16.86,8.04),
	 (3,'2022-11-23 03:10:53.0',14.87,4.79,5.27),
	 (11,'2024-08-08 23:22:22.0',20.55,11.28,8.59),
	 (25,'2024-06-06 09:31:22.0',17.09,-0.59,9.50),
	 (28,'2022-08-16 13:49:38.0',NULL,18.17,7.70),
	 (12,'2024-06-13 10:41:32.0',27.34,18.94,1.85),
	 (40,'2024-08-09 05:28:25.0',7.11,10.45,5.28),
	 (24,'2022-01-05 08:27:55.0',NULL,11.30,8.57),
	 (27,'2023-05-30 20:37:33.0',-2.89,NULL,6.16),
	 (16,'2023-07-21 00:11:42.0',NULL,9.45,2.79),
	 (26,'2024-10-20 21:26:17.0',24.55,3.38,NULL),
	 (10,'2023-03-02 15:39:47.0',20.62,-1.02,-4.78),
	 (40,'2024-05-17 11:28:33.0',-23.69,16.47,-8.97),
	 (13,'2022-11-26 02:16:38.0',24.75,-3.47,6.30),
	 (15,'2024-03-15 04:29:21.0',14.81,-2.89,-3.67),
	 (29,'2024-07-02 00:26:42.0',1.58,6.54,-3.23),
	 (37,'2022-09-20 20:50:42.0',-19.53,8.71,8.69),
	 (10,'2022-09-03 00:04:28.0',NULL,1.52,4.61),
	 (41,'2023-09-02 12:30:37.0',16.41,-17.26,-6.90),
	 (16,'2022-03-05 14:57:11.0',NULL,NULL,0.62),
	 (22,'2023-08-03 22:12:12.0',-26.24,16.83,0.99),
	 (40,'2022-05-31 15:30:52.0',-8.71,NULL,6.55),
	 (29,'2024-12-14 06:48:40.0',13.81,NULL,-9.12),
	 (24,'2022-03-29 21:51:49.0',-18.90,-2.02,9.21),
	 (30,'2024-01-18 17:46:05.0',-2.66,14.34,-7.59),
	 (1,'2024-08-30 00:01:05.0',16.02,-3.04,-8.79),
	 (1,'2023-11-03 13:06:31.0',-15.63,5.30,9.30),
	 (4,'2024-03-12 19:42:18.0',29.45,1.01,8.73),
	 (1,'2023-01-04 00:19:07.0',29.94,NULL,0.84),
	 (19,'2024-08-20 19:52:38.0',12.82,19.20,3.15),
	 (15,'2023-07-20 15:37:58.0',NULL,-8.69,-1.25),
	 (5,'2022-12-17 14:26:21.0',-2.49,7.76,-6.55),
	 (28,'2024-02-05 19:21:44.0',20.33,6.16,8.92),
	 (38,'2022-06-05 23:34:50.0',0.72,NULL,9.82),
	 (24,'2023-04-01 02:10:24.0',10.67,4.80,4.65),
	 (20,'2024-12-15 01:02:55.0',22.34,NULL,0.55),
	 (4,'2023-11-29 16:54:39.0',16.56,5.40,4.46),
	 (4,'2022-06-09 17:16:01.0',14.86,18.88,-2.93),
	 (21,'2024-09-09 11:52:22.0',-7.87,8.08,4.06),
	 (42,'2022-09-15 21:47:14.0',8.72,4.49,5.64),
	 (4,'2024-11-12 12:22:07.0',2.72,0.39,3.24),
	 (14,'2024-06-18 05:55:56.0',4.86,12.48,7.40),
	 (32,'2023-02-05 12:27:25.0',0.01,5.08,9.89),
	 (37,'2023-12-28 14:42:40.0',4.50,12.75,6.98),
	 (7,'2024-03-10 17:11:20.0',NULL,4.73,1.84),
	 (3,'2023-10-26 13:30:57.0',22.58,-4.31,1.32),
	 (5,'2023-04-12 04:28:20.0',-23.99,14.77,5.72),
	 (11,'2024-08-08 05:47:53.0',-13.76,NULL,6.30),
	 (15,'2023-12-21 13:14:57.0',28.65,9.96,9.01),
	 (28,'2022-01-15 10:28:10.0',28.62,7.34,-3.22),
	 (5,'2023-10-14 15:27:52.0',12.25,-5.25,-0.55),
	 (24,'2024-01-10 14:55:19.0',NULL,4.87,8.86),
	 (36,'2024-03-03 18:39:26.0',12.80,14.22,2.45),
	 (25,'2024-04-30 02:03:24.0',0.32,9.56,2.17),
	 (41,'2022-03-05 17:20:59.0',17.79,8.12,2.20),
	 (31,'2023-03-15 01:45:19.0',12.43,17.24,6.81),
	 (26,'2022-11-26 14:07:47.0',13.32,2.93,2.69),
	 (35,'2024-04-27 08:17:33.0',14.18,2.82,0.41),
	 (29,'2024-03-31 01:34:39.0',1.35,-11.24,7.62),
	 (18,'2023-03-09 20:26:52.0',-19.90,16.53,-9.88),
	 (15,'2023-07-05 06:34:05.0',29.07,16.52,1.69),
	 (34,'2023-04-13 08:51:11.0',10.98,NULL,-2.94),
	 (5,'2023-09-24 23:20:59.0',4.53,18.44,1.65),
	 (42,'2022-10-10 03:38:22.0',18.99,9.37,0.02),
	 (41,'2024-01-01 07:13:19.0',19.45,11.08,-8.76),
	 (1,'2023-12-31 10:33:36.0',NULL,11.11,NULL),
	 (31,'2023-12-16 16:49:33.0',6.31,13.70,1.03),
	 (17,'2022-04-15 05:02:43.0',0.24,11.63,8.14),
	 (32,'2023-09-04 06:24:47.0',4.74,4.95,6.82),
	 (3,'2024-02-24 04:48:32.0',10.22,-13.00,5.00),
	 (13,'2023-11-09 17:00:14.0',2.69,11.06,5.52),
	 (25,'2023-08-30 02:47:32.0',NULL,0.98,9.83),
	 (26,'2023-02-15 04:57:25.0',0.94,-4.06,4.70),
	 (23,'2022-10-31 01:15:44.0',22.76,-1.59,2.91),
	 (15,'2023-11-15 08:13:49.0',25.81,-6.12,0.36),
	 (40,'2022-12-04 04:59:40.0',2.90,8.51,1.91),
	 (34,'2024-04-04 13:23:53.0',27.01,5.25,6.92),
	 (9,'2022-11-26 01:52:31.0',-17.94,0.25,0.86),
	 (22,'2022-05-29 06:36:36.0',7.41,NULL,-8.38),
	 (20,'2023-02-18 23:49:47.0',NULL,15.65,3.47),
	 (19,'2022-12-03 03:16:08.0',NULL,-14.86,-4.16),
	 (33,'2023-05-27 23:37:15.0',24.23,2.59,8.52),
	 (9,'2023-10-03 11:08:49.0',-9.10,18.80,0.58),
	 (12,'2024-10-06 05:55:11.0',3.87,12.48,1.98),
	 (39,'2024-06-18 22:18:28.0',-14.15,-16.41,4.21),
	 (30,'2024-06-03 20:47:16.0',NULL,4.92,2.62),
	 (33,'2024-02-22 08:39:09.0',1.30,3.36,4.12),
	 (30,'2023-02-06 22:20:54.0',NULL,-10.66,8.18),
	 (18,'2022-11-28 07:16:20.0',17.58,-12.79,6.62),
	 (19,'2024-02-26 16:21:25.0',14.66,0.62,1.28),
	 (33,'2022-02-10 09:31:02.0',27.00,19.71,3.40),
	 (33,'2024-06-26 05:10:44.0',-17.77,NULL,5.21),
	 (35,'2023-10-23 00:20:44.0',13.67,16.13,7.02),
	 (23,'2024-03-05 00:20:03.0',NULL,2.73,2.23),
	 (11,'2024-10-23 19:35:05.0',28.61,-9.41,-0.24),
	 (25,'2023-09-23 04:15:13.0',26.05,10.33,8.97),
	 (20,'2023-08-21 20:08:38.0',14.83,NULL,4.15),
	 (13,'2023-04-02 20:51:55.0',5.97,9.26,9.08),
	 (39,'2024-06-24 02:50:35.0',21.19,-14.42,1.24),
	 (19,'2024-11-26 20:29:29.0',3.58,4.13,NULL),
	 (39,'2023-08-27 09:40:01.0',16.69,-8.73,4.83),
	 (23,'2022-09-20 14:26:01.0',-13.09,17.51,-6.58),
	 (40,'2023-01-07 10:49:22.0',26.18,NULL,0.00),
	 (27,'2023-12-11 23:12:31.0',7.99,-0.70,3.03),
	 (13,'2024-06-25 20:46:57.0',29.26,9.82,8.17),
	 (41,'2022-08-13 02:03:27.0',26.11,17.13,1.68),
	 (41,'2024-10-12 12:23:45.0',-21.32,14.37,1.85),
	 (18,'2024-03-09 21:36:18.0',14.06,-4.92,-2.09),
	 (17,'2023-07-19 21:04:40.0',6.96,16.69,4.22),
	 (32,'2024-07-08 07:43:21.0',13.90,NULL,6.24),
	 (24,'2023-03-29 20:58:00.0',26.56,15.26,8.02),
	 (35,'2024-01-27 11:27:50.0',19.00,NULL,NULL),
	 (28,'2022-09-28 09:30:44.0',14.96,NULL,4.07),
	 (38,'2022-12-10 14:32:33.0',22.93,-8.47,-1.76),
	 (19,'2024-04-12 15:54:53.0',17.99,NULL,-9.01),
	 (21,'2024-09-23 01:17:25.0',-25.45,18.94,9.58),
	 (7,'2024-06-14 21:45:01.0',7.35,-0.86,8.02),
	 (23,'2024-12-23 15:00:08.0',18.37,7.74,1.61),
	 (13,'2024-08-24 03:51:02.0',10.76,19.06,0.11),
	 (25,'2023-02-06 02:46:08.0',NULL,14.90,-1.84),
	 (27,'2023-09-22 09:15:16.0',11.08,8.67,3.49),
	 (8,'2023-12-20 23:38:59.0',-23.49,7.36,-9.32),
	 (2,'2023-09-15 13:16:46.0',5.86,12.08,2.44),
	 (34,'2023-12-11 21:30:13.0',-8.62,10.42,9.60),
	 (28,'2023-01-18 06:23:51.0',-9.76,7.00,-9.43),
	 (26,'2022-06-19 09:27:16.0',-16.96,2.44,5.81),
	 (42,'2024-11-15 12:57:54.0',28.80,0.09,-9.41),
	 (12,'2022-10-10 01:16:27.0',12.41,11.18,3.00),
	 (12,'2022-04-26 13:50:25.0',11.23,14.00,7.71),
	 (2,'2022-11-14 16:17:31.0',25.74,-5.50,4.30),
	 (9,'2023-12-28 03:17:34.0',11.46,0.72,NULL),
	 (12,'2023-09-18 00:24:06.0',13.93,10.86,NULL),
	 (17,'2022-09-28 00:39:33.0',7.73,1.52,-7.96),
	 (37,'2023-11-07 09:38:26.0',2.87,-3.86,8.43);

INSERT INTO AlertasMeteorologicos (IDMedicion,IDNivelPeligrosidad,DuracionMinutosEstimada) VALUES
	 (276,4,22),
	 (436,5,8),
	 (97,1,17),
	 (290,1,6),
	 (433,6,10),
	 (106,2,17),
	 (380,1,25),
	 (137,1,23),
	 (379,3,9),
	 (354,5,9),
	 (176,6,23),
	 (178,2,16),
	 (378,3,8),
	 (70,6,4),
	 (103,1,22),
	 (326,4,1),
	 (149,4,24),
	 (19,6,2),
	 (301,3,8),
	 (282,3,5),
	 (225,2,1),
	 (383,6,5),
	 (471,6,22),
	 (92,5,5),
	 (172,4,8),
	 (438,1,16),
	 (352,2,17),
	 (111,5,20),
	 (43,2,17),
	 (26,4,11),
	 (153,5,5),
	 (183,5,24),
	 (3,3,18),
	 (239,5,21),
	 (288,1,25),
	 (304,4,13),
	 (418,2,15),
	 (481,5,2),
	 (201,4,23),
	 (487,6,11),
	 (374,5,18),
	 (373,2,1),
	 (21,5,10),
	 (401,4,23),
	 (461,1,3),
	 (251,3,7),
	 (55,5,21),
	 (452,5,16),
	 (120,1,5);