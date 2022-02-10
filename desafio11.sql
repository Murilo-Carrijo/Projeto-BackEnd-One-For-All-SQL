SELECT
  cancao AS nome_musica,
  CASE
  WHEN cancao LIKE "%Streets%" THEN replace(cancao, "Streets", "Code Review")
    WHEN cancao LIKE "%Her Own%" THEN replace(cancao, "Her Own", "Trybe")
    WHEN cancao LIKE "%Inner Fire%" THEN replace(cancao, "Inner Fire", "Project")
    WHEN cancao LIKE "%Silly%" THEN replace(cancao, "Silly", "Nice")
    WHEN cancao LIKE "%Circus%" THEN replace(cancao, "Circus", "Pull Request")
    ELSE cancao
  END AS novo_nome
FROM SpotifyClone.cancao
WHERE cancao RLIKE "Streets|Her Own|Inner Fire|Silly|Circus";
