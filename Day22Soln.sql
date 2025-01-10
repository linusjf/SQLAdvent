--noqa: disable=RF02
SELECT guest_name
FROM
  guests
WHERE
  guest_id NOT IN (
    SELECT DISTINCT guest_id
    FROM
      guest_gifts
  );

SELECT guest_name
FROM
  guests
EXCEPT
SELECT guests.guest_name
FROM
  guests
  INNER JOIN guest_gifts USING (guest_id);

SELECT guests.guest_name
FROM
  guests
  LEFT JOIN guest_gifts ON guests.guest_id = guest_gifts.guest_id
WHERE
  guest_gifts.gift_id IS NULL;

SELECT guest_name
FROM
  guests
WHERE
  NOT EXISTS (
    SELECT 1
    FROM
      guest_gifts
    WHERE
      guest_gifts.guest_id = guests.guest_id
  );
