SELECT 
U.usuario,
COUNT(R.usuario_id) AS 'qtde_musicas_ouvidas',
ROUND(SUM(C.duracao_segundos) / 60, 2) AS 'total_minutos'
FROM SpotifyClone.Usuarios AS U
INNER JOIN SpotifyClone.HistoricoReproducoes AS R
ON U.usuario_id = R.usuario_id
INNER JOIN SpotifyClone.Cancoes C
ON R.cancao_id = C.cancao_id
GROUP BY U.usuario
ORDER BY U.usuario;