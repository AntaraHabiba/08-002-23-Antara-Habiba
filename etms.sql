CREATE DATABASE etms;
USE etms;
CREATE TABLE courses(
    id int PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
	course_code VARCHAR(5) UNIQUE NOT NULL,
	course_level VARCHAR(15) NOT NULL,
	credits int NOT NULL,
	instructor_id int FOREIGN KEY REFERENCES instructors(id)
	);
CREATE TABLE instructors(
	id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    designation VARCHAR(20) NOT NULL,
	phone VARCHAR(15) UNIQUE NOT NULL,
	salary DECIMAL(7,2) NOT null
	);
CREATE TABLE learners(
	id int PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	roll int UNIQUE NOT NULL,
	email VARCHAR(50) UNIQUE NOT null,
	date_of_birth DATE NOT NULL,
	city VARCHAR(15) NOT NULL,
	);
CREATE TABLE enrollments(
	id int PRIMARY KEY AUTO_INCREMENT,
	student_id int UNIQUE NOT NULL FOREIGN KEY REFERENCES learners(id),
	course_id int NOT NULL FOREIGN KEY REFERENCES courses(id),
	enroll_date DATE NOT NULL,
	status int NOT NULL,