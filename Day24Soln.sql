SELECT
  delivery_date,
  SUM(gifts_delivered) OVER (
    ORDER BY delivery_date -- Window ordering (not necessarily the same as result ordering!)
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW -- Window for the SUM includes these rows: -- all rows before current one in window ordering -- up to and including current row.
  ) AS cumulative_sum
FROM deliveries
ORDER BY delivery_date;

SELECT
  del_a.delivery_date,
  SUM(del_b.gifts_delivered) AS cumulative_sum
FROM
  deliveries AS del_a,
  deliveries AS del_b
WHERE del_b.delivery_date <= del_a.delivery_date
GROUP BY del_a.delivery_date
ORDER BY del_a.delivery_date;

SELECT
  delivery_date,
  gifts_delivered,
  SUM(gifts_delivered) OVER (ORDER BY delivery_date) AS cumulative_gifts
FROM deliveries
ORDER BY delivery_date;

SELECT
  dels.delivery_date,
  dels.gifts_delivered,
  (
    SELECT SUM(deliveries.gifts_delivered)
    FROM deliveries
    WHERE deliveries.delivery_date <= dels.delivery_date
  ) AS cumulative_gifts
FROM deliveries AS dels
ORDER BY dels.delivery_date;
