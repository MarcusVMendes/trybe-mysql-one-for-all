CREATE VIEW perfil_artistas AS
SELECT
A.artist_name AS `artista`,
AL.album_name AS `album`,
COUNT(F.artist_id) AS `seguidores`
FROM SpotifyClone.albums AS AL
JOIN SpotifyClone.artists AS A ON A.artist_id = AL.artist_id
JOIN SpotifyClone.follows AS F ON F.artist_id = A.artist_id
GROUP BY AL.album_id
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
