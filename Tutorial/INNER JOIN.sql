SELECT dipendenti.ID_dipendente, dipendenti.nome, uffici.nome_ufficio
FROM dipendenti
INNER JOIN uffici ON dipendenti.ID_ufficio = uffici.ID_ufficio;


/*

INNER JOIN prende solo la parte in comune dell'insieme quindi, tutti i dipendenti (id e nome)
dalla tabella di pendenti e la intersechi con la tabella uffici con gli id_ufficio dei dipendenti
uguale a quello degli uffici stessi

*/

