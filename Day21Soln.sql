WITH
  -- Calculate total weight for each recipient type
  recipient_weights AS (
    SELECT
      recipient_type,
      SUM(weight_kg) AS total_weight
    FROM
      gifts
    GROUP BY
      recipient_type
  ),

  -- Calculate total weight of all gifts
  total_weight AS (
    SELECT
      SUM(total_weight) AS total
    FROM
      recipient_weights
  )

-- Calculate weight percentage for each recipient type
SELECT
  rw.recipient_type,
  rw.total_weight,
  ROUND((rw.total_weight / tw.total) * 100,2) AS weight_percentage
FROM
  recipient_weights rw
CROSS JOIN
  total_weight tw
ORDER BY
  weight_percentage DESC;
WITH
  -- Calculate total weight for each recipient type
  recipient_weights AS (
    SELECT
      recipient_type,
      SUM(weight_kg) AS total_weight,
      SUM(SUM(weight_kg)) OVER () AS total
    FROM
      gifts
    GROUP BY
      recipient_type
  )

-- Calculate weight percentage for each recipient type
SELECT
  recipient_type,
  total_weight,
  ROUND((total_weight / total) * 100,2) AS weight_percentage
FROM
  recipient_weights
ORDER BY
  weight_percentage DESC;

SELECT recipient_type,
       SUM(weight_kg) AS total_weight,
       ROUND(SUM(weight_kg) /
       SUM(SUM(weight_kg)) OVER ()  * 100,2) as weight_percentage
FROM gifts
group by recipient_type
Order by weight_percentage desc;

WITH totals as (
SELECT distinct(recipient_type) as recipient_type,
       SUM(weight_kg) OVER (PARTITION BY recipient_type ORDER BY recipient_type) AS TotalWeight,
       SUM(weight_kg) OVER () AS Total
FROM gifts
)
select
  recipient_type,
  TotalWeight,
  ROUND((TotalWeight / Total) * 100,2) AS weight_percentage
FROM
  totals
ORDER BY
  weight_percentage DESC;
