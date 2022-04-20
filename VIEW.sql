/* Le View sono delle query 'salvate', o meglio uno statement SQL salvato */

CREATE VIEW prova AS 
SELECT x.ID_dipendente, x.nome, y.ID_ufficio
FROM dipendenti AS x
LEFT JOIN uffici AS y
ON x.ID_ufficio = y.ID_ufficio;

/* Per richiamarne il risultato dobbiamo fare */

SELECT * FROM prova

/* Con le VIEW è possibile fare SELECT, INSERT, UPDATE ecc.. */
/* E' possibile rimpiazzare una VIEW con */

CREATE OR REPLACE VIEW prova

/* Per cancellare una VIEW basta fare */

DROP VIEW prova
