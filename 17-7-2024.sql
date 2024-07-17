
use JaradatLibrary;



CREATE TABLE Authors ( 
ID INT PRIMARY KEY IDENTITY (1,1),
FIRSTNAME VARCHAR(255),
LASTNAME VARCHAR(255),
BIRTHDATE VARCHAR(255)

);
CREATE TABLE Sections (
ID INT PRIMARY KEY IDENTITY(1,1),
NAME VARCHAR(255),
LOCATION VARCHAR(255),
BOOKSNUMS INT,
);

CREATE TABLE Catigories(
ID INT PRIMARY KEY IDENTITY(1,1),
NAME VARCHAR(255)
);

CREATE TABLE Employees(
ID INT PRIMARY KEY IDENTITY(1,1),
NAME VARCHAR(255),
SEC_ID INT ,
FOREIGN KEY (SEC_ID) REFERENCES Sections(ID) ON DELETE CASCADE
);

CREATE TABLE Users (
ID INT PRIMARY KEY IDENTITY(1,1),
NAME VARCHAR(255),
);

create table Books (
ID INT PRIMARY KEY IDENTITY (1,1),
TITLE VARCHAR(255),
COPIESAVAILABLE INT,
PUPLISHYEARS INT,
AUTHOR_ID INT ,
CATIGORY_ID INT,
SEC_ID INT,
FOREIGN KEY (AUTHOR_ID) REFERENCES Authors(ID) ON DELETE CASCADE,
FOREIGN KEY (CATIGORY_ID) REFERENCES Catigories(ID) ON DELETE CASCADE,
FOREIGN KEY (SEC_ID) REFERENCES Sections(ID) ON DELETE CASCADE


);


CREATE TABLE Borrow (
USER_ID INT ,
BOOK_ID INT,
FOREIGN KEY (USER_ID) REFERENCES Users(ID)ON DELETE CASCADE,
FOREIGN KEY (BOOK_ID) REFERENCES Books(ID)ON DELETE CASCADE
);


INSERT INTO Authors (FIRSTNAME, LASTNAME, BIRTHDATE) VALUES
('John', 'Doe', '1970-01-01'),
('Jane', 'Smith', '1980-02-02'),
('Emily', 'Johnson', '1990-03-03'),
('Michael', 'Brown', '1985-04-04'),
('Sarah', 'Davis', '1995-05-05');


INSERT INTO Sections (NAME, LOCATION, BOOKSNUMS) VALUES
('Fiction', 'First Floor', 1500),
('Non-Fiction', 'Second Floor', 1200),
('Reference', 'Third Floor', 800),
('Children', 'First Floor', 500),
('Science', 'Second Floor', 600);


INSERT INTO Catigories (NAME) VALUES
('Science Fiction'),
('Biography'),
('Science'),
('History'),
('Children');

INSERT INTO Employees (NAME, SEC_ID) VALUES
('Alice', 1),
('Bob', 2),
('Charlie', 3),
('David', 4),
('Eva', 5);


INSERT INTO Users (NAME) VALUES
('Tom'),
('Jerry'),
('Anna'),
('Elsa'),
('Olaf');

INSERT INTO Books (TITLE, COPIESAVAILABLE, PUPLISHYEARS, AUTHOR_ID, CATIGORY_ID, SEC_ID) VALUES
('Book One', 5, 2010, 2, 1, 1),
('Book Two', 3, 2011, 2, 1, 2),
('Book Three', 4, 2012, 1, 3, 3),
('Book Four', 6, 2013, 4, 4, 4),
('Book Five', 2, 2014, 4, 5, 5);

INSERT INTO Borrow (USER_ID, BOOK_ID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);





select * from Sections;

select * from Employees;
select * from Users;

select * from Borrow;
select * from Authors;

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


