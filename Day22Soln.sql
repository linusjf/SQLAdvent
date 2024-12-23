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

SELECT g.guest_name
FROM guests g
LEFT JOIN guest_gifts gg ON g.guest_id = gg.guest_id
WHERE gg.gift_id IS NULL;

SELECT guest_name
FROM guests g
WHERE NOT EXISTS (SELECT 1 FROM guest_gifts gg WHERE gg.guest_id = g.guest_id);
