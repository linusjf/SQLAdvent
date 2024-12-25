SELECT
    delivery_date,
    SUM(gifts_delivered) OVER (
        ORDER BY delivery_date -- Window ordering (not necessarily the same as result ordering!)
        ROWS BETWEEN -- Window for the SUM includes these rows:
            UNBOUNDED PRECEDING -- all rows before current one in window ordering
            AND CURRENT ROW -- up to and including current row.
        ) AS cumulative_sum
FROM deliveries
ORDER BY delivery_date;
