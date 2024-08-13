create database School_managment_system;

use School_managment_system;
go


create table Families (
ID BIGINT PRIMARY KEY identity(1000,1),
Name varchar(255),
Email varchar(255),
Phone varchar(255),
address varchar(255)


);
create table Assignments (
ID BIGINT PRIMARY KEY identity(1,1),
Name varchar(255),
description varchar(255),
deadline varchar(255),



);

create table Students (
ID BIGINT PRIMARY KEY identity(2000,1),
Name varchar(255),
Birthdate Varchar(255),
address varchar(255),
ID_Family bigint,

foreign key (ID_Family) REFERENCES Families(ID)



);

create table Assignments_Students (
ID int primary key identity (1,1),
status varchar(255),
id_assignment BIGint foreign key REFERENCES Assignments(ID),
id_student BIGint foreign key REFERENCES Students(ID),


);

create table Courses (
ID BIGINT PRIMARY KEY identity(300,1),
Name varchar(255),
description varchar(255),
Rescources varchar(255),

);
create table Courses_Students (
ID BIGINT PRIMARY KEY identity(1,1),
id_student bigint,
id_course bigint,
foreign key (id_student) REFERENCES Students(ID),
foreign key (id_course) REFERENCES Courses(ID)

);
create table Classes (
ID BIGINT PRIMARY KEY identity(1,1),
class_code varchar(255),
room_number varchar(255),
Schedule varchar(255),
id_course bigint unique,
foreign key (id_course) REFERENCES Courses(ID)


);

create table Classes_Students (
ID BIGINT PRIMARY KEY identity(1,1),
id_student bigint,
id_class bigint,
foreign key (id_student) REFERENCES Students(ID),
foreign key (id_class) REFERENCES Classes(ID)

);

create table Attendence (
ID BIGINT PRIMARY KEY identity(1,1),
date varchar(255)





);
create table Attendence_Students (
ID BIGINT PRIMARY KEY identity(1,1),
id_student bigint,
id_attendence bigint,
reason varchar(255),
type_of_abbsence varchar(255),
foreign key (id_student) REFERENCES Students(ID),
foreign key (id_attendence) REFERENCES Attendence(ID)

);


insert into Families values('John Doe','john@gmail.com','0791236743','10 street'),('Ahmad Mohammad','ahmad@gmail.com','0791226243','4 street'),('Sami obied','sami@gmail.com','0781136793','11street'),('Solieman oudat','solieman@gmail.com','0771136743','11street');

insert into Assignments values('Create login page','two inputs with button and validation for the inputs','1-8-2024 11:59 pm'),('Create register page','4 inputs with button and validation for the inputs','2-8-2024 11:59 pm'),('Create profile page','name,phone,email,picture','3-8-2024 11:59 pm');
insert into Assignments_Students values('completed',3,2004),('completed',3,2002),('notcompleted',2,2003);
insert into Students values('jordan Mohammad','22-5-2007','10 street',1003),('adam ghhh','7-6-2005','4 street',1000),('sara ahmad','12-1-2006','3street',1002),('rama solieman','23-5-2000','30 street',1003);
insert into Courses values('Arabic','rules and writing','bookarab1'),('English','speaking and writing','bookeng1'),('Math','rules and derviation','bookmath3'),('History','arab','bookahist13');
insert into Courses_Students values(2001,300),(2002,301),(2001,300),(2002,303),(2003,302);
insert into Classes values ('a21','12','12:00',303),('b11','11','10:00',300),('a11','10','8:00',301),('c10','5','16:00',302);
insert into Classes_Students values(2002,7),(2001,7),(2003,10),(2001,9);
insert into Attendence values('22-8-2024'),('23-8-2024'),('24-8-2024'),('25-8-2024'),('26-8-2024');
insert into  Attendence_Students values (2001,1,'ffff','abscence'),(2001,1,'ffggf','late'),(2002,1,'jjjjf','leaving'),(2002,2,'hhh','abscence');
