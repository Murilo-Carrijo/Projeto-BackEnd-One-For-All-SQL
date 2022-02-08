SELECT
  a.artista AS artista,
  al.album AS album,
  COUNT(s.id_usuario) AS seguidores 
FROM SpotifyClone.artista AS a
  INNER JOIN SpotifyClone.album AS al
    ON a.id_artista = al.id_artista
  INNER JOIN SpotifyClone.seguindo_artista AS s
    ON a.id_artista = s.id_artista
GROUP BY a.artista, al.album
ORDER BY
  seguidores DESC,
  artista,
  album;
