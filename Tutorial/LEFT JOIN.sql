SELECT dipendenti.ID_dipendente, dipendenti.nome, uffici.nome_ufficio
FROM dipendenti
LEFT JOIN uffici on dipendenti.ID_ufficio = uffici.ID_ufficio

/*

la LEFT JOIN prende tutta la tabella di sinistra più l'intersezione tra le due tabelle

*/
