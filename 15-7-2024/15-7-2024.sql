DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Authors;

create table Books(
BookID int ,
Title varchar(255),
AuthorID int,
PublishedYear  int,
CopiesAvailable int,
BookCategory varchar(255),

);

insert into Books 
values (1, 'To kill Mockingbird' ,101,1960,5,'Fiction');
insert into Books 
values (2, 'Sapiens: A Brief History of Humankind' ,102,2011,2,'Non-Fiction');
insert into Books 
values (3, 'A Brief History of Time' ,103,1988,10,'Science');
insert into Books 
values (4, '	The Diary of a Young Girl' ,104,1988,7,'Biography');
ALTER TABLE
  Books
ALTER COLUMN
  BookID
    int NOT NULL;

create table Authors (
AuthorID  int primary key,
FirstName  varchar(255),
BirthYear  varchar(255),

);

insert into Authors 
values (101, 'Harper' ,'1926');
insert into Authors 
values (102, 'Yuval Noah' ,'1976');
insert into Authors 
values (103, 'Stephen' ,'1942');
insert into Authors 
values (104, 'Anne' ,'1929');




select * from Books;

select * from Authors;

select Books.Title, Authors.FirstName from Books 
join Authors
on Books.AuthorID=Authors.AuthorID;


select max(CopiesAvailable) from Books  as maxCopies ;
select min(CopiesAvailable) from Books  as minCopies ;

select avg(PublishedYear) from Books  as avgYear ;

SELECT SUM(CopiesAvailable)
FROM Books;

delete  from Books;

select * from Books;

DROP TABLE IF EXISTS Books;






