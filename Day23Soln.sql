SELECT
  *
FROM
  (
    SELECT
      day_of_month,
      weight,
      weight - LAG(weight) OVER (ORDER BY day_of_month) AS weight_change
    FROM grinch_weight_log
    ORDER BY day_of_month
  )
WHERE weight_change IS NOT NULL;

SELECT
  wt_log_a.day_of_month,
  wt_log_a.weight,
  wt_log_a.weight - wt_log_b.weight AS weight_change
FROM
  grinch_weight_log AS wt_log_a
  LEFT JOIN grinch_weight_log AS wt_log_b
    ON wt_log_a.day_of_month = wt_log_b.day_of_month + 1
WHERE weight_change IS NOT NULL
ORDER BY wt_log_a.day_of_month;

SELECT
  wt_log.day_of_month,
  wt_log.weight,
  wt_log.weight - (
    SELECT grinch_weight_log.weight
    FROM grinch_weight_log
    WHERE grinch_weight_log.day_of_month = wt_log.day_of_month - 1
  ) AS weight_change
FROM grinch_weight_log AS wt_log
WHERE weight_change IS NOT NULL
ORDER BY wt_log.day_of_month;

SELECT
  wt_log_a.day_of_month,
  wt_log_a.weight,
  wt_log_a.weight - wt_log_b.weight AS weight_change
FROM
  grinch_weight_log AS wt_log_a
  INNER JOIN grinch_weight_log AS wt_log_b
    ON (wt_log_a.day_of_month + 1) - (wt_log_b.day_of_month + 1) = 1
ORDER BY wt_log_a.day_of_month;

SELECT
  wt_log_a.day_of_month,
  wt_log_a.weight,
  wt_log_a.weight - wt_log_b.weight AS weight_change
FROM
  grinch_weight_log AS wt_log_a
  INNER JOIN grinch_weight_log AS wt_log_b
    ON wt_log_a.day_of_month = wt_log_b.day_of_month + 1
ORDER BY wt_log_a.day_of_month;
