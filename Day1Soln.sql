```
select customer_name, count(distinct activity) as cnt from rentals group by customer_name having cnt > 1;
```
