SELECT 
  a.artista AS artista,
  al.album AS album
FROM SpotifyClone.artista AS a
  INNER JOIN SpotifyClone.album AS al
  ON a.id_artista = al.id_artista
LIMIT 2;
