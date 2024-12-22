SELECT
  a.bear_id AS bear_id,
  bear_name,
  sum(distance_km) AS total_distance_travelled
FROM
  polar_bears a
  JOIN tracking b ON a.bear_id = b.bear_id
  AND strftime('%m', date) = '12'
  AND strftime('%Y', date) = '2024'
GROUP BY
  a.bear_id,
  a.bear_name
ORDER BY
  total_distance_travelled DESC
LIMIT
  3;
