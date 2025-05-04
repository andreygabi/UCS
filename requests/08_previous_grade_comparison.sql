SELECT student_id, grade, LAG(grade, 1) OVER (PARTITION BY student_id ORDER BY creation_date) AS previous_grade
FROM grades;
