SELECT
  COUNT(id_cancao) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_usuario
  WHERE id_usuario = 3;
