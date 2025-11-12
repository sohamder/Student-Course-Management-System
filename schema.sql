CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age > 0),
    department VARCHAR(50)
);

CREATE TABLE Instructors (
    instructor_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    specialization VARCHAR(50)
);

CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credits INT CHECK (credits BETWEEN 1 AND 5),
    instructor_id INT REFERENCES Instructors(instructor_id)
        ON DELETE SET NULL
);

CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(student_id) ON DELETE CASCADE,
    course_id INT REFERENCES Courses(course_id) ON DELETE CASCADE,
    grade CHAR(1) CHECK (grade IN ('A','B','C','D','F'))
);
