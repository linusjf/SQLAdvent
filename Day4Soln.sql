SELECT
  resorts.region,
  AVG(snow.snowfall_inches) AS avg_snowfall
FROM
  ski_resorts AS resorts
  INNER JOIN snowfall AS snow ON resorts.resort_id = snow.resort_id
GROUP BY resorts.region;

SELECT
  resorts.region,
  AVG(snow.snowfall_inches) AS avg_snowfall
FROM
  ski_resorts AS resorts,
  snowfall AS snow
WHERE resorts.resort_id = snow.resort_id
GROUP BY resorts.region;
