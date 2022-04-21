CREATE TABLE IF NOT EXISTS rapporto_clienti(
   ID_rapporto INT NOT NULL AUTO_INCREMENT,
   ID_cliente INT NOT NULL,
   ID_dipendente INT NOT NULL,
  PRIMARY KEY (ID_rapporto)
);
