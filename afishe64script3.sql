USE afishe64assign2db;

-- Query 1
SELECT courseName FROM westernCourses;

-- Query 2
SELECT DISTINCT courseCode FROM outsideCourses;

-- Query 3
SELECT * from westernCourses ORDER BY courseName;

-- Query 4
SELECT courseNum, courseName FROM westernCourses WHERE weight=0.5;

-- QUERY 5
SELECT t1.courseCode, t1.courseName FROM outsideCourses AS t1 INNER JOIN universities AS t2 ON t1.universityNum = t2.universityNum WHERE t2.officialName = "University of Toronto";

-- Query 6
SELECT t1.courseName, t2.nickname FROM outsideCourses AS t1 INNER JOIN universities AS t2 ON t1.universityNum = t2.universityNum WHERE t1.courseName LIKE '%Introduction%';

-- Query 7
SELECT t1.courseName, t2.officialName, t3.westernCourseNum, t3.date FROM outsideCourses AS t1 INNER JOIN universities AS t2 ON t1.universityNum=t2.universityNum INNER JOIN equivalent AS t3 ON t1.courseCode=t3.outsideCourseCode WHERE date >= '2015-10-24';

-- Query 8
SELECT t1.courseName, t2.nickname FROM outsideCourses AS t1 INNER JOIN universities AS t2 ON t1.universityNum= t2.universityNum INNER JOIN equivalent AS t3 ON t1.courseCode=t3.outsideCourseCode WHERE westernCourseNum="cs1026";

-- Query 9
SELECT count(outsideCourseCode) as count FROM equivalent WHERE westernCourseNum = "cs1026";

-- Query 10
SELECT t1.courseName as westernCourses, t2.courseName as outsideCourse, t4.nickname FROM westernCourses AS t1 INNER JOIN equivalent AS t3 ON t1.courseNum=t3.westernCourseNum INNER JOIN outsideCourses AS t2 ON t3.outsideCourseCode = t2.courseCode INNER JOIN universities AS t4 ON t2.universityNum=t4.universityNum WHERE t4.city = "Waterloo";

-- Query 11
SELECT t1.officialName FROM universities AS t1 WHERE t1.universityNum NOT IN (SELECT universityNum FROM equivalent);

-- Query 12
SELECT t1.courseName, t1.courseNum FROM westernCourses AS t1 INNER JOIN equivalent AS t2 ON t1.courseNum=t2.westernCourseNum INNER JOIN outsideCourses AS t3 ON t2.outsideCourseCode = t3.courseCode WHERE yearOfStudents=3 OR yearOfStudents=4;

-- Query 13
SELECT t1.courseName FROM westernCourses AS t1 INNER JOIN equivalent AS t2 ON t1.courseNum=t2.westernCourseNum GROUP BY westernCourseNum HAVING COUNT(outsideCourseCode) >=2;


-- Query 14
SELECT t1.courseNum AS 'Western Course Number', t1.courseName AS 'Western Course Name', t1.weight AS 'Course Weight', t2.courseCode AS 'Other Course Number', t2.courseName AS 'Other University Course Name', t2.weight AS 'Other Course Weight', t3.officialName AS 'University Name' FROM westernCourses AS t1 INNER JOIN equivalent AS t4 ON t1.courseNum=t4.westernCourseNum INNER JOIN outsideCourses AS t2 ON t2.courseCode=t4.outsideCourseCode INNER JOIN universities AS t3 ON t3.universityNum=t4.universityNum WHERE t1.weight != t2.weight;


   
  
