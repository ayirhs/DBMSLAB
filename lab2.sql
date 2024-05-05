-- TASK 2 : Creating and Modifying tables: 

-- 1) Create the following tables in cms2080 database from the user root.  
use cms2080;
create table department
(
	dept_id numeric(4) primary key,
    dept_name varchar(25) not null,
    dept_block_no numeric(4)
);
show tables;
describe department;

create table student
(
	stu_id numeric(4) primary key,
    stu_name varchar(25) not null,
    stu_address varchar(25),
    dept_id numeric(4),
    age numeric(3),
	foreign key(dept_id) references department(dept_id)
);
show tables;
describe student;

create table staff
(
	staff_id numeric(4) primary key,
    staff_name varchar(25),
    dept_id numeric(4),
    foreign key(dept_id) references department(dept_id)
);
show tables;
describe staff;

create table subject 
(
	sub_id numeric(4) primary key,
    sub_name varchar(25),
    sub_code varchar(25),
    staff_id numeric(4),
    foreign key(staff_id) references staff(staff_id)
);
show tables;
describe subject;

create table marks
(
	marks_obtain numeric(4),
    sub_id numeric(4),
    stu_id numeric(4),
    primary key(sub_id,stu_id),
    foreign key(sub_id) references subject(sub_id),
    foreign key(stu_id) references student(stu_id)
);
show tables;
describe marks;

-- 2) Write ALTER TABLE statement to modify the range of columns stu_name from varchar (25) to varchar (40) from an existing table student.
	
    describe student;
    alter table student
    modify stu_name varchar(40) not null;
    
-- 3) Write ALTER TABLE statement to drop the age attribute from the existing table student.  
	
    describe student;
    alter table student
    drop column age;