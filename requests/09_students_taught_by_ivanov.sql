SELECT s.first_name, s.last_name
FROM students s
WHERE s.group_name IN ('Б05-311', 'Б05-324')
  AND EXISTS (
    SELECT 1
    FROM enrollments e
    INNER JOIN courses c ON e.course_id = c.course_id
    INNER JOIN teachers t ON c.teacher_id = t.teacher_id
    WHERE s.student_id = e.student_id AND t.last_name = 'Громов'
);
