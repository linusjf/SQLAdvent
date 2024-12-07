select a.bear_id as bear_id, bear_name, sum(distance_km) as total_distance_travelled from polar_bears a join tracking b on a.bear_id = b.bear_id and strftime('%m', date) = '12'
and strftime('%Y', date) = '2024' group by a.bear_id, a.bear_name order by total_distance_travelled desc limit 3;
