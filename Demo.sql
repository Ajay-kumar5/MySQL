create database Demo;
show databases;
use Demo;
create table users(
  ID int auto_increment,
  NAME  varchar(200) not null,
  Age int not null,
  primary key(ID)
);

show tables;
describe studs;

alter table users add Gender varchar(10);

alter table users
	add city varchar(50),
    add contact int(10);

alter table users modify city varchar(100);
alter table users rename Studs;

select * from studs;
insert into studs values(null,'AJAY',25,'Male','Palani',958685789);

insert into studs (NAME,Age,Gender,city,contact)values('Kumar',25,'Male','Erode',896854755);

insert into studs (NAME,Age,Gender,city,contact)values
('Hari',25,'Male','Gobi',896854755),
('Bala',25,'Male','Pollachi',896854755);

delete from studs where ID = 2;

update studs set city = 'Pollachi', contact =658965425 where ID = 3; 

select * from studs;
