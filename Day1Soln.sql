SELECT
  customer_name,
  count(DISTINCT activity) AS cnt
FROM
  rentals
GROUP BY
  customer_name
HAVING
  cnt > 1;
