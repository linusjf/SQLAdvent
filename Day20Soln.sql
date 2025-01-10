SELECT DISTINCT sellers.vendor_name
FROM
  sellers
  INNER JOIN item_prices USING (vendor_id)
WHERE
  item_prices.price_usd < 10;
