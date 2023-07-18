SELECT
  a.artista AS artista,
  al.album AS album,
  COUNT(psa.pessoa_usuaria_id) AS pessoas_seguidoras
FROM
  artista a
JOIN
  album al ON a.artista_id = al.artista_id
LEFT JOIN
  pessoa_seguindo_artista psa ON a.artista_id = psa.artista_id
GROUP BY
  a.artista, al.album
ORDER BY
  COUNT(psa.pessoa_usuaria_id) DESC, a.artista, al.album;
