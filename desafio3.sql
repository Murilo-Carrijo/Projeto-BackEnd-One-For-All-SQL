SELECT 
  u.usuario AS usuario, 
  COUNT(h.id_cancao) AS qtde_musicas_ouvidas,
  ROUND(SUM(c.duracao)/60, 2) AS total_minutos
FROM SpotifyClone.historico_usuario AS h
  INNER JOIN SpotifyClone.usuario AS u
    ON h.id_usuario = u.id_usuario
  INNER JOIN SpotifyClone.cancao AS c
    ON h.id_cancao = c.id_cancao
 GROUP BY u.id_usuario
 ORDER BY u.usuario;
