/* Clonare le tabelle è comodo per fare sperimetnazioni senza perdere dati */

CREATE TABLE IF NOT EXISTS nuova_tabella LIKE prova;
INSERT INTO nuova_tabella SELECT * FROM prova;

/* Possiamo anche clonare solo i dati senza constraint */
CREATE TABLE nuova_tabella_semplice SELECT * FROM prova;
