SELECT
  recipient,
  total(weight_kg) AS total_wt
FROM
  presents
GROUP BY
  recipient;
