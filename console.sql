create database test
USE test ;
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(30) UNIQUE,
    age INT NOT NULL,
    city VARCHAR(20)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    student_id INT,
    grade VARCHAR(2)
);

INSERT INTO student (student_id, name, age, city) VALUES
(1, 'Arun Kumar', 21, 'Mumbai'),
(2, 'Priya Sharma', 19, 'Delhi'),
(3, 'Vikram Patel', 22, 'Ahmedabad'),
(4, 'Ananya Gupta', 20, 'Bangalore'),
(5, 'Rahul Mehta', 23, 'Mumbai'),
(6, 'Deepika Reddy', 21, 'Hyderabad'),
(7, 'Karthik Iyer', 20, 'Chennai'),
(8, 'Neha Joshi', 22, 'Pune'),
(9, 'Suresh Nair', 19, 'Kochi'),
(10, 'Meera Krishnan', 21, 'Chennai'),
(11, 'Arjun Rao', 22, 'Bangalore'),
(12, 'Pooja Desai', 20, 'Mumbai'),
(13, 'Kiran Shah', 23, 'Delhi'),
(14, 'Lakshmi Menon', 19, 'Bangalore'),
(15, 'Harish Verma', 21, 'Jaipur'),
(16, 'Sunita Devi', 22, 'Lucknow'),
(17, 'Manoj Tiwari', 20, 'Patna'),
(18, 'Divya Anand', 19, 'Chandigarh'),
(19, 'Ravi Sharma', 23, 'Mumbai'),
(20, 'Geeta Kumari', 21, 'Ranchi');

INSERT INTO courses (course_id, course_name, student_id, grade) VALUES
(1, 'Database Systems', 1, 'A'),
(2, 'Web Development', 1, 'B'),
(3, 'Python Programming', 2, 'A'),
(4, 'Machine Learning', 4, 'B'),
(5, 'Cloud Computing', 4, 'A'),
(6, 'Computer Networks', 5, 'C'),
(7, 'Artificial Intelligence', 6, 'A'),
(8, 'Robotics', 6, 'B'),
(9, 'Cybersecurity', 7, 'A'),
(10, 'Data Science', 9, 'B'),
(11, 'Cloud Architecture', 10, 'A'),
(12, 'DevOps', 10, 'B'),
(13, 'Network Security', 10, 'A'),
(14, 'Mobile Development', 11, 'C'),
(15, 'UX Design', 12, 'A'),
(16, 'Blockchain', 13, 'B'),
(17, 'IoT Systems', 15, 'A'),
(18, 'Big Data', 16, 'B'),
(19, 'Data Analytics', 16, 'C'),
(20, 'Web Design', 18, 'A'),
(21, 'Database Admin', 19, 'B'),
(22, 'System Architecture', 19, 'C'),
(23, 'React JS', 20, 'A'),
(24, 'Node JS', 20, 'B'),
(25, 'SQL Advanced', 2, 'A')
(26, 'Kabir Khan', 20, 'Mumbai');

SELECT *
    FROM student
    WHERE name like 'Kab%' ;





-- Step 1: Check
SELECT name, age FROM student WHERE name = 'Kabir Khan';

-- Step 2: Update
UPDATE student SET age = 21 WHERE name = 'Kabir Khan';

-- Step 3: Verify
SELECT name, age FROM student WHERE name = 'Kabir Khan';

SELECT COUNT(age) , age  FROM student
    GROUP BY age
    ORDER BY age ASC ;



SELECT  DISTINCT student.name , courses.course_name
    FROM student
    JOIN courses ON student.student_id = courses.student_id
    WHERE student.city like 'Mumbai' ;


SELECT name , city , age
    FROM student
    WHERE age >= 22 AND city like 'B%' ;


SELECT student.name , courses.course_name , courses.grade,
       CASE
           WHEN courses.grade = 'A' THEN 'Excellent'
           WHEN courses.grade = 'B' THEN 'Good'
           WHEN courses.grade = 'C' THEN 'Avarage'
            END AS Performence
    FROM student
    JOIN courses on student.student_id = courses.student_id
    ORDER BY grade ASC ;





SELECT student.name , courses.course_name
    FROM student
    LEFT JOIN courses ON student.student_id = courses.student_id
    WHERE courses.course_id IS NULL  -- Add this at the end!
;

SELECT grade , COUNT(*)
FROM courses
GROUP BY grade;


SELECT student.name , student.city , courses.grade
    FROM student
    JOIN courses ON student.student_id = courses.student_id
    WHERE courses.grade = 'B'
      AND student.city = 'Delhi';




SELECT s.name, c.course_name, c.grade
FROM student s
JOIN courses c ON s.student_id = c.student_id
WHERE c.grade = 'B' AND s.city = 'Bangalore';


INSERT INTO student (student_id, name, age, city)
    VALUE (21,'Kanbir khan',20,'Mumbai');


SELECT * FROM student WHERE name LIKE 'Aru%' AND city = 'Mumbai';


UPDATE student SET age = 22
               WHERE name LIKE 'Aru%' AND city LIKE 'Mumbai';

SELECT * FROM student WHERE name LIKE 'Aru%' AND city = 'Mumbai';




SELECT city , COUNT(*) AS Total
    FROM student
    GROUP BY city ;


SELECT city, COUNT(*) as total_students
FROM student
GROUP BY city;




SELECT name , COUNT(*) AS total_students
    FROM student
    GROUP BY city
    HAVING COUNT(*) > 2 ;

SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city
HAVING COUNT(*) > 2;


SELECT COUNT(*) FROM student ;


SELECT student.name , courses.course_name
    FROM student
    JOIN courses ON student.student_id = courses.student_id ;
    ORDER BY GRADE ASC ;


SELECT * FROM student
    WHERE name LIKE 'A%';


SELECT  COUNT(city) AS Total
    FROM student
GROUP BY city ;








SELECT student.name , courses.course_name
    FROM student
    JOIN courses ON student.student_id = courses.student_id
    ;

SELECT * FROM student
    WHERE city = 'Mumbai' AND age >= 20 ;



SELECT student.city ,



SELECT student.name , courses.grade ,
       CASE
           WHEN courses.grade IN ('A','B','C') THEN 'PASS'
                ELSE 'FAIL'
                END AS Report
        FROM student
        JOIN courses ON student.student_id = courses.student_id ;



SELECT student.name , courses.course_name ,
       CASE
           WHEN  courses.grade = 'A' THEN 'Easy'
           WHEN  courses.grade = 'B' THEN 'Medium'
           WHEN  courses.grade = 'C' THEN 'Hard'
            ELSE 'UNKNOWN'
            END AS Difficulty
    FROM student
    JOIN courses on student.student_id = courses.student_id ;




SELECT student.name , courses.course_name , student.age
    FROM student
    LEFT JOIN courses on student.student_id = courses.student_id
    WHERE courses.course_name IS NULL
    ORDER BY STUDENT.age ASC;


SELECT COUNT(courses.course_name) AS Total_course , student.city
    FROM student
    JOIN courses  on student.student_id = courses.student_id
    GROUP BY student.city
    ORDER BY Total_course DESC;




SELECT DISTINCT name , city FROM student
    WHERE name LIKE '%a%'
      AND city IN ('Mumbai','Delhi') ;

SELECT student.name , student.student_id , courses.course_name , courses.grade
    FROM student
         JOIN courses on student.student_id = courses.student_id
    WHERE name = 'Priya Sharma' AND courses.course_name = 'SQL Advanced' ;

UPDATE courses SET grade = 'A+'
     WHERE student_id = 2 AND courses.course_name = 'SQL Advanced' ;
SELECT student.name , student.student_id , courses.course_name , courses.grade
    FROM student
         JOIN courses on student.student_id = courses.student_id
    WHERE name = 'Priya Sharma' AND courses.course_name = 'SQL Advanced' ;

SELECT
    COUNT(city) AS student_count , city
    FROM student
    GROUP BY city
        ORDER BY student_count DESC ;

SELECT
    COUNT( city) , city
    FROM student
    GROUP BY city ;



SELECT COUNT(DISTINCT student.name)
    FROM student
    JOIN courses ON student.student_id = courses.student_id ;

SELECT COUNT(DISTINCT student.student_id)
    FROM student
    JOIN courses ON student.student_id = courses.student_id ;
    WHERE courses.grade IS NOT NULL ;

SELECT COUNT(*) FROM courses;


SELECT student.name , COUNT(courses.grade) AS total
    FROM student
    JOIN courses On student.student_id = courses.student_id
    WHERE courses.grade ='A'
GROUP BY student.name;




SELECT COUNT(DISTINCT s.student_id) as students_with_courses
FROM student s
JOIN courses c ON s.student_id = c.student_id;


SELECT student.name , courses.grade
    FROM student
    JOIN courses ON student.student_id = courses.student_id

    WHERE courses.grade = 'A'
HAVING COUNT (courses.grade);



SELECT
    DISTINCT COUNT(course_name)FROM courses
;



SELECT
    CASE
        WHEN age BETWEEN 18 AND 20 THEN 'Young'
        WHEN age BETWEEN 21 AND 23 THEN 'Adult'
        ELSE 'Senior'
        END AS STATUS ,
        COUNT(*) AS Number_of_Students
        FROM student
        GROUP BY STATUS ;

        ORDER BY STATUS;


SELECT
    CASE
        WHEN age BETWEEN 18 AND 20 THEN 'Young'
        WHEN age BETWEEN 21 AND 23 THEN 'Adult'
        ELSE 'Senior'
    END AS Age_Group,
    COUNT(*) as Number_of_Students
FROM student
GROUP BY Age_Group
ORDER BY Age_Group;





SELECT DISTINCT student.name , student.age ,
       CASE
           WHEN student.age BETWEEN 18 AND 20 THEN 'Young'
           WHEN student.age BETWEEN 21 AND 23 THEN 'Adult'
           WHEN student.age =  24 THEN 'Senior'
           ELSE 'UNKNOWN'
            END AS Status
        FROM student
    ORDER BY student.age DESC;





SELECT
    s.name,
    c.grade,
    CASE
        WHEN c.grade = 'A' THEN 'Outstanding'
        WHEN c.grade = 'B' THEN 'Good'
        WHEN c.grade = 'C' THEN 'Needs Improvement'
        ELSE 'Unknown'
    END AS status
FROM student s
JOIN courses c ON s.student_id = c.student_id;






USE test ;
SELECT
    name,
    grade,
    CASE
        WHEN grade = 'A' THEN 'Excellent'
        WHEN grade = 'B' THEN 'Good'
        WHEN grade = 'C' THEN 'Average'
        ELSE 'Needs Work'
    END AS performance
FROM student
JOIN courses ON student.student_id = courses.student_id;






SELECT * FROM courses
WHERE course_name = 'Node JS' AND student_id = 20 ;

DELETE FROM courses
    WHERE student_id = 20 AND course_name = 'Node JS' ;

SELECT * FROM courses
WHERE course_name = 'Node JS' AND student_id = 20 ;
SELECT MAX(courses.course_id) FROM courses ;
INSERT INTO courses (course_id, course_name, student_id, grade)
    value (27,'React JS' ,1,'B') ;





UPDATE courses SET grade = 'A'
    WHERE courses.student_id = 4 AND courses.course_name = 'Machine Learning' ;

SELECT * FROM courses WHERE student_id = 4;



SELECT student.name , student.city , courses.course_name
    FROM student
    LEFT JOIN courses ON student.student_id = courses.student_id ;
    WHERE courses.grade = 'B' AND student.name = 'Arun Kumar' ;




SELECT * FROM student
    WHERE city IN ('Mumbai', 'Delhi', 'Bangalore') ;





SELECT student.name , COUNT(courses.course_id ) AS TOTAL_COURSES
FROM student
LEFT JOIN courses ON student.student_id = courses.student_id  -- LEFT JOIN shows everyone!
GROUP BY student.name
ORDER BY TOTAL_COURSES DESC ;




SELECT student.name , COUNT(courses.course_name ) AS TOTAL_COURSES
    FROM student
    JOIN courses  on student.student_id = courses.student_id
    GROUP BY student.name
    ORDER BY TOTAL_COURSES DESC ;


SELECT student.name , courses.course_name
    FROM student
    LEFT JOIN courses ON student.student_id = courses.student_id ;

SELECT name , age , city
    FROM student
    WHERE age >= 22 AND city = 'Bangalore' ;



SELECT COUNT(*)
SELECT student_id
FROM courses
GROUP BY student_id
HAVING COUNT(*) = 2 AS students_with_two_courses;





SELECT student.name , COUNT(courses.course_id) AS Total_courses
    FROM student
    LEFT JOIN courses ON student.student_id = courses.student_id
    GROUP BY student.name
    HAVING COUNT(courses.course_id) = 2;
    ORDER BY Total_courses DESC ;



SELECT student.name, courses.course_name, courses.grade
FROM student
JOIN courses ON student.student_id = courses.student_id
WHERE student.name = 'Rahul Mehta';





UPDATE courses  SET grade = 'B'
    WHERE student_id = 5 ;


SELECT student.name , courses.course_name , courses.grade , courses.course_id
        FROM student
        LEFT JOIN courses ON student.student_id = courses.student_id ;
        WHERE courses.course_id = 6 ;
          ;





SELECT student.name , courses.course_name , courses.grade
        FROM student
        JOIN courses ON student.student_id = courses.student_id
        WHERE courses.grade = 'A'  ;



SELECT name , age FROM student
    ORDER BY age ASC ;

SELECT student.name , courses.course_name
    FROM student
    JOIN courses ON student.student_id = courses.student_id ;









SELECT name , city FROM student
    WHERE city = 'Mumbai' OR city = 'Delhi' ;


SELECT name , age FROM student
    WHERE age BETWEEN 20 AND 23 ;

















SELECT * FROM student
WHERE age = 21 AND city = 'Mumbai' ;





SELECT * FROM student
WHERE city LIKE 'Mumbai' ;



SELECT * FROM student
    WHERE name LIKE 'A%' ;















SELECT  student.age , student.city
from student
GROUP BY city >= 2
HAVING AVG(student.age)  ;
    WHERE














select * FROM courses
WHERE courses.course_id = 24;

DROP courses(course_id, course_name, student_id, grade )
    FROM courses
            where course_id = 24, course_name = 'Node JS' , student_id = 2 , grade 'B';






SELECT name , student.city
    FROM student
    WHERE city IN (
        SELECT city
        FROM student
        GROUP BY city
        HAVING COUNT(*) >= 3
        ) ;

SELECT DISTINCT student.name , student.age , courses.grade
FROM student
JOIN courses ON student.student_id = courses.student_id
WHERE courses.grade = 'A' AND student.age >= 20 ;


SELECT student.student_id FROM student WHERE name = 'Vikram Patel';

INSERT INTO courses (course_id, course_name, student_id, grade) VALUE
    (26, 'python basics' , 3 , 'B') ;

SELECT s.name, c.course_name
FROM student s
LEFT JOIN courses c ON s.student_id = c.student_id
WHERE s.name = 'Vikram Patel';





















SELECT * FROM student;  -- Should show 20 rows
SELECT * FROM courses;  -- Should show 25 rows
SELECT COUNT(*) FROM student;  -- Should say 20
SELECT COUNT(*) FROM courses; -- Should say 25

SELECT * FROM student
    WHERE city LIKE 'Mumbai' AND age >=20 ;

SELECT student.name , courses.course_name
    FROM student
    JOIN courses ON student.student_id = courses.student_id ;

SELECT student.name , courses.course_name
    FROM student
    LEFT JOIN courses ON student.student_id = courses.student_id ;

SELECT student.name , COUNT(courses.course_id) AS courses_Count
    FROM student
    JOIN courses  on student.student_id = courses.student_id
    GROUP BY student.name
    ORDER BY courses_Count  DESC ;