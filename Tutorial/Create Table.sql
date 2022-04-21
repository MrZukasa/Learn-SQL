CREATE TABLE IF NOT EXISTS dipendenti(
  ID_dipendente INT UNSIGNED NOT NULL AUTO_INCREMENT REFERENCES rapporto_clienti(ID_dipendente),
  nome VARCHAR(20) NOT NULL,
  cognome VARCHAR(20) NOT NULL,
  data_assunzione DATE NOT NULL,
  stipendio DECIMAL NOT NULL CHECK (stipendio >= 1200 AND stipendio <= 5000),
  telefono VARCHAR(10) NOT NULL UNIQUE,
  mansione VARCHAR(255) NOT NULL DEFAULT 'Impiegato',
  PRIMARY KEY(ID_dipendente)
);

/*
CONSTRAINT 
	- NOT NULL (non può essere vuoto)
    - PRIMARY KEY (rende il valore un identificatore univoco)
    - UNIQUE (identifica un campo che è unico) esempio del numero di telefono
    - DEFAULT (indica un campo di default, caso in cui non si inserisca nulla) esempio mansione
    - CHECK (comprende il valore tra un minimo ad un massimo)
    - FOREIGN KEY (chiave esterna) ci permette di correlare piu tabelle
    - REFERENCES crea un rapporto tra le echiavi esterne di più tabelle
*/
