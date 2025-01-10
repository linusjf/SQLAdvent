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
    SELECT SUM(total_weight) AS total
    FROM
      recipient_weights
  )
  -- Calculate weight percentage for each recipient type
SELECT
  rec_wts.recipient_type,
  rec_wts.total_weight,
  ROUND((rec_wts.total_weight / tot_wts.total) * 100, 2) AS weight_percentage
FROM
  recipient_weights AS rec_wts
  CROSS JOIN total_weight AS tot_wts
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
  ROUND((total_weight / total) * 100, 2) AS weight_percentage
FROM
  recipient_weights
ORDER BY
  weight_percentage DESC;

SELECT
  recipient_type,
  SUM(weight_kg) AS total_weight,
  ROUND(
    SUM(weight_kg) / SUM(SUM(weight_kg)) OVER () * 100,
    2
  ) AS weight_percentage
FROM
  gifts
GROUP BY
  recipient_type
ORDER BY
  weight_percentage DESC;

WITH
  totals AS (
    SELECT DISTINCT
      recipient_type,
      SUM(weight_kg) OVER (
        PARTITION BY
          recipient_type
        ORDER BY
          recipient_type
      ) AS totalweight,
      SUM(weight_kg) OVER () AS total
    FROM
      gifts
  )
SELECT
  recipient_type,
  totalweight,
  ROUND((totalweight / total) * 100, 2) AS weight_percentage
FROM
  totals
ORDER BY
  weight_percentage DESC;
