------Reza Farazi-------





---------Create Person Table-------
CREATE Table Persen(id INT NOT NULL PRIMARY KEY IDENTITY,student_number nchar(15),major_id int);


---------SELECT Person Table-------
SELECT * FROM dbo.Person;



---------Create Student Table-------
CREATE TABLE [dbo].[Student] ([id] INT IDENTITY (1, 1) NOT NULL,[frist_name]  NVARCHAR (50) NULL,[last_name]   NVARCHAR (50) NULL,[Person_id]   INT           NULL,[national_id] NCHAR (10)    NULL,[age]         INT           NULL,PRIMARY KEY CLUSTERED ([id] ASC),CONSTRAINT [FK_Student_ToTable] FOREIGN KEY (Person_id) REFERENCES [Persen]([id]));




---------Select Student Table-------
SELECT * FROM student;





---------Create Major Table----------
CREATE Table Major(id INT NOT NULL PRIMARY KEY IDENTITY,frist_name nvarchar(50),last_name nvarchar(50),national_id nchar(10),age INT);



---------Select Student Table-------
SELECT * FROM Major;











