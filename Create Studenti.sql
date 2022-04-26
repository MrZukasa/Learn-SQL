CREATE TABLE IF NOT EXISTS studenti(
    ID_studente INT NOT NULL AUTO_INCREMENT REFERENCES studenti_corsi(ID_studente),
    nome VARCHAR(25) NOT NULL,
    cognome VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    data_nascita DATE,
    PRIMARY KEY (ID_studente)
);