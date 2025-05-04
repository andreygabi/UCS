SELECT g.student_id, g.grade
FROM grades g
INNER JOIN students s ON g.student_id = s.student_id
WHERE s.group_name = 'Б05-313'
ORDER BY g.grade DESC
LIMIT 5 OFFSET 1;
