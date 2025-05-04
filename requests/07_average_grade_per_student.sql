SELECT student_id, grade, AVG(grade) OVER (PARTITION BY student_id) AS average_grade
FROM grades;
