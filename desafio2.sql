SELECT 
  COUNT(id_cancao) AS cancoes,
  COUNT(DISTINCT id_artista) AS artistas,
  COUNT(DISTINCT id_album) AS albuns
FROM SpotifyClone.cancao;
