SELECT
  snow_globes.globe_name,
  COUNT(figurines.figurine_id) AS count_figurines,
  snow_globes.material
FROM
  snow_globes
  INNER JOIN figurines USING (globe_id)
GROUP BY
  snow_globes.globe_id
ORDER BY
  count_figurines DESC
LIMIT
  3;
