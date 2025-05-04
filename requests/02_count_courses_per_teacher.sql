SELECT t.first_name, t.last_name, COUNT(c.course_id) AS course_count
FROM teachers t
LEFT JOIN courses c ON t.teacher_id = c.teacher_id
GROUP BY t.teacher_id
ORDER BY course_count DESC;
