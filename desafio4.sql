SELECT u.usuario as usuario,
 CASE 
   WHEN
   SUM(CASE
     WHEN YEAR(data_reproducao) = 2021
     THEN 1
     ELSE 0
	END) > 0
    THEN "Usuário ativo"
    ELSE "Usuário inativo"
  END
AS condicao_usuario
FROM SpotifyClone.historico_usuario AS h
  INNER JOIN SpotifyClone.usuario AS u
    ON h.id_usuario = u.id_usuario
GROUP BY u.usuario
ORDER BY u.usuario;
