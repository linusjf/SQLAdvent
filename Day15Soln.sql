SELECT
  fm.name name,
  COUNT(pcr.child_id) AS total_children
FROM
  family fm
JOIN
  parent_child_relationships pcr ON fm.member_id = pcr.parent_id
GROUP BY
  fm.member_id
ORDER BY
  total_children DESC
LIMIT 3;
