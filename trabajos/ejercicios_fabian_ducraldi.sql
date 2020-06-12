CREATE DATABASE libreria_cf; 


USE libreria_cf;


/* creamos la tiendas */ 
CREATE TABLE `tiendas` (
  `id_tienda` varchar(4) NOT NULL,
  `nombre_tienda` varchar(40) NOT NULL,
  `direcc_tienda` varchar(40) NOT NULL,
  `ciudad` varchar(15) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `pais` varchar(3) NOT NULL,
  `cod_postal` varchar(5) NOT NULL,
  `terminos` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `tiendas` (`id_tienda`, `nombre_tienda`, `direcc_tienda`, `ciudad`, `estado`, `pais`, `cod_postal`, `terminos`) 
VALUES ('7066', 'Barnum\'s', '567 Pasadena Ave.', 'Tustin', 'CA', 'USA', '92789', 'Net 30'),
('7067', 'News & Brews', '577 First St.', 'Los Gatos', 'CA', 'USA', '96745', 'Net 30'),
('7131', 'Doc-U-Mat: Quality Laundry and Books', '24-A Avrogado Way', 'Remulade', 'WA', 'USA', '98014', 'Net 60'),
('8042', 'Bookbeat', '679 Carson St.', 'Portland', 'OR', 'USA', '89076', 'Net 30'),
('6380', 'Eric the Read Books', '788 Catamaugus Ave.', 'Seattle', 'WA', 'USA', '98056', 'Net 60'),
('7896', 'Fricative Bookshop', '89 Madison St.', 'Fremont', 'CA', 'USA', '90019', 'Net 60'),
('5023', 'Thoreau Reading Discount Chain', '20435 Walden Expressway', 'Concord', 'MA', 'USA', '01776', 'Net 60');


SELECT * FROM tiendas; -- vemos nuestra tabla 

/* !) con esto espesificamos lo que queremos */
SELECT nombre_tienda, ciudad, estado FROM tiendas WHERE estado = 'WA';


/* Libros de ventas */

CREATE TABLE `titulos` (
  `id_titulo` varchar(6) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `id_pub` varchar(4) NOT NULL,
  `precio` double DEFAULT NULL,
  `avance` double DEFAULT NULL,
  `total_ventas` int(11) DEFAULT NULL,
  `notas` varchar(255) NOT NULL,
  `fecha_pub` datetime NOT NULL,
  `contrato` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `titulos` (`id_titulo`, `titulo`, `tipo`, `id_pub`, `precio`, `avance`, `total_ventas`, `notas`, `fecha_pub`, `contrato`) VALUES
('BU1032', 'The Busy Executived\'s Database Guide', 'business', '1389', 20, 5000, 4095, 'An overview of available database systems with emphasis on common business applications.  Illustrated.', '1986-06-12 12:00:00', '1'),
('BU1111', 'Cooking with Computers: Surreptitious Balance Sheets', 'business', '1389', 12, 5000, 3876, 'Helpful hints on how to use your electronic resources to the best advantage.', '1988-06-09 12:00:00', '1'),
('BU2075', 'You Can Combat Computer Stress!', 'business', '0736', 2.99, 10125, 18722, 'The latest medical and psychological techniques for living with the electronic office.  Easy-to-understand explanations.', '1985-06-30 12:00:00', '1'),
('BU7832', 'Straight Talk About Computers', 'business', '1389', 20, 5000, 4095, 'Annotated analysis of what computers can do for you: a no-hype guide for the critical user.', '1987-06-22 12:00:00', '1'),
('MC2222', 'Silicon Valley Gastronomic Treats', 'mod_cook', '0877', 20, 0, 2032, 'Favorite recipes for quick, easy, and elegant meals, tried and tested by people who never have time to eat, let alone cook.', '1989-06-09 12:00:00', '1'),
('MC3021', 'The Gourmet Microwave', 'mod_cook', '0877', 2.99, 15000, 22246, 'Traditional French gourmet recipes adapted for modern microwave cooking.', '1985-06-18 12:00:00', '1'),
('MC3026', 'The Psychology of Computer Cooking', 'UNDECIDED', '0877', NULL, NULL, NULL, '', '2000-01-10 12:19:59', '0'),
('PC1035', 'But Is It User Friendly?', 'popular_comp', '1389', 23, 7000, 8780, 'A survey of software for the naive user, focusing on the \'friendliness\' of each.', '1986-06-30 12:00:00', '1'),
('PC8888', 'Secrets of Silicon Valley', 'popular_comp', '1389', 20, 8000, 4095, 'Muckraking reporting by two courageous women on the world\'s largest computer hardware and software manufacturers.', '1987-06-12 12:00:00', '1'),
('PC9999', 'Net Etiquette', 'popular_comp', '1389', NULL, NULL, NULL, 'A must-read for computer conferencing debutantes!', '2000-01-10 12:19:13', '0'),
('PS1372', 'Computer Phobic and Non-Phobic Individuals: Behavior Variati', 'psychology', '0877', 21.6, 7000, 375, 'A must for the specialist, this book examines the difference between those who hate and fear computers and those who think they are swell.', '1989-06-15 12:00:00', '1'),
('PS2091', 'Is Anger the Enemy?', 'psychology', '0736', 11, 2275, 2045, 'Carefully researched study of the effects of strong emotions on the body.  Metabolic charts included.', '1989-06-15 12:00:00', '1'),
('PS2106', 'Life Without Fear', 'psychology', '0736', 7, 6000, 111, 'New exercise, meditation, and nutritional techniques that can reduce the shock of daily interactions. Popular audience.  Sample menus included, exercise video available separately.', '1990-10-05 12:00:00', '1'),
('PS3333', 'Prolonged Data Deprivation: Four Case Studies', 'psychology', '0736', 20, 2000, 4072, 'What happens when the data runs dry?  Searching evaluations of information-shortage effects on heavy users.', '1988-06-12 12:00:00', '1'),
('PS7777', 'Emotional Security: A New Algorithm', 'psychology', '0736', 7.99, 4000, 3336, 'Protecting yourself and your loved ones from undue emotional stress in the modern world.  Use of computer and nutritional aids emphasized.', '1988-06-12 12:00:00', '1'),
('TC3218', 'Onions, Leeks, and Garlic: Cooking Secrets of the Mediterran', 'trad_cook', '0877', 21, 7000, 375, 'Profusely illustrated in color, this makes a wonderful gift book for a cuisine-oriented friend.', '1990-10-21 12:00:00', '1'),
('TC4203', 'Fifty Years in Buckingham Palace Kitchens', 'trad_cook', '0877', 12, 4000, 15096, 'More anecdotes from the Queen\'s favorite cook describing life among English royalty.  Recipes, techniques, tender vignettes.', '1985-06-12 12:00:00', '1'),
('TC7777', 'Sushi, Anyone?', 'trad_cook', '0877', 15, 8000, 4095, 'Detailed instructions on improving your position in life by learning how to make authentic Japanese sushi in your spare time.  5-10% increase in number of friends per recipe reported from beta test.', '1987-06-12 12:00:00', '1');



/* 2) Para ver tipos libro hay  */
SELECT tipo FROM titulos;

/* 3) para ver los titulos exisene y la fecha de publicacion de los libros */
SELECT titulo, fecha_pub FROM titulos;

/* 4) para listar el precio mayor a $10 */
SELECT titulo, precio FROM titulos WHERE precio >= 10;

/* 5) para ver  los tipo de libro business.*/
SELECT  id_titulo, tipo, avance FROM titulos WHERE tipo = 'business'; 

/* 6) para ver todoso los libro que contena la palabra (cumputer)*/
SELECT id_titulo, titulo, tipo FROM titulos WHERE tipo = 'business' or titulo = "computers"; 

/* 7) para ver los libro llamado (pstcholoy) y que cuesten mas de $20 */
SELECT id_titulo, titulo, tipo, precio FROM titulos WHERE tipo = 'psychology' and precio > 20 ;

/* 8) para buscar los libro que este entre 10 y 20 de precio */
SELECT id_titulo, titulo, tipo, precio FROM titulos WHERE precio >= 10 and precio <= 20;

/* 9) para ver la categoria publicada (0877)*/
SELECT id_titulo, tipo, id_pub FROM titulos WHERE id_pub = 0877; 

/* 10) Encuentre el título del libro que está en la categoría ;psychology;, que
cuesta mas de $20 y que tiene la palabra Computer; en el título.*/

SELECT titulo, tipo, precio FROM titulos WHERE titulo = 'comupter' OR tipo = 'psychology' AND precio > 20;

/* 11) Encuentre aquellos libros que tienen un avance superior a $5000 y
han vendido menos de 4000 copias.*/

SELECT titulo, tipo, avance, total_ventas FROM titulos WHERE avance >= 5000 AND total_ventas =< 4000;

/* 12) Cuales son las categorías de libros que han vendido 4000 a 5000
copias en total.*/

SELECT titulo, tipo, total_ventas FROM titulos WHERE total_ventas >= '4000' AND total_ventas <= '5000';

/* 13) Cuales libros han vendido mas de 1000 copias y cuestan menos de
$10 en la categoría de &quot;business&quot; o en la categoría de cocina moderna
(&quot;mod_cook&quot;)*/

SELECT tipo, precio, total_ventas FROM titulos WHERE tipo = 'mod_cook' OR tipo = 'business' AND precio <= '10';