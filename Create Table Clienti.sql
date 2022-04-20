CREATE TABLE clienti(
  ID_cliente INT UNSIGNED NOT NULL AUTO_INCREMENT REFERENCES rapporto_clienti(ID_cliente),
  denominazione varchar(255) NOT NULL UNIQUE,
  p_iva varchar(16) NOT NULL UNIQUE,
  indirizzo varchar(255) NOT NULL,
  telefono varchar(10) NOT NULL UNIQUE,
  PRIMARY KEY(ID_cliente)
 );
