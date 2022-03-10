SELECT
U.usuario,
IF (MAX(YEAR(R.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.Usuarios U
INNER JOIN SpotifyClone.HistoricoReproducoes R
ON U.usuario_id = R.usuario_id
GROUP BY U.usuario
ORDER BY U.usuario;