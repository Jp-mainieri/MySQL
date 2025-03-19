create Table Workers(
ID INT primary key auto_increment,
 Worker_Name varchar(100) NOT NULL,
 Worker_Position varchar(50) NOT NULL,
 Salary Decimal(10,2) NOT NULL);
show tables;
alter table Workers add column Admission_Date DATE NOT NULL;
select * from Workers;
alter table Workers drop column Worker_Position;
alter table Workers modify column Salary Decimal(12,2) NOT NULL;
create table departments(
ID INT auto_increment primary KEY,
name varchar(100)NOT NULL
);
alter table Workers add column department_ID INT;
alter table Workers add FOREIGN Key(department_ID) References departments(ID);
select * From Workers;
select * from departments;
alter table departments add column budget DECIMAL(12,2);
alter table departments drop column budget;
alter table departments modify column name varchar(150);
alter table departments RENAME TO sectors;
select * from sectors;
alter table Workers drop foreign key department_ID;
alter table Workers drop column department_ID;
drop table sectors;
