create database PLP_Students;
use PLP_Students;
-- Create Students Table
-- Stores information about students.
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    DateOfBirth DATE NOT NULL
);
/* Create Courses Table
Stores information about courses.
Courses and  Instructors has  One-to-One relationship, as each course has a single instructor
 */
CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    InstructorID INT,
    CONSTRAINT fk_department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    CONSTRAINT fk_instructor FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);

/* Create Enrollments Table 
 Tracks which students are enrolled in which courses (many-to-many relationship).
Students and Courses has    Many-to-Many relationship via Enrollments.
*/
CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrollmentDate DATE NOT NULL,
    CONSTRAINT fk_student FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    CONSTRAINT fk_course FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

/* Create Instructors Table
 Stores information about instructors for courses.
*/
CREATE TABLE Instructors (
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

/* Create Departments Table
Links departments to courses.
Departments and Courses has One-to-Many relationship, as a department offers multiple courses.
*/
CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

-- insert values into students table
INSERT INTO Students (FirstName, LastName, Email, DateOfBirth)
VALUES 
('Tshepi', 'Dude', 'TDube@example.com', '2000-01-15'),
('Odi', 'Dube', 'ODube@example.com', '1999-07-22'),
('Riri', 'Ringane', 'RRingane@example.com', '2001-05-30');

-- insert values into Instructors table
INSERT INTO Instructors (FirstName, LastName, Email)
VALUES 
('Dr. Nompie', 'Dube', 'NDUBE@example.com'),
('Dr. Mpho', 'Dube', 'MDUBE@example.com');

-- insert values into Departments table
INSERT INTO Departments (DepartmentName)
VALUES 
('Web Development'),
('Database'),
('Programming');

-- insert values into  Courses table
INSERT INTO Courses (CourseName, DepartmentID, InstructorID)
VALUES 
('HTML', 1, 1),
('SQL', 2, 2),
('PYTHON', 3, NULL);

-- INSERT VALUES INTO Enrollments TABLE
INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate)
VALUES 
(1, 1, '2025-09-01'),
(2, 2, '2025-09-02'),
(3, 3, '2025-09-03');
