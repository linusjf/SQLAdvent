SELECT
  vendor_name,
  TOTAL(quantity_sold * price_per_unit) AS total_revenue
FROM
  vendors AS a
  INNER JOIN sales AS b ON a.vendor_id = b.vendor_id
GROUP BY
  vendor_name
ORDER BY
  total_revenue DESC
LIMIT
  2;
