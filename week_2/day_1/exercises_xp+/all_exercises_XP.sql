create database bootcamp;

create table student(
id SERIAL primary key,
last_name varchar(15) not null,
first_name varchar(15) not null,
birth_day DATE
);

INSERT INTO student (first_name, last_name, birth_day)
VALUES
    ('Marc','Benichou','1998-11-02'),
    ('Yoan','Cohen','2010-12-03'),
    ('Lea','Benichou','1987-07-27'),
    ('Amelia','Dux','1996-04-07'),
    ('David','Grez','2003-06-14'),
    ('Omer','Simpson','1980-10-03');

INSERT INTO student (first_name, last_name, birth_day)
VALUES
    ('Brahim','EL Mtahri','1997-12-21');

--1. Fetch all the data from the table.
select * from student;

--2. Fetch all of the students first_names and last_names.
select first_name, last_name from student;

--3. For the following questions, only fetch the first_names and last_names of the students.
--3.1   Fetch the student which id is equal to 2.
select first_name, last_name from student 
where id=2;

--3.2 Fetch the student whose last_name is Benichou AND first_name is Marc.
select first_name, last_name from student 
where last_name='Benichou' 
AND first_name='Marc';

--3.3 Fetch the students whose last_names are Benichou OR first_names are Marc.
select first_name, last_name from student 
where last_name='Benichou' 
OR first_name='Marc';

--3.4 Fetch the students whose first_names contain the letter a.
select first_name from student 
where first_name like '%a%';

--3.5 Fetch the students whose first_names start with the letter a.
select first_name from student 
where first_name like 'a%';

--3.6 Fetch the students whose first_names end with the letter a.
select first_name from student 
where first_name like '%a';

--3.7 Fetch the students whose second to last letter of their first_names are a.
select first_name from student 
where first_name like '%a_';

--3.8 Fetch the students whose id are equal to 1 AND 3.
select first_name from student 
where id=1 
OR id=3;

--4. Fetch the students whose birth_day are equal to or come after 1/01/2000.  
select first_name from student 
where birth_day >= '2000-01-01';

--5. Fetch the first_names, last_names and birth_dates of the students.
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