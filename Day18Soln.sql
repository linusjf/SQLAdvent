WITH
  activityaverage AS (
    SELECT
      activities.activity_id,
      activities.activity_name,
      AVG(activity_ratings.rating) AS average_rating
    FROM
      activities
      INNER JOIN activity_ratings USING (activity_id)
    GROUP BY activities.activity_id, activities.activity_name
  ),
  rankedactivities AS (
    SELECT
      activity_id,
      activity_name,
      average_rating,
      RANK() OVER (ORDER BY average_rating DESC) AS rank
    FROM activityaverage
  )
SELECT
  activity_name,
  average_rating
FROM rankedactivities
WHERE rank <= 2;

WITH
  activityaverage AS (
    SELECT
      activities.activity_id,
      activities.activity_name,
      AVG(activity_ratings.rating) AS average_rating
    FROM
      activities
      INNER JOIN activity_ratings USING (activity_id)
    GROUP BY activities.activity_id, activities.activity_name
  )
SELECT
  activity_name,
  average_rating
FROM activityaverage
ORDER BY average_rating DESC
LIMIT 2;
