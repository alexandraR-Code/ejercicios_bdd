--Eliminar una tabla
drop table if exists estudiantes;
--Crear una tabla
CREATE TABLE estudiantes(
	id_estudiante INT,
	nombres varchar(50),
	apellidos varchar(50),
	edad INT,
	curso varchar(50),
	fecha_registro varchar(10),
constraint estudiantes_pk primary key(id_estudiante)
);
