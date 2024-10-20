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

alter table EMPLOYEE add foreign key(Dno) references DEPARTMENT;

create table DEPT_LOCATIONS(
Dnumber int foreign key references DEPARTMENT,
Dlocation varchar(15) primary key);
select *from DEPT_LOCATIONS;

alter table DEPT_LOCATIONS alter column Dnumber int not null;

create table PROJECT(
Pname varchar(20),
Pnumber int primary key,
Plocation varchar(15),
Dnum int foreign key references EMPLOYEE);

select *from PROJECT;

create table WORKS_ON(
Essn int foreign key references EMPLOYEE,
Pno int primary key foreign key references PROJECT,
Hours float);
select *from WORKS_ON;

create table DEPENDENT(
Essn int foreign key references EMPLOYEE,
Dependent_name varchar(20),
Sex varchar(1) check(Sex in ('M','F')),
Bdate date,
Relationship varchar(15),
primary key(Essn,Dependent_name));
select *from DEPENDENT;

