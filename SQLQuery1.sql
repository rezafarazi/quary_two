-----------Reza Farazi----------------

-------return Table colnum count-------
SELECT COUNT(*) FROM Student;



-------return Table Avrage age -------
SELECT AVG(age) FROM Student;



-------return Table Minimum age -------
SELECT min(age) FROM Student;



-------return Table Maximum age -------
SELECT MAX(age) FROM Student;



-------return Table SUM age -------
SELECT SUM(age) FROM Student;




SELECT Count(Student.Person_id) FROM Student JOIN Persen ON Student.Person_id=Persen.id






--------CREATE A View---------
CREATE VIEW rview AS SELECT * FROM Student



-----------USE A View-------------
SELECT * FROM rview




-------------USE Where-----------
SELECT * FROM rview  WHERE rview.id<5





SELECT Student.frist_name AS Name,Persen.major_id AS MAJOR_ID FROM Student JOIN Persen ON Student.Person_id=Persen.id









SELECT * FROM Student JOIN Persen ON Student.Person_id=Persen.id

SELECT * FROM Student






