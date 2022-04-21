/*SELECT ALIAS.ID_dipendente, alias.nome, alias2.nome_ufficio
FROM dipendenti AS ALIAS
INNER JOIN uffici AS ALIAS2 ON alias.ID_ufficio = alias2.ID_ufficio*/

/* Esempio di INNER JOIN rifatto con gli Alias sulle tabelle */

SELECT nome, DATE_FORMAT(data_assunzione, '%e %M, %Y')AS Dal FROM dipendenti;

/* Esempio di query che riporta due colonne di cui una rinominata con un ALIAS 
   Qui è servito fare una funzione che formattasse la data in maniera più leggibile
   di conseguneza il risultato del nome della colonna sarebbe stato complesso
   rinominarlo con un ALIAS è la cosa migliore */
