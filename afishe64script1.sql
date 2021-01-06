SHOW DATABASES;
DROP DATABASE IF EXISTS afishe64assign2db;
CREATE DATABASE afishe64assign2db;
USE afishe64assign2db;

-- commands given
GRANT USAGE ON *.* TO 'ta'@'localhost';
DROP USER 'ta'@'localhost';
CREATE USER 'ta'@'localhost' IDENTIFIED BY 'cs3319';
GRANT ALL PRIVILEGES ON afishe64assign2db.* TO 'ta'@'localhost';
FLUSH PRIVILEGES;

SHOW TABLES;

-- creating tables
CREATE TABLE westernCourses (courseName VARCHAR(50) NOT NULL,weight FLOAT NOT NULL, suffix VARCHAR(3), courseNum CHAR(6) NOT NULL, PRIMARY KEY(coursenum));

CREATE TABLE universities (universityNum INT NOT NULL, officialName VARCHAR(50) NOT NULL, city VARCHAR(20) NOT NULL, provinceCode VARCHAR(20) NOT NULL, nickname VARCHAR(20) NOT NULL, PRIMARY KEY(universityNum)) ;

CREATE TABLE outsideCourses (courseCode VARCHAR(20) NOT NULL, courseName VARCHAR(50) NOT NULL, weight FLOAT NOT NULL, yearOfStudents INT NOT NULL, universityNum INT NOT NULL, PRIMARY KEY(courseCode, universityNum), FOREIGN KEY(universityNum) REFERENCES universities(universityNum));

CREATE TABLE equivalent (westernCourseNum CHAR(6) NOT NULL, outsideCourseCode VARCHAR(20) NOT NULL, universityNum INT NOT NULL, date DATE NOT NULL, PRIMARY KEY(westernCourseNum, outsideCourseCode, universityNum), FOREIGN KEY(westernCourseNum) REFERENCES westernCourses(courseNum), FOREIGN KEY(outsideCourseCode, universityNum) REFERENCES outsideCourses(courseCode, universityNum) ON DELETE CASCADE);

SHOW TABLES;





