CREATE TABLE IF NOT EXISTS corsi(
    ID_corso INT NOT NULL AUTO_INCREMENT REFERENCES studenti_corsi(ID_corso),
    nome VARCHAR(25) NOT NULL,
    data_inizio DATE,
    data_fine DATE,
    costo INT NOT NULL,
    partecipanti_max INT NOT NULL,
    ID_docente INT NOT NULL,
    PRIMARY KEY (ID_corso)
);