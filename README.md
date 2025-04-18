#   Database Design & SQL Programming Project
---
### By Nompie Mthombeni Dube
---

##  Overview

- Design and implement a full-featured database using only MySQL.
- The PLP_Student Database Management System is designed to organize, store, and manage information about students, courses, departments, and enrollments efficiently

---

##  Tools & Technologies

- **MySQL** – for building and managing the database
- **Draw.io (diagrams.net)** – for creating the Entity Relationship Diagram (ERD)

---

##  Prerequisites

Choose a real-world use case (e.g., Library Management, Student Records, Clinic Booking System, Inventory Tracking, etc.)

Create a well-structured relational database using SQL.

Use SQL to create:

Tables with proper constraints (PK, FK, NOT NULL, UNIQUE)

Relationships (1-1, 1-M, M-M where needed)

---

## Description of what your project does

- Stores Student Data:Keeps detailed records of students, including names, emails, and their associated departments.
- Manages Courses:Maintains a list of courses
- Tracks Enrollments:Records which students are enrolled in which courses, the enrollment dates.

----

## Objective: Student Records Database

Entities:
- Students: Information about students.
- Courses: List of available courses.
- Enrollments: Tracks which students are enrolled in which courses.
- Departments: Organizes courses into departments.
---

##  Tables Overview

| Table Name         | Description |
|--------------------|-------------|
| `Students`         | Information about students |
| `Courses`          | List of courses|
| `Enrollments`      | Many-to-many relationship between Students and Courses|
| `Instructors`      | Names of instructors for assigned courses |
| `Department`       | Links departments to courses |


---
## Key Features of This Database
- 1-M Relationships:- Students are assigned to Departments.
- Courses belong to Departments.

- M-M Relationship:- Enrollments connect Students and Courses.

- Constraints:- Primary Keys (PK), Foreign Keys (FK), NOT NULL, UNIQUE, CHECK.

---

## How to run/setup the project (or import SQL)
---
To set up and run the Student Records Database Management System using MySQL, follow these steps:
Setup and Running Steps
Prerequisites:
- Install MySQL Server and a client tool (e.g., MySQL Workbench or Command-Line Client).
- Ensure you have access to the .sql file containing the database creation script and sample data.

---

## Step-by-Step Guide:
1. Create the Database:
- Open your MySQL client (e.g., Workbench or Command Line).
- Create a new database for the project:
- CREATE DATABASE PLP_StudentsDB;
- USE PLP_StudentsDB;


2. Import the .sql File:
- Execute the .sql file to create tables and populate them with sample data.
- If using MySQL Workbench:- Go to File > Open SQL Script and select the .sql file.
- Click Execute to run the script.

- If using the command line:- Navigate to the directory containing the .sql file.
- Run:mysql -u your_username -p StudentRecordsDB < path/to/student_records.sq


3. Verify the Setup:
- Check if all tables have been created:SHOW TABLES;

- Query the tables to confirm sample data:SELECT * FROM Students;
SELECT * FROM Courses;


4. Use the Database:
- Perform queries to retrieve information, e.g.:- List all students enrolled in a specific course:
- SELECT Students.FirstName, Students.LastName, Courses.CourseName
 -- FROM Enrollments
  -- JOIN Students ON Enrollments.StudentID = Students.StudentID
   -- JOIN Courses ON Enrollments.CourseID = Courses.CourseID
    --WHERE Courses.CourseName = 'Data Structures';


- Add new data as needed using INSERT INTO statements.

## 

---




