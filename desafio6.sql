CREATE VIEW faturamento_atual AS
SELECT
MIN(P.signature_price) AS `faturamento_minimo`,
MAX(P.signature_price) AS `faturamento_maximo`,
ROUND(AVG(P.signature_price), 2)AS `faturamento_medio`,
SUM(P.signature_price) AS `faturamento_total`
FROM SpotifyClone.premium AS P
JOIN SpotifyClone.users AS U ON U.signature_id = P.signature_id;
