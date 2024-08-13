select Name from Students where Birthdate='22-5-2007';

select * from Courses where Name='English';

alter table Students add emailll varchar(255);

insert into Students values('najlaa','1-4-5','22street',1002,'ffff','ffff');

select Students.Name from Students join Families on Students.ID_Family=Families.ID;

select Families.Name,Students.Name FROM Families LEFT JOIN Students ON Students.ID_Family=Families.ID;

select Students.Name,Courses.Name 
FROM Students 
JOIN Courses_Students on Courses_Students.id_student=Students.ID 
join Courses on Courses_Students.id_course=Courses.ID;



select Students.Name ,Courses.Name from Students 
left join Courses_Students on Courses_Students.id_student=Students.ID 
left join Courses on Courses_Students.id_course=Courses.ID


select Students.Name FROM Students 
JOIN Assignments_Students on Students.ID=Assignments_Students.id_student
join Assignments ON Assignments_Students.id_assignment=Assignments.ID 
WHERE Assignments.Name='Create register page' AND Assignments_Students.status='completed';

SELECT Students.Name from Students 
join Attendence_Students ON Students.ID=Attendence_Students.id_student
join Attendence on Attendence.ID=Attendence_Students.id_attendence 
where Attendence.date between '22-8-2024' and '25-8-2024' and Attendence_Students.type_of_abbsence='leaving' ;


select Students.Name  from Students 
inner join Attendence_Students on Students.ID=Attendence_Students.id_student
inner join Attendence on Attendence.ID=Attendence_Students.id_attendence 
where Attendence_Students.type_of_abbsence='leaving' 
group by Students.Name
having count ( * )>4
