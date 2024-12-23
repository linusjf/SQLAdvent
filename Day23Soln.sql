SELECT * from (
SELECT
  day_of_month,
  weight,
  weight - LAG(weight) OVER (ORDER BY day_of_month) AS weight_change
FROM
  grinch_weight_log
ORDER BY
  day_of_month
) WHERE weight_change IS NOT NULL;

SELECT
  g1.day_of_month,
  g1.weight,
  g1.weight - g2.weight AS weight_change
FROM
  grinch_weight_log g1
  LEFT JOIN grinch_weight_log g2 ON g1.day_of_month = g2.day_of_month + 1
WHERE weight_change IS NOT NULL
ORDER BY
  g1.day_of_month;

SELECT
  day_of_month,
  weight,
  weight - (SELECT weight FROM grinch_weight_log WHERE day_of_month = g.day_of_month - 1) AS weight_change
FROM
  grinch_weight_log g
WHERE weight_change IS NOT NULL
ORDER BY
  day_of_month;
