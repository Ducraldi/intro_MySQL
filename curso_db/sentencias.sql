-- creando eso 
DROP DATABASE librerate_cf;

CREATE DATABASE librerate_cf;

USE librerate_cf;

CREATE TABLE autores(
    autor_id INT,
    nombre VARCHAR(25),
    apellido VARCHAR(25),
    genero CHAR(1),
    fecha_nacimiento DATE,
    pais_origen VARCHAR(40)
); 


INSERT INTO autores(autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (1, 'Ducraldi', 'Fabian', 'M', '2000-05-24', 'Republica Dominicana'),
    (1, 'Ducraldi', 'Fabian', 'M', '2000-05-24', 'Republica Dominicana'),
    (1, 'Ducraldi', 'Fabian', 'M', '2000-05-24', 'Republica Dominicana'),
    (1, 'Ducraldi', 'Fabian', 'M', '2000-05-24', 'Republica Dominicana'),
    (1, 'Ducraldi', 'Fabian', 'M', '2000-05-24', 'Republica Dominicana');