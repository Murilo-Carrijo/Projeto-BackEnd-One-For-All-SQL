SELECT 
  c.cancao AS cancao,
  COUNT(h.id_cancao) AS reproducoes
FROM SpotifyClone.cancao AS c
  INNER JOIN SpotifyClone.historico_usuario AS h
    ON h.id_cancao = c.id_cancao
GROUP BY c.cancao
ORDER BY
  reproducoes DESC,
  cancao
LIMIT 2;
