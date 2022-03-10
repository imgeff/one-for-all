SELECT
C.cancao,
COUNT(R.cancao_id) AS reproducoes
FROM SpotifyClone.Cancoes C
INNER JOIN SpotifyClone.HistoricoReproducoes R
ON C.cancao_id = R.cancao_id
GROUP BY R.cancao_id
ORDER BY reproducoes DESC, C.cancao
LIMIT 2;