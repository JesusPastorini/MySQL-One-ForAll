SELECT
  ROUND(MIN(p.valor), 2) AS faturamento_minimo,
  ROUND(MAX(p.valor), 2) AS faturamento_maximo,
  ROUND(AVG(p.valor), 2) AS faturamento_medio,
  ROUND(SUM(p.valor), 2) AS faturamento_total
FROM
  pessoa_usuaria pu
JOIN
  plano p ON pu.plano_id = p.plano_id;
