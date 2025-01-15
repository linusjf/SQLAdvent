SELECT
  recipient,
  TOTAL(weight_kg) AS total_wt
FROM presents
GROUP BY recipient;
