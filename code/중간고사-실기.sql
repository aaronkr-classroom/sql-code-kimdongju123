--1. 테이블 생성하기(4개)
--2. 조인문 사용하기(3개)
--3. SELECT문을 사용하여 데이터 탐색하기(3개)
CREATE TABLE course (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    teacher_id INT
);

CREATE TABLE student (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE teacher (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE student_course (
    student_id INT,
    course_id INT,
    PRIMARY KEY(student_id, course_id)
);

-- course 테이블 데이터 삽입
INSERT INTO course (id, name, teacher_id)
VALUES
(1, 'Database design', 1),
(2, 'English literature', 2),
(3, 'Python programming', 1);

-- student 테이블 데이터 삽입
INSERT INTO student (id, first_name, last_name)
VALUES
(1, 'Shreya', 'Bain'),
(2, 'Rianna', 'Foster'),
(3, 'Yosef', 'Naylor');

-- teacher 테이블 데이터 삽입
INSERT INTO teacher (id, first_name, last_name)
VALUES
(1, 'Taylah', 'Booker'),
(2, 'Sarah-Louise', 'Blake');

-- student_course 테이블 데이터 삽입
INSERT INTO student_course (student_id, course_id)
VALUES
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1);

SELECT student.first_name AS student_name, course.name AS course_name, teacher.first_name AS teacher_name
FROM student
JOIN student_course ON student.id = student_course.student_id
JOIN course ON student_course.course_id = course.id
JOIN teacher ON course.teacher_id = teacher.id;

SELECT teacher.first_name AS teacher_name, student.first_name AS student_name, student.last_name AS student_last_name
FROM teacher
JOIN course ON teacher.id = course.teacher_id
JOIN student_course ON course.id = student_course.course_id
JOIN student ON student_course.student_id = student.id
WHERE teacher.first_name = 'Taylah';

SELECT student.first_name AS student_name, course.name AS course_name
FROM student
JOIN student_course ON student.id = student_course.student_id
JOIN course ON student_course.course_id = course.id
WHERE student.first_name = 'Shreya';




