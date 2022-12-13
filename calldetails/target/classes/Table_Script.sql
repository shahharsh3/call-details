create schema `infytel-customer`;
use `infytel-customer`;

create table customer(
phone_no bigint primary key,
name varchar(50),
age integer,
gender char,
address varchar(50),
plan_id integer,
password varchar(50)
);
insert into customer values(9009009001,'Mark',25,'M','Infy Chicago',1,'infy@123');
insert into customer values(9009009002,'Steve',56,'M','Infy Texas',2,'7hjUavb*');
insert into customer values(9009009003,'Linda',23,'F','Infy NY',3,'@aPbj8');

create schema `infytel-calldetails`;
use `infytel-calldetails`;

create table calldetails(
id integer primary key,
called_by bigint,
called_to bigint,
called_on date,
duration integer);

insert into calldetails values(1,9009009001,9009009002,'2017-08-12',34);
insert into calldetails values(2,9009009002,9009009003,'2017-08-11',4);
insert into calldetails values(3,9009009003,9009009001,'2017-08-10',14);
insert into calldetails values(4,9009009001,9009009002,'2017-08-13',3);
insert into calldetails values(5,9009009002,9009009003,'2017-08-14',55);
insert into calldetails values(6,9009009003,9009009001,'2017-08-15',126);
insert into calldetails values(7,9009009001,9009009002,'2017-08-16',79);
insert into calldetails values(8,9009009002,9009009003,'2017-08-17',3);

create schema `infytel-friend-family`;
use `infytel-friend-family`;

create table friendfamily(
id integer primary key AUTO_INCREMENT,
phone_no bigint,
friend_and_family BIGINT);

insert into friendfamily values(1,9009009001,9009009002);
insert into friendfamily values(2,9009009001,9009009003);
insert into friendfamily values(3,9009009002,9009009005);
insert into friendfamily values(4,9009009003,9009009001);

create schema `infytel-plan`;
use `infytel-plan`;

create table plan(
plan_id integer primary key,
plan_name varchar(50),
local_rate integer,
national_rate integer);

insert into plan values(1,'IFY_60',60,60);
insert into plan values(2,'IFY_10',10,20);
insert into plan values(3,'IFY_30',30,60);

