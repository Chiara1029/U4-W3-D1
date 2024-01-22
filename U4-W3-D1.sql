-- ESERCIZIO 1
-- SELECT * FROM clienti WHERE nome ILIKE 'Mario'

-- ESERCIZIO 2
-- SELECT * FROM clienti WHERE anno_di_nascita = 1982

-- ESERCIZIO 3
-- SELECT numero_fattura FROM fatture WHERE iva = 20

-- ESERCIZIO 4
-- SELECT * FROM prodotti WHERE EXTRACT(YEAR FROM data_attivazione) = 2017 AND in_produzione = true OR in_commercio = true

-- ESERCIZIO 5
-- SELECT fatture.numero_fattura, fatture.importo, clienti.nome, clienti.cognome FROM fatture JOIN clienti on fatture.id_cliente = clienti.numero_cliente WHERE importo < '1000'

-- ESERCIZIO 6
-- SELECT fatture.numero_fattura, fatture.importo, fatture.iva, fatture.data_fattura, fornitori.denominazione FROM fatture JOIN fornitori on fornitori.numero_fornitore = fatture.numero_fornitore

-- ESERCIZIO 7
-- SELECT EXTRACT(YEAR FROM data_fattura) as anno, COUNT(*) as numero_fatture FROM fatture WHERE iva = 20 GROUP BY EXTRACT(YEAR FROM data_fattura)

-- ESERCIZIO 8
-- SELECT EXTRACT(YEAR FROM data_fattura) as anno, COUNT(*) as numero_fatture, SUM(importo) as somma_importi FROM fatture GROUP BY EXTRACT(YEAR FROM data_fattura)

-- ESERCIZI EXTRA
-- ESERCIZIO 9
-- SELECT EXTRACT(YEAR FROM data_fattura) as anno FROM fatture WHERE tipologia = 'A' GROUP BY anno HAVING COUNT(*)>2

-- ESERCIZIO 10
-- SELECT clienti.regione_residenza, SUM(fatture.importo) as somma_importi FROM clienti JOIN fatture ON clienti.numero_cliente = fatture.id_cliente GROUP BY clienti.regione_residenza

-- ESERCIZIO 11
SELECT COUNT(DISTINCT numero_cliente) as numero_clienti FROM clienti JOIN fatture ON clienti.numero_cliente = fatture.id_cliente WHERE clienti.anno_di_nascita = 1980 AND fatture.importo > '50'