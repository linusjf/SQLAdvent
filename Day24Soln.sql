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
  del_a.delivery_date,
  SUM(del_b.gifts_delivered) AS cumulative_sum
FROM
  deliveries AS del_a,
  deliveries AS del_b
WHERE
  del_b.delivery_date <= del_a.delivery_date
GROUP BY
  del_a.delivery_date
ORDER BY
  del_a.delivery_date;

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

SELECT
  delivery_date,
  gifts_delivered,
  (
    SELECT SUM(gifts_delivered)
    FROM
      deliveries
    WHERE
      delivery_date <= dels.delivery_date
  ) AS cumulative_gifts
FROM
  deliveries AS dels
ORDER BY
  delivery_date;
