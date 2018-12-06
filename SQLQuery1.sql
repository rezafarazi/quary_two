------Reza Farazi-------



---------Create Person Table-------
CREATE Table Persen(id INT NOT NULL PRIMARY KEY IDENTITY,student_number nchar(15),major_id int,CONSTRAINT [FK_Student_ToTable] FOREIGN KEY (major_id) REFERENCES [Major]([id]));


---------SELECT Person Table-------
SELECT * FROM dbo.Person;



---------Create Student Table-------
CREATE TABLE Student ([id] INT IDENTITY (1, 1) NOT NULL,[frist_name]  NVARCHAR (50) NULL,[last_name]   NVARCHAR (50) NULL,[Person_id]   INT           NULL,[national_id] NCHAR (10)    NULL,[age]         INT           NULL,PRIMARY KEY CLUSTERED ([id] ASC),CONSTRAINT [FK_Student_ToTable] FOREIGN KEY (Person_id) REFERENCES [Persen]([id]));




---------Select Student Table-------
SELECT * FROM student;





---------Create Major Table----------
CREATE Table Major(id INT NOT NULL PRIMARY KEY IDENTITY,frist_name nvarchar(50),last_name nvarchar(50),national_id nchar(10),age INT);



---------Select Student Table-------
SELECT * FROM Major;







----------INSERT Data To Person--------
INSERT INTO Persen (student_number,major_id) VALUES('99',2),('222',3),('58',4),('25',5),('58',6),('587',7),('457852766',8),('45666',9),('456646',10);



----------INSERT Data To Student--------
INSERT INTO Student (frist_name,last_name,Person_id,national_id,age) VALUES('xxx','ssss',2,'9090',29),('ahmadi','ali',3,'40',29),('erza','rezaei',4,'040',29),('xa','xei',5,'62',29),('xosro','xosravi',6,'1140',29),('ddddd','dddd',7,'4040',29),('ccc','cccc',8,'65',29),('ccc','cd',9,'2020',40);







------------SELECT JOIN---------
SELECT * FROM Student JOIN Persen ON Student.Person_id=Persen.id;




------------SELECT CROSS JOIN---------
SELECT * FROM Student CROSS JOIN Persen;



------------SELECT LEFT JOIN---------
SELECT * FROM Student LEFT OUTER JOIN Persen ON Student.Person_id=Persen.id;



------------SELECT Right JOIN---------
SELECT * FROM Student RIGHT OUTER JOIN Persen ON Student.Person_id=Persen.id;




-----------WHERE----------
SELECT * FROM Student RIGHT OUTER JOIN Persen ON Student.Person_id=Persen.id WHERE Student.id IS NOT NULL;




-------SELECT 'a' Char In Between lastname----
SELECT * FROM Student RIGHT OUTER JOIN Persen ON Student.Person_id=Persen.id WHERE Student.last_name LIKE '%a%';



