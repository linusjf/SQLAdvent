select globe_name, count(figurine_id) as count_figurines, material from snow_globes sg join figurines f  using(globe_id) group by globe_id order by count_figurines desc limit 3;
