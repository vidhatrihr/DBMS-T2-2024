select
  title
from
  book_catalogue,
  book_authors
WHERE
  book_catalogue.isbn_no = book_authors.isbn_no
  and book_authors.author_fname = 'Joh Paul'
  and book_authors.author_lname = 'Mueller';

select
  *
from
  book_authors;

SELECT
  title
from
  book_catalogue
WHERE
  publisher = 'McGraw Hill Education';

SELECT
  students.student_fname,
  students.student_lname
from
  members,
  students
where
  members.roll_no = students.roll_no
  and member_type = 'PG';

select
  author_fname,
  author_lname
from
  book_authors
WHERE
  author_fname like '_';

SELECT
  title,
  publisher
from
  book_catalogue
where
  year != 2015
  and year != 2017;

select
  student_fname,
  student_lname
from
  students
where
  dob BETWEEN '2002-05-01' and '2002-05-31'
  or dob BETWEEN '2003-05-01' and '2003-05-31';

select
  count(*) as total_member
from
  members
where
  member_type = 'UG';

SELECT
  department_code,
  count(*)
from
  students
where
  gender = 'F'
GROUP BY
  department_code;

SELECT
  author_fname,
  author_lname
from
  book_authors
where
  author_fname like '_';

select
  title,
  publisher
from
  book_catalogue
where
  year != 2015
  AND year != 2017;

SELECT
  student_fname,
  student_lname
from
  students
where
  dob BETWEEN '2002-05-01' and '2002-05-31'
  or dob BETWEEN '2003-05-01' and '2003-05-31';

SELECT
  count(*) as total_members
from
  members
where
  member_type = 'UG';

SELECT
  department_code,
  count(department_code)
from
  students
WHERE
  gender = 'F'
GROUP BY
  department_code;

select
  title
from
  book_catalogue
WHERE
  year = 2015;

SELECT
  *
from
  book_catalogue;

SELECT
  *
from
  students
  natural join departments;

select
  department_name
FROM
  students
  natural join departments
where
  student_fname = 'Gita'
  and student_lname = 'Das';

SELECT
  roll_no
from
  students
  natural join departments
where
  gender = 'M'
  and department_building = 'Block_2';

SELECT
  student_fname,
  student_lname,
  roll_no
from
  students
  natural join departments
where
  department_building = 'Block_1';

SELECT
  *
from
  members
where
  member_no not in (
    select
      member_no
    FROM
      book_issue
  );

select
  doi
from
  book_issue
  natural join book_copies
  natural join book_catalogue
where
  title = 'Learning with Python';