--Exercice 2 : Requêtes SQL

-- 1. Tous les streamers avec leur URL Twitch, ordonnés par pseudo
SELECT s.id_streamer, s.pseudo, s.url_twitch
FROM Streamer s;


-- 2. Les créneaux du samedi 2025-09-06
SELECT *
FROM creneau
WHERE DATE(date_debut_autorisee) = '2025-09-06'
   OR DATE(date_fin_autorisee) = '2025-09-06';

-- 3. Les défis validés ayant un montant palier > 5000€
SELECT d.montant_palier
FROM defi d
WHERE d.montant_palier > 5000;

-- 4. Les streams dont la date de fin effective est NULL (non terminés)
SELECT st.id_stream
FROM stream st
WHERE st.date_fin_effective IS NULL;

