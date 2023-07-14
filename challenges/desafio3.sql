SELECT
  p.nome_pessoa_usuaria AS pessoa_usuaria,
  COUNT(h.musica_id) AS musicas_ouvidas,
  ROUND(SUM(m.duracao_segundos) / 60.0, 2) AS total_minutos
FROM pessoa_usuaria p
JOIN historico_de_reproducoes h ON p.pessoa_usuaria_id = h.pessoa_usuaria_id
JOIN musica m ON h.musica_id = m.musica_id
GROUP BY p.nome_pessoa_usuaria
ORDER BY p.nome_pessoa_usuaria;
