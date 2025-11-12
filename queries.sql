SELECT s.name AS student, c.course_name, e.grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON c.course_id = e.course_id
ORDER BY s.name;

SELECT i.name AS instructor, c.course_name, COUNT(e.enrollment_id) AS total_students
FROM Instructors i
JOIN Courses c ON i.instructor_id = c.instructor_id
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY i.name, c.course_name
ORDER BY i.name;

SELECT s.name, AVG(
    CASE e.grade
        WHEN 'A' THEN 4
        WHEN 'B' THEN 3
        WHEN 'C' THEN 2
        WHEN 'D' THEN 1
        ELSE 0
    END
) AS gpa
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.name
HAVING AVG(
    CASE e.grade
        WHEN 'A' THEN 4
        WHEN 'B' THEN 3
        WHEN 'C' THEN 2
        WHEN 'D' THEN 1
        ELSE 0
    END
) >= 3;

SELECT s.department, ROUND(AVG(
    CASE e.grade
        WHEN 'A' THEN 4
        WHEN 'B' THEN 3
        WHEN 'C' THEN 2
        WHEN 'D' THEN 1
        ELSE 0
    END
), 2) AS avg_gpa
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.department
ORDER BY avg_gpa DESC
LIMIT 1;

SELECT course_name
FROM Courses
WHERE course_id NOT IN (SELECT DISTINCT course_id FROM Enrollments);
