SELECT
  guest_name
FROM
  guests
WHERE
  guest_id NOT IN (
    SELECT DISTINCT
      guest_id
    FROM
      guest_gifts
  );
