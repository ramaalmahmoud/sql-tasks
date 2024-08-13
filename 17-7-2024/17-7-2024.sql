
use JaradatLibrary;







select * from Sections;

select * from Employees;
select * from Users;



select TITLE,FIRSTNAME,LASTNAME 
FROM Authors A
INNER JOIN Books B ON A.ID=B.AUTHOR_ID;

select * from Books;
select * from Catigories;
select TITLE,NAME 
FROM Catigories C
LEFT JOIN Books B ON C.ID=CATIGORY_ID;

select * from Sections;
select * from Employees;
select E.NAME,S.NAME 
FROM Employees E
RIGHT JOIN Sections S ON E.SEC_ID=S.ID;

select * from Books;
select * from Catigories;
select TITLE,NAME 
FROM Catigories C
full JOIN Books B ON C.ID=CATIGORY_ID;


select * from Books;
select * from Users;
select * from Borrow;


select TITLE,U.NAME 
FROM Users U
full JOIN Borrow BR  ON U.ID=BR.USER_ID
FULL JOIN Books B ON B.ID=BR.BOOK_ID;

select *
from Authors
cross join Users ;
