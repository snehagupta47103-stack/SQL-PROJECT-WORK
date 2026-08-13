CREATE DATABASE UNIVERSITY_COURSE_MANAGEMENT_SYSTEM;

USE UNIVERSITY_COURSE_MANAGEMENT_SYSTEM;

CREATE TABLE departments(
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100)
);

INSERT INTO departments (DepartmentName) VALUES
('Computer Science'),
('Information Technology'),
('Commerce'),
('Management'),
('Mathematics'),
('Physics'),
('Chemistry'),
('English'),
('Economics'),
('Statistics');

CREATE TABLE students(
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    BirthDate DATE,
    EnrollmentDate DATE
);

INSERT INTO students(FirstName, LastName, Email, BirthDate, EnrollmentDate) VALUES
('Aarav', 'Sharma', 'aarav.sharma@gmail.com', '2005-01-15', '2024-06-10'),
('Ananya', 'Patel', 'ananya.patel@gmail.com', '2004-08-22', '2024-06-10'),
('Rohan', 'Mehta', 'rohan.mehta@gmail.com', '2005-03-12', '2024-06-11'),
('Priya', 'Shah', 'priya.shah@gmail.com', '2004-11-05', '2024-06-11'),
('Arjun', 'Desai', 'arjun.desai@gmail.com', '2005-07-18', '2024-06-12'),
('Neha', 'Joshi', 'neha.joshi@gmail.com', '2005-02-28', '2024-06-12'),
('Rahul', 'Patel', 'rahul.patel@gmail.com', '2004-09-14', '2024-06-13'),
('Sneha', 'Gupta', 'sneha.gupta@gmail.com', '2005-05-20', '2024-06-13'),
('Vivek', 'Sharma', 'vivek.sharma@gmail.com', '2004-12-10', '2024-06-14'),
('Kavya', 'Mehta', 'kavya.mehta@gmail.com', '2005-06-25', '2024-06-14');

CREATE TABLE courses(
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(50),
    DepartmentID INT,
    Credits INT,
    FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)
);

INSERT INTO courses(CourseName, DepartmentID, Credits) VALUES
('Database Management', 1, 4),
('Database Management', 2, 3),
('Introduction to SQL', 3, 4),
('Business Management', 4, 3),
('Mathematics Department', 5, 4),
('Data Structures', 6, 4),
('English Literature', 7, 3),
('English Literature', 8, 3),
('Microeconomics', 9, 4),
('Microeconomics', 10, 3);

CREATE TABLE instructors(
    InstructorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)
);

INSERT INTO instructors(FirstName, LastName, Email, DepartmentID, Salary) VALUES
('Rajesh', 'Kumar', 'rajesh.kumar@gmail.com', 1, 50000),
('Meena', 'Patel', 'meena.patel@gmail.com', 2, 55000),
('Amit', 'Shah', 'amit.shah@gmail.com', 3, 60000),
('Pooja', 'Desai', 'pooja.desai@gmail.com', 4, 52000),
('Sanjay', 'Joshi', 'sanjay.joshi@gmail.com', 5, 58000),
('Kiran', 'Mehta', 'kiran.mehta@gmail.com', 6, 62000),
('Nisha', 'Sharma', 'nisha.sharma@gmail.com', 7, 57000),
('Vikram', 'Patel', 'vikram.patel@gmail.com', 8, 65000),
('Ritu', 'Gupta', 'ritu.gupta@gmail.com', 9, 54000),
('Manish', 'Shah', 'manish.shah@gmail.com', 10, 70000);

CREATE TABLE enrollments(
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES courses(CourseID)
);

INSERT INTO enrollments(StudentID, CourseID, EnrollmentDate) VALUES
(1, 1, '2024-06-15'),
(2, 2, '2024-06-15'),
(3, 3, '2024-06-16'),
(4, 4, '2024-06-16'),
(5, 5, '2024-06-17'),
(6, 6, '2024-06-17'),
(7, 7, '2024-06-18'),
(8, 8, '2024-06-18'),
(9, 9, '2024-06-19'),
(10, 10, '2024-06-19');

-- QUERIES TO PERFORM 

INSERT INTO students (FirstName, LastName, Email, BirthDate, EnrollmentDate) VALUES
('Karan','Patel','karan.patel@gmail.com','2005-10-15','2024-07-01');

UPDATE students SET Email = 'karan.patel123@gmail.com' WHERE FirstName = 'Karan' AND LastName = 'Patel';

DELETE FROM students WHERE FirstName = 'Karan';

SELECT * FROM students WHERE EnrollmentDate > '2022-12-31';

SELECT * FROM courses WHERE DepartmentID = (
    SELECT DepartmentID FROM departments 
    WHERE DepartmentName = 'Mathematics'
)
LIMIT 5;

SELECT CourseID, COUNT(StudentID) AS TotalStudents FROM enrollments GROUP BY CourseID HAVING COUNT(StudentID) > 5;

SELECT StudentID FROM enrollments WHERE CourseID IN (SELECT CourseID FROM courses WHERE CourseName IN
('Introduction to SQL','Data Structures'))
GROUP BY StudentID HAVING COUNT(DISTINCT CourseID) = 2;

SELECT DISTINCT StudentID FROM enrollments WHERE CourseID IN (SELECT CourseID FROM courses WHERE CourseName IN
('Introduction to SQL','Data Structures'));

SELECT AVG(Credits) AS AverageCredits FROM courses;

SELECT MAX(Salary) AS MaximumSalary FROM instructors WHERE DepartmentID = (
    SELECT DepartmentID FROM departments WHERE DepartmentName = 'Computer Science'
);

SELECT d.DepartmentName, COUNT(DISTINCT e.StudentID) AS TotalStudents FROM departments d
JOIN courses c ON d.DepartmentID = c.DepartmentID JOIN enrollments e ON c.CourseID = e.CourseID
GROUP BY d.DepartmentID, d.DepartmentName;

SELECT * FROM students s INNER JOIN enrollments e ON s.StudentID = e.StudentID INNER JOIN courses c ON e.CourseID = c.CourseID;

SELECT * FROM students s LEFT JOIN enrollments e ON s.StudentID = e.StudentID LEFT JOIN courses c ON e.CourseID = c.CourseID;

SELECT CourseID, CourseName FROM courses WHERE CourseID IN ( 
    SELECT CourseID FROM enrollments GROUP BY CourseID HAVING COUNT(StudentID) > 10
);

SELECT *, YEAR(EnrollmentDate) AS EnrollmentYear FROM enrollments;

SELECT *, CONCAT(FirstName, ' ' , LastName) AS FullName FROM instructors;

SELECT COUNT(DISTINCT StudentID) AS TotalStudentsEnrolled FROM enrollments;

SELECT *, CASE 
WHEN YEAR(EnrollmentDate) <= 2023 THEN 'SENIOR' ELSE 'JUNIOR'
END AS StudentLevel FROM students;