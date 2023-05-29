DROP DATABASE IF EXISTS Automovil;
CREATE DATABASE Automovil;
USE Automovil;
CREATE TABLE tipo_conductor(
	id_tipo_conductor INT PRIMARY KEY,
	nombre VARCHAR(255)
);

CREATE TABLE conductor(
	id_conductor INT PRIMARY KEY,
	nombre VARCHAR(255),
	tipo_licencia VARCHAR(255),
	id_vehiculo INT,
	id_tipo_conductor INT
);

CREATE TABLE vehiculo(
	id_vehiculo INT PRIMARY KEY,
	marca VARCHAR(255),
	modelo VARCHAR(255),
	matricula VARCHAR(255),
	anio INT,
	id_tipo_vehiculo INT
);

CREATE TABLE tipo_vehiculo(
	id_tipo_vehiculo INT PRIMARY KEY,
	nombre VARCHAR(255)
);

CREATE TABLE ruta(
	id_ruta INT PRIMARY KEY,
	estacion VARCHAR(255),
	id_vehiculo INT
);

CREATE TABLE contrato(
	id_contrato INT PRIMARY KEY,
	id_vehiculo INT,
	id_conductor INT
);

----------------------------------------Claves Foraneas CONDUCTOR------------------------------------------------------

ALTER TABLE conductor ADD CONSTRAINT fk_conductor_vehiculo FOREIGN KEY (id_vehiculo) REFERENCES vehiculo (id_vehiculo);
ALTER TABLE conductor ADD CONSTRAINT fk_conductor_tipo_conductor FOREIGN KEY (id_tipo_conductor) REFERENCES tipo_conductor (id_tipo_conductor);

-----------------------------------------------------------------------------------------------------------------------


----------------------------------------Claves Foraneas VEHICULO------------------------------------------------------

ALTER TABLE vehiculo ADD CONSTRAINT fk_vehiculo_tipo_vehiculo FOREIGN KEY (id_tipo_vehiculo) REFERENCES tipo_vehiculo (id_tipo_vehiculo);

-----------------------------------------------------------------------------------------------------------------------


----------------------------------------Claves Foraneas RUTA------------------------------------------------------

ALTER TABLE ruta ADD CONSTRAINT fk_ruta_vehiculo FOREIGN KEY (id_vehiculo) REFERENCES vehiculo (id_vehiculo);

-----------------------------------------------------------------------------------------------------------------------


----------------------------------------Claves Foraneas CONTRATO------------------------------------------------------

ALTER TABLE contrato ADD CONSTRAINT fk_contrato_vehiculo FOREIGN KEY (id_vehiculo) REFERENCES vehiculo (id_vehiculo);

ALTER TABLE contrato ADD CONSTRAINT fk_contrato_conductor FOREIGN KEY (id_conductor) REFERENCES conductor (id_conductor);

-----------------------------------------------------------------------------------------------------------------------

