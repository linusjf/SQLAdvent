SELECT
  name,
  birthday
FROM family_members
WHERE STRFTIME('%Y', birthday) = '2024' AND STRFTIME('%m', birthday) = '12';
