SELECT
  c.cancao AS nome,
  COUNT(h.id_cancao) AS reproducoes 
FROM SpotifyClone.cancao AS c
  INNER JOIN SpotifyClone.historico_usuario AS h
    ON c.id_cancao = h.id_cancao
  INNER JOIN SpotifyClone.usuario AS u
    ON h.id_usuario = u.id_usuario
  INNER JOIN SpotifyClone.plano AS p
	ON u.id_plano = p.id_plano
	WHERE p.id_plano = 1 OR p.id_plano = 3
GROUP BY nome
ORDER BY nome;
