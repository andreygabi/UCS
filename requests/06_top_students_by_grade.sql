SELECT student_id, grade, RANK() OVER (ORDER BY grade DESC) as rank
FROM grades
LIMIT 9;
