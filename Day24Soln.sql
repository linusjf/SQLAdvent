SELECT
  delivery_date,
  SUM(gifts_delivered) OVER (
    ORDER BY
      delivery_date -- Window ordering (not necessarily the same as result ordering!)
      ROWS BETWEEN -- Window for the SUM includes these rows:
      UNBOUNDED PRECEDING -- all rows before current one in window ordering
      AND CURRENT ROW -- up to and including current row.
  ) AS cumulative_sum
FROM
  deliveries
ORDER BY
  delivery_date;

SELECT
  a.delivery_date AS delivery_date,
  SUM(b.gifts_delivered) AS cumulative_sum
FROM
  deliveries AS a,
  deliveries AS b
WHERE
  b.delivery_date <= a.delivery_date
GROUP BY
  a.delivery_date
ORDER BY
  delivery_date;

SELECT
  delivery_date,
  gifts_delivered,
  SUM(gifts_delivered) OVER (
    ORDER BY
      delivery_date
  ) AS cumulative_gifts
FROM
  deliveries
ORDER BY
  delivery_date;
