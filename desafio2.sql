SELECT
    COUNT(C.cancao) AS cancoes,
	COUNT( distinct A.artista) AS artistas,
    COUNT( distinct AL.album) AS albuns
FROM
    SpotifyClone.Cancoes AS C
INNER JOIN
    SpotifyClone.Albums AS AL ON AL.album_id = C.album_id
INNER JOIN
    SpotifyClone.Artistas AS A ON A.artista_id = AL.artista_id;