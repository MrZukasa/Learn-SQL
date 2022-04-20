ALTER TABLE rapporto_clienti ADD prova varchar(50) NOT NULL;
/* Aggiungere una colonna in una tabella */

ALTER TABLE rapporto_clienti
MODIFY prova varchar(50) AFTER ID_rapporto;*/
/* Cambiare la posizione di una tabella */

ALTER TABLE rapporto_clienti
ADD UNIQUE (prova);
/* Aggiungere dei constraint*/

ALTER TABLE rapporto_clienti
DROP COLUMN prova;
/* Eliminare una colonna */

ALTER TABLE rapporto_clienti
MODIFY prova int;
/* Cambiare il tipo di dato di una colonna */

ALTER TABLE rapporti_clienti
RENAME rapporto_clienti;
/* Rinominare la tabella */
