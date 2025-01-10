SELECT
  a.bear_id,
  bear_name,
  SUM(distance_km) AS total_distance_travelled
FROM
  polar_bears AS a
  INNER JOIN tracking AS b ON a.bear_id = b.bear_id
  AND STRFTIME('%m', date) = '12'
  AND STRFTIME('%Y', date) = '2024'
GROUP BY
  a.bear_id,
  a.bear_name
ORDER BY
  total_distance_travelled DESC
LIMIT
  3;
