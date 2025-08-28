--  Fetch the first_names, last_names and birth_dates of the students.
--1. Fetch the first four students. You have to order the four students alphabetically by last_name.
select first_name, last_name, birth_day from student
order by last_name ASC
LIMIT 4;

--2. Fetch the details of the youngest student.
select first_name, last_name, birth_day from student
order by birth_day DESC
LIMIT 1;

--3. Fetch three students skipping the first two students.
SELECT * FROM student
ORDER BY first_name
LIMIT 3 OFFSET 2;