USE afishe64assign2db;

-- showing empty tables
SELECT * FROM westernCourses;
SELECT * FROM universities;
SELECT * FROM outsideCourses;
SELECT * FROM equivalent;

LOAD DATA LOCAL INFILE 'loaddatafall2020.txt' INTO TABLE universities FIELDS TERMINATED by',';
DELETE FROM universities WHERE universityNum = 0;

SELECT * FROM universities;


-- inserting into westernCourse and universities tables
INSERT INTO westernCourses (courseNum, courseName, weight, suffix) VALUES ("cs1026", "Computer Science Fundamentals I", 0.5, "A/B");

INSERT INTO westernCourses (courseNum, courseName, weight, suffix) VALUES ("cs1027", "Computer Science Fundamentals II", 0.5, "A/B");

INSERT INTO westernCourses (courseNum, courseName, weight, suffix) VALUES ("cs2210","Algorithms and Data Structures", 1.0, "A/B");

INSERT INTO westernCourses (courseNum, courseName, weight, suffix) VALUES ("cs3319",
 "Databases I", 0.5, "A/B");

INSERT INTO westernCourses (courseNum, courseName, weight, suffix) VALUES ("cs2120","Modern Survival Skills I: Coding Essentials", 0.5, "A/B");

INSERT INTO westernCourses (courseNum, courseName, weight, suffix) VALUES ("cs4490","Thesis", 0.5, "Z");

INSERT INTO westernCourses (courseNum, courseName, weight, suffix) VALUES ("cs0020","Intro to Coding using Pascal and Fortran", 1.0,"" );

INSERT INTO universities (universityNum, officialName, nickname, city, provinceCode) VALUES (9, "University of Annie", "UofA", "Burlington", "ON");


-- inserting into outsideCourses table
INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci022", "Introduction to Progamming", 0.5, 1, 2);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci033", "Intro to Programming for Med students", 0.5, 3, 2);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci021", "Packages", 0.5, 1, 2);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES (
"CompSci222", "Introduction to Databases", 1.0, 2, 2);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci023", "Advanced Programming", 0.5, 1, 2);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci011", "Intro to Computer Science", 0.5, 2, 4);


INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci123", "Using UNIX", 0.5, 2, 4);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci021", "Intro Programming", 1.0, 1, 66);


INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci022", "Advanced Programming", 1.0, 1, 66);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci319", "Using Databases", 0.5, 3, 66);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci333", "Graphics", 0.5, 3, 55);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci444", "Networks", 0.5, 4, 55);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci022", "Using Packages", 0.5, 1, 77);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci101", "Introduction to Using Data Structures", 0.5, 2, 77);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci999", "Intro to Annie Programming", 1, 1, 9);

INSERT INTO outsideCourses(courseCode, courseName, weight, yearOfStudents, universityNum) VALUES ("CompSci321", "Coding Coolness", 0.5, 4, 9);


-- inserting into equivalent table
INSERT INTO equivalent (westernCourseNum, outsideCourseCode, universityNum, date) VALUES ("cs1026", "CompSci022", 2, "2015-05-12");

INSERT INTO equivalent (westernCourseNum, outsideCourseCode, universityNum, date) VALUES ("cs1026", "CompSci033", 2, "2013-01-02");

INSERT INTO equivalent (westernCourseNum, outsideCourseCode, universityNum, date) VALUES ("cs1026", "CompSci011", 4, "1997-02-09");

INSERT INTO equivalent (westernCourseNum, outsideCourseCode, universityNum, date) VALUES ("cs1026", "CompSci021", 66, "2010-01-12");

INSERT INTO equivalent (westernCourseNum, outsideCourseCode, universityNum, date) VALUES ("cs1027", "CompSci023", 2 ,"2017-06-22");

INSERT INTO equivalent (westernCourseNum, outsideCourseCode, universityNum, date) VALUES ("cs1027", "CompSci022", 66, "2019-09-01");

INSERT INTO equivalent (westernCourseNum, outsideCourseCode, universityNum, date) VALUES ("cs2210", "CompSci101", 77, "1998-07-12");

INSERT INTO equivalent (westernCourseNum, outsideCourseCode, universityNum, date) VALUES ("cs3319", "CompSci222", 2, "1990-09-13");

INSERT INTO equivalent (westernCourseNum, outsideCourseCode, universityNum, date) VALUES ("cs3319", "CompSci319", 66, "1987-09-21");

INSERT INTO equivalent (westernCourseNum, outsideCourseCode, universityNum, date) VALUES ("cs2120", "CompSci022", 2, "2018-12-10");

INSERT INTO equivalent (westernCourseNum, outsideCourseCode, universityNum, date) VALUES ("cs0020", "CompSci022", 2,"1999-09-17");


-- showing full tables
SELECT * FROM westernCourses;
SELECT * FROM universities;
SELECT * FROM outsideCourses;
SELECT * FROM equivalent;


-- updating tables
UPDATE equivalent SET date = '2018-09-19' WHERE westernCourseNum = "cs0020" AND outsideCourseCode="Compsci022" AND universityNum=2;

UPDATE outsideCourses SET yearOfStudents=1 WHERE courseName LIKE "Intro%";

-- showing full tables
SELECT * FROM outsideCourses;
SELECT * FROM equivalent;


