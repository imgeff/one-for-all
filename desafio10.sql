SELECT
C.cancao AS nome,
COUNT(H.cancao_id) AS reproducoes
FROM SpotifyClone.Cancoes AS C
INNER JOIN SpotifyClone.HistoricoReproducoes AS H
ON C.cancao_id = H.cancao_id
WHERE H.usuario_id IN(1, 4, 5)
GROUP BY C.cancao
ORDER BY C.cancao;
