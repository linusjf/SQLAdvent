SELECT
  region,
  avg(snowfall_inches) AS avg_snowfall
FROM
  ski_resorts a
  JOIN snowfall b ON a.resort_id = b.resort_id
GROUP BY
  region;


SELECT
  region,
  avg(snowfall_inches) AS avg_snowfall
FROM
  ski_resorts a,
  snowfall b
WHERE
  a.resort_id = b.resort_id
GROUP BY
  region;
