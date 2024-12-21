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
