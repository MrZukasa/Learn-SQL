SELECT * FROM clienti
WHERE clienti.denominazione LIKE 'S_________' ;

/*
LIKE
sono la cosa più vicina alle regex di PHP
si usano per definire dei pattern di ricerca
- per individuare un carattere che comincia con si usa il carattere in questione seguito dal %
  per esempio inizia con C si scrive 'C%'
- per individuare un carattere che finisce con ui usa il carattere in questione preceduto dal %
  per esempio finisce con C si scrive '%C'
  il carattere % serve per identificare un numero indefinito di caratteri, quindi è possibile
  utilizzarlo sia prima che dopo il nostro carattere ricercato
- per identificare un numero di caratteri fissi si usa il '_' quindi sarà un certo numero di '_'
  seguito dal carattere che vogliamo usare oppure il carattere seguito dal numero di '_' che 
  compongono la parola
- Posso combinare l'utilizzo delle due cose ovviamente, sia '%' che '_'
*/
