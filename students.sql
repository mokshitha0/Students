CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(30),
    marks INT
);
INSERT INTO Students (student_id, student_name, department, marks) VALUES
(1, 'Arun', 'CSE', 85),
(2, 'Akshaya', 'CSE', 92),
(3, 'Bala', 'CSE', 78),
(4, 'Priya', 'CSE', 88),
(5, 'Rahul', 'CSE', 95),
(6, 'Sneha', 'CSE', 72),
(7, 'Kiran', 'ECE', 76),
(8, 'Ananya', 'ECE', 84),
(9, 'Vijay', 'ECE', 91),
(10, 'Meena', 'ECE', 68),
(11, 'Ravi', 'ECE', 73),
(12, 'Divya', 'ECE', 89),
(13, 'Suresh', 'IT', 94),
(14, 'Pooja', 'IT', 81),
(15, 'Nikhil', 'IT', 77),
(16, 'Swathi', 'IT', 69),
(17, 'Manoj', 'IT', 86),
(18, 'Keerthi', 'IT', 90),
(19, 'Varun', 'EEE', 65),
(20, 'Harini', 'EEE', 74),
(21, 'Ajay', 'EEE', 82),
(22, 'Lakshmi', 'EEE', 79),
(23, 'Rohan', 'EEE', 71),
(24, 'Deepa', 'EEE', 88);

SELECT department, AVG(marks) AS average_marks
FROM Students
GROUP BY department; 

SELECT department, AVG(marks) AS average_marks
FROM Students
GROUP BY department
HAVING AVG(marks) > 75; 

SELECT department, MAX(marks) AS highest_marks
FROM Students
GROUP BY department;
 
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department; 

SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department
HAVING COUNT(*) > 5; 

SELECT department, AVG(marks) AS average_marks
FROM Students
GROUP BY department
ORDER BY average_marks DESC; 
SELECT department, AVG(marks) AS average_marks
FROM Students
GROUP BY department
ORDER BY average_marks DESC
LIMIT 3; 
SELECT department, AVG(marks) AS average_marks
FROM Students
GROUP BY department
HAVING AVG(marks) BETWEEN 70 AND 90;
SELECT department, SUM(marks) AS total_marks
FROM Students
GROUP BY department; 
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department
ORDER BY total_students DESC; 
SELECT department, MAX(marks) AS highest_marks
FROM Students
GROUP BY department
HAVING MAX(marks) > 90; 
SELECT department, COUNT(*) AS students_above_80
FROM Students
WHERE marks > 80
GROUP BY department; 
SELECT department, COUNT(*) AS students_above_75
FROM Students
WHERE marks > 75
GROUP BY department
HAVING COUNT(*) > 3; 
SELECT department, MAX(marks) AS highest_marks
FROM Students
GROUP BY department
ORDER BY highest_marks DESC;