DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN param VARCHAR(50))
BEGIN
SELECT
A.artist_name AS `artista`,
AL.album_name AS `album`
FROM SpotifyClone.artists AS A
JOIN SpotifyClone.albums AS AL ON AL.artist_id = A.artist_id
WHERE param = A.artist_name;
END $$

DELIMITER ;
