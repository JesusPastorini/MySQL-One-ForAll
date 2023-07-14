SELECT
  m.musica AS cancao,
  COUNT(h.musica_id) AS reproducoes
FROM musica m
LEFT JOIN historico_de_reproducoes h ON m.musica_id = h.musica_id
GROUP BY m.musica_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
