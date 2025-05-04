SELECT s.last_name
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id
WHERE e.course_id = (SELECT course_id FROM courses WHERE course_name = 'Математический анализ')
  AND s.group_name LIKE 'Б05-3__';
