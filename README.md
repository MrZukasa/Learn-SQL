### Lista delle Query sviluppate 📝
1. tutti di docenti
```sql
SELECT * FROM docenti;
```
2. email studenti maggiorenni
```sql
SELECT email FROM studenti WHERE data_nascita < date_sub(current_date(), INTERVAL 18 year);
```
3. corsi già terminati
```sql
SELECT * FROM corsi WHERE data_fine < current_date();
```
4. prossimi corsi in programma
```sql
SELECT * FROM corsi WHERE data_inizio >= current_date();
```
5. prossimi corsi che costano meno di [scegliere cifra]
```sql
SELECT * FROM corsi WHERE data_inizio >= current_date() AND costo <= 100;
```
6. tutti i corsi di un docente
```sql
SELECT * FROM corsi WHERE ID_docente = 1;
```
7. tutti i corsi passati di un docente
```sql
SELECT * FROM corsi WHERE ID_docente = 1 and data_fine < current_date();
```
8. numero studenti iscritti ad un particolare corso
```sql
SELECT COUNT(*) AS Partecipanti FROM studenti_corsi WHERE ID_corso = 8;
```
9.  corsi che hanno raggiunto la capacità massima
```sql
SELECT corsi.ID_corso, corsi.nome, corsi.partecipanti_max, count(studenti_corsi.ID) AS Numero FROM studenti_corsi
INNER JOIN corsi ON corsi.ID_corso = studenti_corsi.ID_corso
GROUP BY studenti_corsi.ID_corso 
HAVING Numero >= corsi.partecipanti_max;
```
ho dovuto usare `HAVING` per estrapolare un filtro direttamente sul ***risultato*** della SELECT.

10. numero di corsi frequentati da uno studente
```sql
SELECT studenti.ID_studente, studenti.nome, studenti.cognome, COUNT(studenti_corsi.ID) AS Corsi FROM studenti INNER JOIN studenti_corsi ON studenti.ID_studente = studenti_corsi.ID_studente GROUP BY studenti_corsi.ID_studente;
```
seleziono tutti i campi che mi servono più il conteggio degli ID comuni tra studenti e corsi, cosi da sapere quanti record ho, poi faccio l'inner join e li raggruppo per ID_studente (che avrei potutto prendere da ovunque).

11. lista corsi frequentati da uno studente
```sql
SELECT corsi.ID_corso, corsi.nome AS Nome_Corso, studenti.nome AS Nome_Studente FROM corsi 
INNER JOIN studenti_corsi ON studenti_corsi.ID_corso = corsi.ID_corso
INNER JOIN studenti ON studenti.ID_studente = studenti_corsi.ID_studente
WHERE studenti_corsi.ID_studente = 1;
```
la richiesta probabilmente non era di portare anche il nome dello studente, ma ho preferito farlo dato che comporta solo un `INNER JOIN` aggiuntiva.

12. calcolare quante volte i corsi sono stati riproposti
```sql
SELECT corsi.nome AS Nome_Corso, COUNT(*) AS Riproposte FROM corsi GROUP BY corsi.nome;
```
13. l'insegnate con più corsi insegnati
```sql
SELECT docenti.nome AS Nome_Docente, docenti.cognome AS Cognome_Docente, COUNT(corsi.ID_docente) AS Numero_Corsi FROM docenti
INNER JOIN corsi ON docenti.ID_docente = corsi.ID_docente
GROUP BY corsi.ID_docente ORDER BY Numero_Corsi DESC;
```
la richeista era quella dell'estrapolare il docente con più corsi insegnati, ma io li estraggo tutti e li ordino, caso in qui si voglia averne a video solo uno si aggiungerà `LIMIT 1` al fondo, per limitare la query al primo risultato.

14. top 3 studenti più partecipi
```sql
SELECT studenti.nome, studenti.cognome, COUNT(studenti_corsi.ID_studente) AS Frequentazioni FROM studenti
INNER JOIN studenti_corsi ON studenti.ID_studente = studenti_corsi.ID_studente
GROUP BY studenti_corsi.ID_studente ORDER BY Frequentazioni DESC LIMIT 3;
```
15. il primissimo corso che abbiamo rilasciato
```sql
SELECT * FROM corsi ORDER BY data_inizio ASC LIMIT 1;
```
16. lista degli studenti che hanno partecipato al corso di un insegnante specifico.
```sql
SELECT studenti.nome AS Nome_Studente, studenti.cognome AS Cognome_Studente, 
docenti.nome AS Nome_Docente, docenti.cognome AS Cognome_Docente, COUNT(studenti.ID_studente) AS Numero_Corsi
FROM studenti
INNER JOIN studenti_corsi ON studenti.ID_studente = studenti_corsi.ID_studente
INNER JOIN corsi ON corsi.ID_corso = studenti_corsi.ID_corso
INNER JOIN docenti ON docenti.ID_docente = corsi.ID_docente
WHERE corsi.ID_docente = 1 GROUP BY studenti.ID_studente;
```
Ho aggiunto la possibilità di vedere di che docente si stesse parlando ed anche il numero di corsi che una persona frequenta, evitando le ripetizioni, non c'era modo di tenere traccia del numero di corsi di una persona sola altrimenti.

## Comandi utili MySql 🛣️
- Loggare nel DB con `mysql -u root -p`
- Leggere la lista dei Databases con `SHOW DATABASES;`
- Creare un database con `CREATE DATABASES nome_db;`
- Usare un database `USE nome_db;`
- Vedere le tabelle di un database `SHOW TABLES;`
- Vedere la struttura di una tabella `DESCRIBE nome_tabella;`
- Per vedere il contenuto delle tabelle basterà fare un query di select.
- Per loggare quello che faccio con MySql da terminale basta lanciare `tee nomefile` e lui loggerà tutti i risultati dentro quel file.
- Per interrompere il log si fa `\t`.