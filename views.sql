CREATE VIEW StudentPerformance AS
SELECT s.name, s.department, c.course_name, e.grade,
       CASE e.grade
           WHEN 'A' THEN 4
           WHEN 'B' THEN 3
           WHEN 'C' THEN 2
           WHEN 'D' THEN 1
           ELSE 0
       END AS grade_points
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON c.course_id = e.course_id;

SELECT * FROM StudentPerformance;
