# Student-Database-Project
This is a comprehensive README.md file designed for a recruiter. It categorizes your work into schema design, data manipulation, and advanced analytical queries.

Student & Course Management System (SQL)
📌 Project Overview
This project demonstrates my proficiency in Relational Database Management Systems (RDBMS) using MySQL. It covers the end-to-end process of database creation, schema design with primary/foreign key relationships, and complex data retrieval using Joins, Aggregations, and Case Logic.

The project simulates a university environment tracking students across various cities in India and their respective course enrollments and grades.

🛠️ Tech Stack
Database: MySQL

IDE: JetBrains DataGrip

Platform: Zorin OS (Linux)

🏗️ Database Schema
The database consists of two primary tables with a One-to-Many relationship linked by student_id.

1. Students Table
Stores demographic information for 20+ students.

student_id (Primary Key)

name (Unique)

age

city

2. Courses Table
Tracks course enrollments and academic performance.

course_id (Primary Key)

course_name

student_id (Foreign Key)

grade

🚀 Key SQL Features Demonstrated
1. Complex Joins & Filtering
Retrieving specific enrollment data for students in specific regions.

SQL
SELECT DISTINCT student.name, courses.course_name
FROM student
JOIN courses ON student.student_id = courses.student_id
WHERE student.city LIKE 'Mumbai';
2. Conditional Logic (CASE Statements)
Transforming raw grade data into readable performance reports.

SQL
SELECT student.name, courses.course_name, courses.grade,
       CASE
           WHEN courses.grade = 'A' THEN 'Excellent'
           WHEN courses.grade = 'B' THEN 'Good'
           WHEN courses.grade = 'C' THEN 'Average'
           ELSE 'Needs Improvement'
       END AS Performance
FROM student
JOIN courses ON student.student_id = courses.student_id
ORDER BY grade ASC;
3. Data Aggregation & Analytics
Identifying trends such as student density per city or course loads per student.

SQL
-- Counting students per city with a threshold
SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city
HAVING COUNT(*) > 2;

-- Identifying high-load students
SELECT student.name, COUNT(courses.course_id) AS total_courses
FROM student
JOIN courses ON student.student_id = courses.student_id
GROUP BY student.name
ORDER BY total_courses DESC;
4. Data Integrity (DML)
Demonstrating ability to update and maintain data accuracy.

SQL
-- Updating student information based on specific criteria
UPDATE student 
SET age = 22
WHERE name LIKE 'Arun%' AND city = 'Mumbai';
5. Advanced Set Analysis
Using LEFT JOIN to identify students who are currently not enrolled in any courses (identifying "Orphan" records).

SQL
SELECT student.name, student.age
FROM student
LEFT JOIN courses ON student.student_id = courses.student_id
WHERE courses.course_name IS NULL;
