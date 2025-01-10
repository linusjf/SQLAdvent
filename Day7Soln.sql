SELECT
  vendors.vendor_name,
  TOTAL(sales.quantity_sold * sales.price_per_unit) AS total_revenue
FROM
  vendors
  INNER JOIN sales ON vendors.vendor_id = sales.vendor_id
GROUP BY
  vendors.vendor_name
ORDER BY
  total_revenue DESC
LIMIT
  2;
