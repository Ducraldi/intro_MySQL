/* DROP DATABASE librerate_cf;
    CREATE DATABASE librerate_cf

    USE librerate;

*/


/* 
Que tipo de entidades? autores 
nombre : autores 
*/

Nombre 
Genero
Fecha de nacimiento 
pais de origen 

columna y el tipo de dato 

CREATE TABLE autores(
    autor_id INT,
    nombre VARCHAR(25),
    apellido VARCHAR(25),
    genero CHAR(1), --M o F
    fecha_nacimiento DATE,
    pais_origen VARCHAR(40)
); 

/* para agregar registro a la variable que hicimos es esto*/
INSERT INTO autores(autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (1, 'Test autor', 'Test autor', 'M', '2020-06-04', 'Republica Dominicana');

/*para ver el resultado 
    SELECT * FROM autores; 
*/

/* para registrar multiples*/
INSERT INTO autores(autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (1, 'Ducraldi', 'Fabian', 'M', '2000-05-24', 'Republica Dominicana'),
    (1, 'Ducraldi', 'Fabian', 'M', '2000-05-24', 'Republica Dominicana'),
    (1, 'Ducraldi', 'Fabian', 'M', '2000-05-24', 'Republica Dominicana'),
    (1, 'Ducraldi', 'Fabian', 'M', '2000-05-24', 'Republica Dominicana'),
    (1, 'Ducraldi', 'Fabian', 'M', '2000-05-24', 'Republica Dominicana');


/*para ordenar tablas */

WHERE id > 3 

ORDER BY  genero, edad; 
