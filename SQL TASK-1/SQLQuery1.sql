USE SchoolData;

CREATE TABLE StudentData (
    StudentId INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50) NULL,
    Age INT,
    Gender VARCHAR(10) NULL 
);

INSERT INTO StudentData(StudentId,FirstName,LastName,Age,Gender)
VALUES
   (1, 'John', NULL, 20, 'Male'),
   (2, 'Alice', 'Smith', 19, 'Female'),
   (3, 'David', 'Brown', NULL, 'Male'),
   (4, 'Jessica', NULL, 21, NULL),
   (5, 'Michael', 'Johnson', 22, 'Male');

SELECT * FROM StudentData;

CREATE TABLE CoursesData (
    CourseId INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT NULL
);

INSERT INTO CoursesData (CourseID,CourseName,Credits)
VALUES
    (1,'Mathematics',3),
    (2,'History',NULL),
    (3,'Science', 4),
    (4,'Literature', NULL);

SELECT * FROM CoursesData;