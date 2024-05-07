CREATE DATABASE REPORTE;
USE REPORTE;

CREATE TABLE PROYECTOS (
proyecto_codigo CHAR (5) PRIMARY KEY,
proyecto_nombre VARCHAR (50)
);

CREATE TABLE PUESTOS (
puesto_id CHAR (5) PRIMARY KEY,
puesto_nombre  VARCHAR (30),
pago_hora DOUBLE
);

CREATE TABLE EMPLEADOS (
empleado_codigo CHAR (5) PRIMARY KEY,
empleado_nombre VARCHAR (30),
empleado_apellidoPaterno VARCHAR (30),
empleado_apellidoMaterno VARCHAR (30),
puesto_id CHAR (5),
FOREIGN KEY (puesto_id) REFERENCES PUESTOS (puesto_id)
);

CREATE TABLE PROYECTOS_EMPLEADOS (
proyecto_codigo CHAR (5),
empleado_codigo CHAR (5),
horas_trabajadas INT,
PRIMARY KEY (proyecto_codigo, empleado_codigo),
FOREIGN KEY (proyecto_codigo) REFERENCES PROYECTOS (proyecto_codigo),
FOREIGN KEY (empleado_codigo) REFERENCES EMPLEADOS (empleado_codigo)
);

-- Inserciones para la tabla PROYECTOS
INSERT INTO PROYECTOS (proyecto_codigo, proyecto_nombre) VALUES ('15', 'Evergreen');
INSERT INTO PROYECTOS (proyecto_codigo, proyecto_nombre) VALUES ('18', 'Amber');
INSERT INTO PROYECTOS (proyecto_codigo, proyecto_nombre) VALUES ('22', 'Rolling');
INSERT INTO PROYECTOS (proyecto_codigo, proyecto_nombre) VALUES ('25', 'Starflight');

-- Inserciones para la tabla PUESTOS
INSERT INTO PUESTOS (puesto_id, puesto_nombre, pago_hora) VALUES ('PT001', 'Ingeniero Electricista', 84.5);
INSERT INTO PUESTOS (puesto_id, puesto_nombre, pago_hora) VALUES ('PT002', 'Diseñador de bases de datos', 105);
INSERT INTO PUESTOS (puesto_id, puesto_nombre, pago_hora) VALUES ('PT003', 'Progamador', 35);
INSERT INTO PUESTOS (puesto_id, puesto_nombre, pago_hora) VALUES ('PT004', 'Analista de Sistemas', 96);
INSERT INTO PUESTOS (puesto_id, puesto_nombre, pago_hora) VALUES ('PT005', 'Diseñador de aplicaciones', 48);
INSERT INTO PUESTOS (puesto_id, puesto_nombre, pago_hora) VALUES ('PT006', 'Apoyo General', 18);
INSERT INTO PUESTOS (puesto_id, puesto_nombre, pago_hora) VALUES ('PT007', 'Analista DSS', 45);
INSERT INTO PUESTOS (puesto_id, puesto_nombre, pago_hora) VALUES ('PT008', 'Trabajador de oficina', 26);

-- Inserciones para la tabla EMPLEADOS
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('103', 'June', 'E.', 'Arbough', 'PT001');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('101', 'John', 'G.', 'News', 'PT002');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('105', 'Alice', 'K.', 'JohnSon', 'PT002');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('106', 'William', 'Smithfield', '', 'PT003');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('102', 'David', 'H.', 'Senior', 'PT004');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('114', 'Annelisse', 'Jones', '', 'PT005');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('118', 'James', 'J.', 'Frommer', 'PT006');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('104', 'Anne', 'K.', 'Ramoras', 'PT004');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('112', 'Darlene', 'M.', 'Smithson', 'PT007');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('113', 'Delbert', 'K.', 'Joenbrood', 'PT005');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('111', 'Geoff', 'B.', 'Wabash', 'PT008');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('107', 'Maria', 'D.', 'Alonzo', 'PT003');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('115', 'Travis', 'B.', 'Bawangi', 'PT004');
INSERT INTO EMPLEADOS (empleado_codigo, empleado_nombre, empleado_apellidoPaterno, empleado_apellidoMaterno, puesto_id) VALUES ('108', 'Ralph', 'B.', 'Washington', 'PT004');


-- Inserciones para la tabla PROYECTOS_EMPLEADOS
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('15', '103', 23);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('15', '101', 19);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('15', '105', 35);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('15', '106', 12);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('15', '102', 23);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('18', '114', 24);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('18', '118', 45);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('18', '104', 32);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('18', '112', 44);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('22', '105', 64);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('22', '104', 48);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('22', '113', 23);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('22', '111', 22);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('22', '106', 12);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('25', '107', 24);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('25', '115', 45);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('25', '101', 56);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('25', '114', 33);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('25', '108', 23);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('25', '118', 30);
INSERT INTO PROYECTOS_EMPLEADOS (proyecto_codigo, empleado_codigo,  horas_trabajadas) VALUES ('25', '112', 41);

-- Mostrar contenido de la tabla PROYECTOS
SELECT * FROM PROYECTOS;

-- Mostrar contenido de la tabla PUESTOS
SELECT * FROM PUESTOS;

-- Mostrar contenido de la tabla EMPLEADOS
SELECT * FROM EMPLEADOS;

-- Mostrar contenido de la tabla PROYECTOS_EMPLEADOS
SELECT * FROM PROYECTOS_EMPLEADOS;

