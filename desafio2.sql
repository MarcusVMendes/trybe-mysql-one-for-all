CREATE VIEW estatisticas_musicais AS
SELECT
COUNT(DISTINCT S.song_id) AS `cancoes`,
COUNT(DISTINCT A.artist_id) AS `artistas`,
COUNT(DISTINCT AL.album_id) AS `albuns`
FROM SpotifyClone.artists AS A
JOIN SpotifyClone.albums AS AL ON AL.artist_id = A.artist_id
JOIN SpotifyClone.songs AS S ON S.album_id = AL.album_id;
