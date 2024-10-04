select
  name,
  dept_name,
  salary
FROM
  instructor
GROUP BY
  name,
  dept_name,
  salary
ORDER BY
  dept_name DESC,
  name ASC,
  salary asc;

SELECT
  name,
  dept_name,
  salary
from
  instructor
ORDER BY
  dept_name DESC,
  salary ASC,
  name asc;

SELECT
  *
from
  instructor
where
  dept_name = 'Accounting'
  and salary > any (
    select
      salary
    from
      instructor
    WHERE
      dept_name = 'Psychology'
  );

select
  title
from
  course
where
  course_id in (
    select
      course_id
    from
      section
    where
      semester = 'Fall'
    intersect
    select
      course_id
    from
      section
    where
      semester = 'Spring'
  );

select
  building
from
  department
GROUP BY
  building;

select
  building,
  count(ID)
from
  student
  natural join department
GROUP BY
  building;

select
  building,
  count(DISTINCT ID)
from
  takes
  inner join student using (ID)
  inner join section using (course_id, sec_id, semester, year)
where
  year in (2005, 2006, 2007, 2008)
GROUP BY
  building;

select
  max(salary)
from
  instructor
where
  dept_name = 'Psychology';

select
  dept_name,
  avg(salary)
from
  instructor
GROUP BY
  dept_name
HAVING
  avg(salary) > (
    select
      max(salary)
    from
      instructor
    where
      dept_name = 'Psychology'
  );

select
  dept_name,
  max(salary)
from
  instructor
  natural join department
GROUP BY
  dept_name