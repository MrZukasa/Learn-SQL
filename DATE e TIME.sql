/* Date in SQL

	I tipi di dati in SQL sono 5:

	DATE		YYYY-MM-DD				1000-01-01 to 9999-12-31
	TIME		HH:MM:SS or HHH:MM:SS	-838:59:59 to 838:59:59
	DATETIME	YYYY-MM-DD HH:MM:SS		1000-01-01 00:00:00 to 9999-12-31 23:59:59
	TIMESTAMP	YYYY-MM-DD HH:MM:SS		1970-01-01 00:00:00 to 2037-12-31 23:59:59
	YEAR		YYYY					1901 to 2155
    
*/

CREATE TABLE IF NOT EXISTS prova(
  id INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL UNIQUE,
  data_nascita DATE NOT NULL,
  data_inserimento DATETIME DEFAULT CURRENT_TIMESTAMP,
  data_modifica TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 );
 
INSERT INTO prova (nome, data_nascita, data_inserimento)
VALUES ('Luca','1995-06-06',NOW());			/* con NOW() ottengo il momento attuale per i DATETIME e i TIME STAMP */
 
SELECT nome, YEAR(data_nascita) FROM prova;
/* con YEAR estrapolo solo l'anno del campo DATE, stessa cosa si fa con
   MONTH, DAYOFMONTH, MONTHNAME, DAYNAME, HOUR, MINUTE, SECOND */
   
SELECT nome, DATE_FORMAT(data_nascita, '%e %M, %Y') AS Nascita FROM prova;
/* con la funzione DATE_FORMAT si formatta la data in un formato più leggibile 
 i parametri sono disponibili qui https://www.w3schools.com/sql/func_mysql_date_format.asp */
