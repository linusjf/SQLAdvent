SELECT
  bears.bear_id,
  bears.bear_name,
  SUM(tracking.distance_km) AS total_distance_travelled
FROM
  polar_bears AS bears
  INNER JOIN tracking ON bears.bear_id = tracking.bear_id
  AND STRFTIME('%m', tracking.tracking_date) = '12'
  AND STRFTIME('%Y', tracking.tracking_date) = '2024'
GROUP BY
  bears.bear_id,
  bears.bear_name
ORDER BY
  total_distance_travelled DESC
LIMIT
  3;
