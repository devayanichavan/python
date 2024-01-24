--DDL
--Create,Alter,Drop,Truncate,Rename
--DML
--Insert,Update,Delete
--DQL
--select


--char
--varchar--0-9,

name varchar(20)

amar 


--date time

create table A1(id int,name varchar(15),loc varchar(15));

select * from A1
select id,name from A1

insert into A1 values(1,'amar','pune')
insert into A1 values(2,'samir','sangali')
insert into A1 values(3,'ram','satara')
insert into A1 values(4,'amarendra','Kolhapur')
insert into A1 values(5,'aashish','mumbai')
insert into A1 values(6,'pranav','akola')
insert into A1 values(7,'priya','pune')
insert into A1(id,name) values(8,'shiva')

--Clauses
--Where
--Order by
--Group by
--having

select * from A1 where loc='satara';
select id,name from A1 where id>5
select * from A1 where loc='pune' and id=3;
select * from A1 where loc='pune' or id=3;

select * from A1 Where id not in(1,4,2,7)
select * from A1 Where id  in(1,4,2,7)

select * from A1 where name between 'A' and 'n'
select * from A1 where id between 2 and 5

select * from A1 where loc like 'm%';
select * from A1 where loc like '%m%';
select * from A1 where loc like '%m';
select * from A1 where loc like '%m';
select * from A1 where name like '__m'
select * from A1 where name like 'a%h'

select *,new_id=id*1 from A1

select * from A1 where loc is null
select * from A1 where loc is not null



--DML
select * from A1
update A1 set loc='beed' where id=7
update A1 set loc='satara' where loc is null

delete A1 where id=8
delete m1


select * from m1

select * from marks
select * from m1
drop table marks

select * from mn
insert into mn values(1,'pune',2)
truncate table mn 
--Alter

select * from a1
alter table a1 add dept varchar(15);
alter table a1 drop column dept ;
alter table a1 alter column dept varchar(10)

select * from a1
create table t1(id int,name varchar(20),city varchar(15));
select * from t1

--Function

--min
--max
--count
--sum
--top
--avg
--distinct

select * from employee

select min(salary)as min_sal from employee
select min(salary) min_sal from employee
select * from employee
select max(city) from employee
select count(*) from employee
select count(age) from employee
select count(city) from employee

select min(salary)fourth_high_sal from employee where salary in(select top 4(salary) from employee order by salary desc)
select salary from employee order by salary desc

select max(salary)high_sal from employee where salary in(select top 6(salary) from employee order by salary desc)
select * from employee
select sum(dept) from employee


select * from employee
select avg(salary) from employee

select count(distinct(dept)) from employee
select distinct(salary) from employee

--Constraint
--primary key--not null+unique
--foreign key
--not nullkey
--unique key
--check key
--Default key


create table h1(id int primary key,name varchar(20),age int)
select * from h1
insert into  h1 values (1,'keshav',24)
insert into h1 values(2,'keshav',25)
insert into h1(name,age) values ('ram',23)

--Auto increment
create table l1(id int identity,name varchar(15))
insert into l1 values('ram')
insert into l1 values('shyam')

select * from a1
insert into a1 values('karan','mumbai')

--not null

create table k1(id int primary key identity,name varchar(20) ,loc varchar(20)not null)
insert into k1 values('pranav','pune')
insert into k1 values('pranav',null)
select * from k1

--Unique
create table g1(id int identity,name varchar(20),loc varchar(20)not null unique,age int)

insert into g1 values('ram','pune',10)
insert into g1 values('ram','mumbai',10)
insert into g1 values('hari',null,15)

create table g2(id int identity,name varchar(20),loc varchar(20)not null unique,age int unique)

insert into g2 values('ram','pune',10)
insert into g2 values('ram','mumbai',10)
insert into g2 values('hari','satara',null)
insert into g2 values('pranav','beed',null)

select * from employee
--Check 
select * from c1
create table c1(id int identity,name varchar(20),loc varchar(20),age int check(age>21))
insert into c1 values('asha','pune',22)
insert into c1 values('usha','sangli',20)

--Default 

create table d3(id int identity(10,1),name varchar(20),city varchar(15),age int Default 25)
select * from d3

insert into d3 values('radha','beed',23)
insert into d3 values('keshav','satara',default)


--Group by
select * from employee

select dept,sum(salary)sal_sum from employee group by dept
select dept,sum(salary)sal_sum from employee group by dept

select city,min(age)min_age from employee group by city

select dept,sum(salary)sal_sum from employee where sum(salary)>75000 group by dept

--Having

select dept,sum(salary)sal_sum from employee  group by dept having sum(salary)>75000
