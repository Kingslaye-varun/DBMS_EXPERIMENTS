create database COMPANY

use COMPANY

create table EMPLOYEE(
fname char(20), 
mname char(20), 
lname char(20), 
ssn int primary key, 
bdate date, 
addr varchar(50), 
sex varchar(1) check(sex in ('M','F')),
salary money,
superssn int foreign key references EMPLOYEE,
Dno int); 
select *from EMPLOYEE;

create table DEPARTMENT(
Dname varchar(20),
Dnumber int primary key,
Mgr_ssn int,
Mgr_start_date date);
select *from DEPARTMENT;


