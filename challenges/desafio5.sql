CREATE VIEW top_2_hits_do_momento AS
SELECT
S.song_name AS `cancao`,
COUNT(RH.song_id) AS `reproducoes`
FROM SpotifyClone.songs AS S
JOIN SpotifyClone.reproduction_history AS RH ON RH.song_id = S.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
