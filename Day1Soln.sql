SELECT
  customer_name,
  COUNT(DISTINCT activity) AS cnt
FROM
  rentals
GROUP BY
  customer_name
HAVING
  cnt > 1;
