WITH
  ActivityAverage AS (
    SELECT
      a.activity_id,
      a.activity_name,
      AVG(r.rating) AS average_rating
    FROM
      activities a
      JOIN activity_ratings r USING (activity_id)
    GROUP BY
      a.activity_id,
      a.activity_name
  ),
  RankedActivities AS (
    SELECT
      activity_id,
      activity_name,
      average_rating,
      RANK() OVER (
        ORDER BY
          average_rating DESC
      ) AS rank
    FROM
      ActivityAverage
  )
SELECT
  activity_name,
  average_rating
FROM
  RankedActivities
WHERE
  rank <= 2;

WITH
  ActivityAverage AS (
    SELECT
      a.activity_id,
      a.activity_name,
      AVG(r.rating) AS average_rating
    FROM
      activities a
      JOIN activity_ratings r USING (activity_id)
    GROUP BY
      a.activity_id,
      a.activity_name
  )
SELECT
  activity_name,
  average_rating
FROM
  ActivityAverage
ORDER BY
  average_rating DESC
LIMIT
  2;
