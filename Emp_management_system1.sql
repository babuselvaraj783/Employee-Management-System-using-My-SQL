create database demo;
use demo;
create table department(
dep_id int primary key,
name varchar(50),
manager varchar(50));
create table emp (
emp_id int  ,
emp_name varchar(30) not null,
job_desc varchar(30) default "not allocated",
deptid int,
foreign key (deptid) references department (dep_id)
);
alter table emp
drop primary key; 
drop table emp;
insert into emp (emp_id,emp_name,job_desc,location,salary) values 
(501,'arun','manager','salem',50000);

insert into emp(emp_name,location,salary) values ('babu','chennai',25000);

update emp
set job_desc ="ceo"
where emp_id = 502;

select * from emp;

select ucase(emp_name)emp_name from emp;

truncate table emp;

drop table emp;

alter table department
add primary key(dep_id);

alter table department
drop primary key;

alter table department
drop foreign key dep_id;

drop table department;

insert into department values (501,'HR','Radha'),
(502,'developer','vignesh'),(503,"sales","divin"),(504,'analyst','babu');

select * from department;

insert into emp values (1,'bala','ui',501),(2,"arjun","li",501),(3,"arun","mi",503),(4,"kumar",'ji',502),
(5,"kumaran",'ji',502),(6,"balaji",'oi',503),
(7,"navin",'pi',504);

select emp.emp_id,emp.emp_name,department.manager
from emp,department
where emp.deptid = department.dep_id;

select emp.emp_id,emp.emp_name,department.manager
from emp inner join department
on emp.deptid = department.dep_id;

select emp.emp_id,emp.emp_name,department.manager
from emp right join department
on emp.deptid = department.dep_id;

select emp.emp_id,emp.emp_name,department.manager
from emp left join department
on emp.deptid = department.dep_id;

select emp.emp_id,emp.emp_name,department.manager
from emp full join department
on emp.deptid = department.dep_id;

start transaction;
select * from emp;
savepoint den;
insert into emp values(509,'aruna','manager',501);
delete from emp where emp_id = 1;
savepoint lie;
select * from emp;
rollback to den;
select emp_id,emp_name from emp
union all
select null as emp_id,name from department;
select emp_id,emp_name from emp
union 
select null as emp_id,name from department;
select emp_id,emp_name from emp
intersect
select null as emp_id,name from department;
show index from emp;
select emp_id,emp_name from emp where job_desc = (select job_desc from emp where deptid = 504);
create index speed on emp (emp_name);
alter table emp drop index speed;
select * from emp
where deptid in (501,502,503);
select * from emp
where deptid any (501,502,503);
select * from emp
where deptid all (501,502,503);
select * from emp
where deptid exists (select deptid from emp where name= 'babu');


