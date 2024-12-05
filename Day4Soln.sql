select region, avg(snowfall_inches) as avg_snowfall from ski_resorts a join snowfall b on a.resort_id = b.resort_id group by region;

select region, avg(snowfall_inches) as avg_snowfall from ski_resorts a, snowfall b where a.resort_id = b.resort_id group by region;
