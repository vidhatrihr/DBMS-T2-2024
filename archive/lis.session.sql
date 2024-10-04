SELECT
  *
FROM
  quota
ORDER BY
  member_type;

SELECT
  *
FROM
  students;

SELECT
  students.student_fname,
  students.dob > '2003-06-15'
  and department_code = 'ME';

SELECT
  students
FROM
  managers
where
  departments.department_name = 'Mechanical Engineering';

SELECT
  *
FROM
  students
WHERE
  department_code = 'CS'
  AND dob > '2001-06-15';

SELECT
  faculty_fname
FROM
  faculty,
  departments
WHERE
  departments.department_name = 'Mechanical Engineering'
  and faculty.department_code = departments.department_code;

SELECT
  faculty.faculty_fname
FROM
  faculty
WHERE
  departments.department_name = 'Mechanical Engineering';

SELECT
  faculty.faculty_fname
FROM
  faculty
WHERE
  department.department_name = 'Mechanical Engineering'
  and faculty.department_code = departments.department_code;

SELECT
  *
FROM
  faculty,
  departments
WHERE
  department.department_name = 'Biology'
  and faculty.department_code = departments.department_code;

SELECT
  *
FROM
  faculty,
  departments
WHERE
  departments.department_name = 'Biology'
  and faculty.department_code = departments.department_code;

--Write an SQL statement to find the titles of books authored by an author having first name as 'Joh Paul' and last name as 'Mueller'.
SELECT
  title
FROM
  book_catalogue AS c,
  book_authors as a
WHERE
  c.isbn_no = a.isbn_no
  and author_fname = 'Joh Paul'
  and author_lname = 'Mueller';

--Write a SQL statement to find the titles of books published by 'McGraw Hill Education'
SELECT
  title
FROM
  book_catalogue
WHERE
  publisher = 'McGraw Hill Education';

--Write a SQL statement to display the first name and the last name of students (student_fname, student_lname) pursuing 'PG' courses
SELECT
  student_fname,
  student_lname
FROM
  students
WHERE
  degree = 'MCA';

--find the first names and dob (student_fname, dob) of students who belong to the department with department code as 'ME' and who were born after '2003-06-15
select
  student_fname,
  dob
from
  students
where
  department_code = 'ME'
  and dob > '2003-06-15';

--Write an SQL statement to find the first names of faculty (faculty_fname) who belong to the department: 'Mechanical Engineering'.
SELECT
  faculty_fname
FROM
  faculty,
  departments
WHERE
  faculty.department_code = departments.department_code
  and department_name = 'Mechanical Engineering';