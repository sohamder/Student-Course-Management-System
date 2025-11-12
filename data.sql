INSERT INTO Students (name, age, department) VALUES
('Alice', 20, 'Computer Science'),
('Bob', 21, 'Physics'),
('Charlie', 19, 'Mathematics'),
('David', 22, 'English'),
('Eva', 20, 'Computer Science'),
('Frank', 23, 'Physics'),
('Grace', 21, 'Mathematics'),
('Hannah', 22, 'English'),
('Ian', 19, 'Computer Science'),
('Jane', 20, 'Physics');

INSERT INTO Instructors (name, specialization) VALUES
('Dr. Smith', 'Mathematics'),
('Dr. Jones', 'Computer Science'),
('Dr. Lee', 'Physics'),
('Dr. Brown', 'English');

INSERT INTO Courses (course_name, credits, instructor_id) VALUES
('Algorithms', 4, 2),
('Quantum Mechanics', 3, 3),
('Shakespeare Studies', 2, 4),
('Linear Algebra', 3, 1),
('Database Systems', 4, 2),
('Thermodynamics', 3, 3);

INSERT INTO Enrollments (student_id, course_id, grade) VALUES
(1, 1, 'A'), (1, 5, 'B'),
(2, 2, 'C'), (2, 6, 'B'),
(3, 1, 'A'), (3, 4, 'B'),
(4, 3, 'B'),
(5, 1, 'A'), (5, 5, 'A'),
(6, 2, 'B'), (6, 6, 'A'),
(7, 4, 'B'),
(8, 3, 'A'),
(9, 5, 'B'),
(10, 6, 'A');
