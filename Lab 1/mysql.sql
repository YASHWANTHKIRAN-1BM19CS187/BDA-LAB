CREATE database Lab0;
USE Lab0;

CREATE table department(
	deptname varchar(5) primary key check(deptname in('CSE', 'ISE', 'ML'))
    );
    
CREATE table employee( 
	id int primary key,
    name varchar(30) not null,
    age int check(age > 0 and age <= 50),
    dept varchar(10),
    salary float,
    foreign key(dept) references department(deptname)
    );
    
CREATE table project(
	id int not null,
    eid int,
    title varchar(10),
    dept varchar(10),
    foreign key(dept) references department(deptname),
    foreign key(eid) references employee(id)
    );
    
CREATE table dependents(
	eid int,
    name varchar(10),
    relation varchar(10),
    foreign key(eid) references employee(id)
    );
    
INSERT into department values('CSE'), ('ISE'), ('ML');
select * from department;

INSERT into employee values(10, 'ABC', 35, 'CSE', 40000), (11, 'BCD', 30, 'ISE', 45000), (12, 'CDE', 25, 'CSE', 60000), (13, 'DEF', 27, 'ML', 55000), (14, 'EFG', 31, 'ML', 30000);
select * from employee;

INSERT into project values(1, 10, 'A1B', 'CSE'), (2, 14, 'B2C', 'ISE'), (3, 13, 'C3D', 'ML'), (4, 12, 'D4E', 'CSE'), (5, 12, 'E5F', 'ISE');
select * from project;

INSERT into dependents values(10, 'XYZ', 'Son'), (12, 'ZAB', 'Wife'), (14, 'PQR', 'Mother');
select * from dependents;

select * from employee where dept = 'CSE';

select dept,count(*) from employee group by dept;

select dept,count(*) from employee where salary >= 50000 group by dept;
    



