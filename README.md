#   Database Design & SQL Programming Project
### By Nompie Mthomebni Dube

##  Overview

Design and implement a full-featured database using only MySQL.
The PLP_Student Database Management System is designed to organize, store, and manage information about students, courses, departments, and enrollments efficiently

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

Stores Student Data:Keeps detailed records of students, including names, emails, and their associated departments.
Manages Courses:Maintains a list of courses
Tracks Enrollments:Records which students are enrolled in which courses, the enrollment dates.

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
## Prerequisites:

Install MySQL Server and a client tool (e.g., MySQL Workbench or Command-Line Client).
Ensure you have access to the .sql file containing the database creation script and sample data.

---




