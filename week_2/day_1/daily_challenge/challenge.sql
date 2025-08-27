Create database Hollywood;

create table actors(
actor_id int primary key,
first_name varchar (50) not null,
last_name varchar (50) not null,
age int not null,
number_oscars int not null
)

insert into actors (actor_id,first_name, last_name, age, number_oscars)
values (1,'Sandra','Poluk','40',20),
       (2,'Tom','Hanks','60',10),
       (3,'Brad','Pitt','50',5),
       (4,'Angelina','Jolie','45',3),
       (5,'Robert','Pattison','35',1);

--1. Count how many actors are in the table
select count(*) from actors ;

--2. add a new actor with some blank fields
INSERT INTO actors (actor_id, first_name) 
VALUES (6, 'Johnny');

/*  Outcome: Error (because last_name, age, and number_oscars are NOT NULL).
    The database will reject the insert.
    Any attempt to insert an actor with blank (NULL) values in first_name, last_name, age,
    or number_oscars will fail because of the NOT NULL constraints. */

