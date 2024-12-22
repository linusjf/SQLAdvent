SELECT DISTINCT
  v.vendor_name
FROM
  sellers v
  JOIN item_prices ip USING (vendor_id)
WHERE
  ip.price_usd < 10;
