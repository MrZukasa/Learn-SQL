SELECT dipendenti.ID_dipendente, dipendenti.nome, uffici.nome_ufficio
FROM dipendenti
RIGHT JOIN uffici on dipendenti.ID_ufficio = uffici.ID_ufficio

/*

la RIGHT JOIN prende tutta la tabella di destra più l'intersezione tra le due tabelle

*/
