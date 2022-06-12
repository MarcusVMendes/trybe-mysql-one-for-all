CREATE VIEW historico_reproducao_usuarios AS
SELECT
U.user_name AS `usuario`,
S.song_name AS `nome`
FROM SpotifyClone.reproduction_history AS RH
JOIN SpotifyClone.users AS U ON U.user_id = RH.user_id
JOIN SpotifyClone.songs AS S ON S.song_id = RH.song_id
ORDER BY `usuario`, `nome`; 