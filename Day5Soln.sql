SELECT
  beach_name,
  country
FROM
  beach_temperature_predictions
WHERE
  expected_temperature_c > 30
  AND pred_date = '2024-12-25';
