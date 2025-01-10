SELECT
  region,
  AVG(snowfall_inches) AS avg_snowfall
FROM
  ski_resorts AS a
  INNER JOIN snowfall AS b ON a.resort_id = b.resort_id
GROUP BY
  region;

SELECT
  region,
  AVG(snowfall_inches) AS avg_snowfall
FROM
  ski_resorts AS a,
  snowfall AS b
WHERE
  a.resort_id = b.resort_id
GROUP BY
  region;
