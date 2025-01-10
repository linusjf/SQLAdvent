SELECT
  fam.name,
  COUNT(pcr.child_id) AS total_children
FROM
  family AS fam
  INNER JOIN parent_child_relationships AS pcr ON fam.member_id = pcr.parent_id
GROUP BY
  fam.member_id
ORDER BY
  total_children DESC
LIMIT
  3;
