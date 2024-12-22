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


SELECT
  guest_name
FROM
  guests
EXCEPT
SELECT
  guest_name
FROM
  guests
  JOIN guest_gifts USING (guest_id);
