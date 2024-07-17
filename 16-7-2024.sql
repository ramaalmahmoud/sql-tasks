drop table Teachers;




create table Teachers(
ID INT PRIMARY KEY,
FIRSTNAME VARCHAR(255),
LASTNAME VARCHAR(255) );


create table TeachersDetails(
DEPARTMENT VARCHAR(255) ,
office INT PRIMARY KEY,
Quorum INT,
teacherid int unique,
foreign key (teacherid) references Teachers(ID) on delete cascade
);




create table COURSES(
ID INT PRIMARY KEY,
NAMECOURSE VARCHAR(255),
 TEACHERID INT , 
 SECTION INT,
 foreign key (TEACHERID) references Teachers(ID) on delete cascade

);

CREATE TABLE Students (STUDENTID INT PRIMARY KEY,
FIRSTNAME VARCHAR(255),
LASTNAME VARCHAR(255),
BIRTHDATE VARCHAR(255),


);


CREATE TABLE Students_Courses(studentid int,
courseid int
 foreign key (studentid) references Students(STUDENTID) on delete cascade,
  foreign key (courseid) references COURSES(ID) on delete cascade

);

insert into Teachers values(1, 'Soliman', 'Odat') ,(2,'Omar','Almahmoud'), (3,'Rama','Oudat'), (4,'Nermene','Jaradat'),(5,'Hajar','Damen');
insert into TeachersDetails values('Arabic', 100, 20,2) , ('English', 101, 22,3) , ('Math', 103, 18,5),  ('Physics', 104, 20,4) , ('Biology', 105, 16,1);
insert into COURSES values(100,'English1',1,1),(101,'Biology2',5,1), (102,'Math1',2,5),(103,'English2',3,2),(104,'Pyhisics1',4,1);
insert into Students values (2000,'Mohammad','Omari','23-4-1999'), (2001,'Khaled','Tayseer','08-6-1996'),  (2003,'Roaa','Zoubi','3-1-2001') ,(2004,'Hala','Malkawi','12-7-2007');
insert into Students_Courses values (2000,101),(2002,101),(2003,102),(2004,103),(2001,102);


select * from TeachersDetails;
select * from Students_Courses;