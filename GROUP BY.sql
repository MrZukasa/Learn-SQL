/* Group By serve ad aggregare le righe con lo stesso valore mentrel'HAVING
   serve per raggruppare direttamente il risulato di un gruppo, HAVING a differenza
   di WHERE agisce direttamente sull'aggregato ossia sul risultato del GROUP BY */


SELECT x.nome_ufficio, COUNT(y.ID_dipendente) AS Totale
FROM uffici AS x
LEFT JOIN dipendenti AS y
ON x.ID_ufficio = y.ID_ufficio
GROUP BY x.nome_ufficio
HAVING Totale = 2
