SELECT
  a.artista AS artista,
  al.album AS album
FROM
  artista a
JOIN
  album al ON a.artista_id = al.artista_id
WHERE
  a.artista = 'Elis Regina'
ORDER BY
  al.album ASC;
