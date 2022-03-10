SELECT
A.artista,
AL.album
FROM SpotifyClone.Artistas AS A
INNER JOIN SpotifyClone.Albums AS AL
ON A.artista_id = AL.artista_id
WHERE A.artista = 'Walter Phoenix'
ORDER BY AL.album;