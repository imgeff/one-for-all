SELECT
A.artista,
AL.album,
COUNT(S.artista_id) AS seguidores
FROM SpotifyClone.Artistas AS A
INNER JOIN SpotifyClone.Albums AS AL
ON A.artista_id = AL.artista_id
INNER JOIN SpotifyClone.Seguidores S
ON S.artista_id = AL.artista_id
GROUP BY A.artista, AL.album
ORDER BY seguidores DESC, A.artista, AL.album;