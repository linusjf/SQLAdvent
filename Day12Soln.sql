SELECT
  globe_name,
  count(figurine_id) AS count_figurines,
  material
FROM
  snow_globes sg
  JOIN figurines f USING (globe_id)
GROUP BY
  globe_id
ORDER BY
  count_figurines DESC
LIMIT
  3;
