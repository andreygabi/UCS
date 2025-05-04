SELECT course_name
FROM courses
WHERE course_id IN (
    SELECT e.course_id
    FROM enrollments e
    INNER JOIN students s ON e.student_id = s.student_id
    WHERE s.group_name IN ('Б05-311', 'Б05-320')
);
