--PHASE 2 : 

--Exercice 4 : 

--1.
SELECT  s.pseudo, COALESCE(COUNT(st.id_stream), 0) AS sttream_count
FROM Streamer s
JOIN Stream st ON st.id_streamer = s.id_streamer
GROUP BY s.pseudo

--2.

UPDATE Defi
SET etat_validation = TRUE
WHERE id_defi IN (1, 3, 5, 7, 9);

--3.
SELECT 
    d.intitule,
    SUM(d.montant_palier) AS total_paliers_valides
FROM defi d
WHERE d.etat_validation = TRUE
GROUP BY d.intitule;

