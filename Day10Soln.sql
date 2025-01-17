SELECT
  friend_name,
  COUNT(resolution) AS total_resolutions,
  SUM(is_completed) AS completed_resolutions,
  ROUND(SUM(is_completed) * 100.0 / COUNT(resolution), 2) AS success_percentage,
  CASE
    WHEN SUM(is_completed) * 100.0 / COUNT(resolution) > 75 THEN 'Green'
    WHEN SUM(is_completed) * 100.0 / COUNT(
      resolution
    ) BETWEEN 50 AND 75 THEN 'Yellow'
    ELSE 'Red'
  END AS success_category
FROM resolutions
GROUP BY friend_name;
