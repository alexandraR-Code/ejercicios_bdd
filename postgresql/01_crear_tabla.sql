-- Eliminar una tabla
drop table if exists estudiantes;
-- Crear una tabla
CREATE TABLE estudiantes(
	id_estudiante INT,
	nombres varchar(50),
	apellidos varchar(50),
	edad INT,
	curso varchar(50),
	fecha_registro varchar(10),
-- Creacion de clave primaria
constraint estudiantes_pk primary key(id_estudiante)
);
-- Insercion de 15 estudaintes 
INSERT INTO estudiantes VALUES(1, 'David', 'Tellez', 44, 'Marketing', '2026-01-10');
INSERT INTO estudiantes VALUES(2, 'Juan', 'Perez', 16, 'Herramientas modernas', '2024-05-23');
INSERT INTO estudiantes VALUES(3, 'Ana', 'Lopez', 23, 'Finanzas y negocios', '2026-06-10');
INSERT INTO estudiantes VALUES(4, 'Juana', 'Castillo', 36, 'Estetica', '2023-02-03');
INSERT INTO estudiantes VALUES(5, 'Tania', 'Hernadez', 67, 'Decoracion', '2025-09-24');
INSERT INTO estudiantes VALUES(6, 'Luis', 'Cifuentes', 10, 'Expresion cultural', '2026-03-15');
INSERT INTO estudiantes VALUES(7, 'Santiago', 'Muete', 28, 'Defensa personal', '2026-09-20');
INSERT INTO estudiantes VALUES(8, 'Carolina', 'Prieto', 30, 'Confeccion', '2024-03-11');
INSERT INTO estudiantes VALUES(9, 'Maribel', 'Ballesteros', 18, 'Enfermeria', '2026-01-10');
INSERT INTO estudiantes VALUES(10, 'David', 'Tellez', 54, 'Logistica', '2026-09-28');
INSERT INTO estudiantes VALUES(11, 'Carolina', 'Prieto', 16, 'Estetica', '2025-01-05');
INSERT INTO estudiantes VALUES(12, 'Samuel', 'Gallegos', 14, 'Artes', '2026-04-13');
INSERT INTO estudiantes VALUES(13, 'Julian', 'Ramirez', 7, 'Ingles', '2023-10-12');
INSERT INTO estudiantes VALUES(14, 'Luciana', 'Muñoz', 13, 'Musica', '2024-06-25');
INSERT INTO estudiantes VALUES(15, 'Mariana', 'Alfonso', 25, 'Estetica', '2025-10-11');
INSERT INTO estudiantes VALUES(16, 'Tatiana', 'Rojas', 16, 'Base de Datos', '2026-09-27');
-- Consultas SELECT
SELECT * FROM estudiantes;
-- Mostrar unicamente nombres y curso
SELECT nombres, curso FROM estudiantes;
-- Mostrar mayores de 18 
SELECT * FROM estudiantes WHERE edad > 18;
-- Mostrar rango entre 18 y 25
SELECT * FROM  estudiantes WHERE edad BETWEEN 18 AND 25;
-- Mostrar estudiante del curso Badee de Datos
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';
-- Mostrar estudiantes reegiestrados despues de 2026-03-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-03-01';
-- Mostrar estudiantes registrados entre 2026-01-01 y 2026-04-30
SELECT * FROM estudiantes WHERE  fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';
-- Cambiaar curso
UPDATE estudiantes SET curso = 'Base de Datos' WHERE id_estudiante = 4;
-- Cambiar edad 
UPDATE estudiantes SET edad = 45 WHERE id_estudiante = 12;
-- Cambiar fecha
UPDATE estudiantes SET fecha_registro = '2026-06-06' WHERE id_estudiante = 6;
-- Cambiar varios campos al mismo tiempo 
UPDATE estudiantes SET curso = 'Estetica', edad = 28, fecha_registro = '2025-05-15' WHERE id_estudiante = 8;
-- Cambiar curso 
UPDATE estudiantes SET curso = 'Inteligencia Artificial' WHERE id_estudiante IN(7, 8, 10);
-- Mostar como quedo la tabla 
SELECT * FROM estudiantes;
-- Eliminar por ID 
DELETE FROM estudiantes WHERE id_estudiante = 13;
-- Eliminar por curso
DELETE FROM estudiantes WHERE curso = 'Estetica' AND id_estudiante > 0;
-- Eliminar por edad
DELETE FROM estudiantes WHERE edad IN(44,10, 1) AND id_estudiante > 0;
-- Eliminar por nombre
DELETE FROM estudiantes WHERE nombres = 'Tania' AND id_estudiante > 0;
-- Eliminar por apellido
DELETE FROM estudiantes WHERE apellidos = 'Gallegos' AND id_estudiante > 0;
-- Mostrar como quedo la tabla
SELECT * FROM estudiantes;


