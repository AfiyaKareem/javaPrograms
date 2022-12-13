create database eduBridge;
create table Studies
(
name varchar(8) not null,
splace varchar(9)not null,
course varchar(5)not null,
ccost varchar(5)not null);
insert into Studies values ('somdutt', 'sabhari', 'pgdca', 4500);
insert into Studies values ('devdutt', 'bdps', 'dcs', 5000);
insert into Studies values ('devdutt', 'paragathi', 'dcs', 5000);
insert into Studies values ('ram', 'bdps', 'c', 5000);

create table software(
name varchar(8) not null,
title varchar(20) not null,
dev_in varchar(8) not null,
scost decimal(7,2),
dcost int(5),
sold int(3)
);
show tables;
INSERT INTO Programmer(name, dob, doj, sex, prof1, prof2, salary) VALUES 
('sanjay_dutt' , STR_TO_DATE("99-04-19","%y-%m-%d"), STR_TO_DATE("14-09-12","%y-%m-%d") , 'm', 'c', 'basic', 8000);
INSERT INTO Programmer(name, dob, doj, sex, prof1, prof2, salary) VALUES 
('sanjay_dutt' , '1996-04-19', '1914-09-12', 'm', 'pascal', 'basic', 8000);
INSERT INTO Programmer(name, dob, doj, sex, prof1, prof2, salary) VALUES 
('devdutt' , '1996-04-19', '1914-09-12', 'm', 'pascal', 'basic', 8000);
INSERT INTO Programmer(name, dob, doj, sex, prof1, prof2, salary) VALUES 
('afiya' , '1996-01-19', '1914-09-12', 'm', 'pascal', 'basic', 8000);
create table Programmer (name varchar(8) not null,
dob date not null,doj date not null,
sex varchar(1) not null,prof1 varchar(8),prof2 varchar(8),
salary int(4) not null );
alter table programmer
modify name varchar(15);
update programmer 
set name = 'somdutt' where name ='sanjay_dutt';
INSERT INTO software (name, title, dev_in, scost, dcost, sold) VALUES ('somdutt' , 'parachutes' , 'basic', 399.95, 6000, 43);
INSERT INTO software (name, title, dev_in, scost, dcost, sold) VALUES ('preeti' , 'parachutes' , 'c', 399.95, 6000, 43);
INSERT INTO software (name, title, dev_in, scost, dcost, sold) VALUES ('diksha' , 'parachutes' , 'c', 399.95, 6000, 48);
INSERT INTO software (name, title, dev_in, scost, dcost, sold) VALUES ('ujwal' , 'parachutes' , 'c', 399.95, 6000, 8);
INSERT INTO software (name, title, dev_in, scost, dcost, sold) VALUES ('somdutt' , 'parachutes' , 'pascal', 398.95, 6900, 43);
INSERT INTO software (name, title, dev_in, scost, dcost, sold) VALUES ('Ramesh' , 'parachutes' , 'pascal', 1398.95, 7900, 46);
INSERT INTO software (name, title, dev_in, scost, dcost, sold) VALUES ('ujwal' , 'parachutes' , 'dbase', 1398.95, 7900, 46);
set SQL_SAFE_UPDATES = 0;
delete from software where name = 'sanjay_d';
select * from programmer;
select * from Studies;
select * from Software;
select avg(scost) from software where dev_in='pascal';
select name, (year(current_date())-year(dob)) as age from programmer where name in(select name from Studies where course ='dcs');
select max(sold) from Software;
select name, dob from programmer where month(dob)=1;
select min(ccost) from Studies;
select count(*) from programmer where name in (select name from studies where course ='pgdca');
select name from studies where course ='pdgca';

Select ((scost*sold)-dcost) as revenue from software where dev_in = 'c';


select count(name) from Programmer where name in (select name from studies where splace = 'sabhari');
select * from software where name = 'Ramesh';
select * from software where (scost*sold) > 20000;
select count(*) from software where dcost < (scost*sold)-dcost;
select max(scost) from software where dev_in = 'basic';
select count(dev_in) from software where dev_in = 'dbase';

select count(*) from programmer where name in (select name from studies where splace ='paragathi');

select count(*) from programmer where name in (select name from studies where ccost between 5000 And 10000);
select avg(ccost) from studies group by course;
select * from Programmer where prof1  = 'c' or prof2  = 'c';
select count(*) from Programmer where prof1  = 'cobal' or prof2  = 'cobal' or prof1  = 'pascal' or prof2  = 'pascal';
select count(*) from Programmer where prof1  in ('cobal', 'Pascal') or prof2 IN( 'cobal', 'pascal');
select count(*) from Programmer where prof1 NOT in ('cobal', 'Pascal') or prof2  NOT IN( 'cobal', 'pascal');