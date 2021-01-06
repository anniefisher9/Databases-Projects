USE afishe64assign2db;

CREATE VIEW view1 AS SELECT t1.courseName AS outsideCourseName, t1.universityNum, t2.nickname, t2.city, t3.courseName AS westernCourseName FROM outsideCourses AS t1 INNER JOIN universities AS t2 ON t1.universityNum=t2.universityNum INNER JOIN equivalent AS t4 ON t1.courseCode=t4.outsideCourseCode INNER JOIN westernCourses AS t3 ON t4.westernCourseNum=t3.courseNum WHERE t1.yearOfStudents=1;


SELECT * FROM view1;

CREATE VIEW view2 AS SELECT t1.courseName AS outsideCourseName, t1.universityNum, t2.nickname, t2.city, t3.courseName AS westernCourseName FROM outsideCourses AS t1 INNER JOIN universities AS t2 ON t1.universityNum=t2.universityNum INNER JOIN equivalent AS t4 ON t1.courseCode=t4.outsideCourseCode INNER JOIN westernCourses AS t3 ON t4.westernCourseNum=t3.courseNum WHERE t1.yearOfStudents=1 AND t2.nickname = "UofT" ORDER BY t3.courseName;

SELECT * FROM view2;


SELECT * FROM universities;

DELETE FROM universities where nickname LIKE '%cord%';

SELECT * FROM universities;

DELETE FROM universities WHERE provinceCode="ON";

-- Could not be deleted because of CASCADE applied to the database;

SELECT * FROM universities;

SELECT * FROM outsideCourses AS t1 INNER JOIN universities AS t2 ON t1.universityNum=t2.universityNum;

DELETE outsideCourses FROM outsideCourses INNER JOIN universities ON outsideCourses.universityNum=universities.universityNum WHERE universities.city="Waterloo";

SELECT * FROM outsideCourses AS t1 INNER JOIN universities AS t2 ON t1.universityNum=t2.universityNum;


SELECT * FROM view2;
