select vendor_name, total(quantity_sold * price_per_unit) as total_revenue from vendors a join sales b on a.vendor_id = b.vendor_id group by vendor_name order by total_revenue desc limit 2;
