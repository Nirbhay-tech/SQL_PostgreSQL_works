SELECT * FROM students;

SELECT * FROM marks;

SELECT s.name, m.subject, m.marks 
FROM students s JOIN marks m
ON s.student_id=m.student_id;

SELECT s.name, m.subject, m.marks 
FROM students s JOIN marks m
ON s.student_id=m.student_id
Where name='Simran Mehta';

SELECT s.name, m.subject, m.marks 
FROM students s JOIN marks m
ON s.student_id=m.student_id
where marks>80;

SELECT s.name, m.marks 
FROM students s JOIN marks m
ON s.student_id=m.student_id
ORDER BY marks DESC;

SELECT s.name,
       AVG(m.marks) AS a_marks
FROM students s
JOIN marks m
ON s.student_id = m.student_id
GROUP BY s.student_id, s.name;

SELECT * FROM students s JOIN MARKS m
ON s.student_id=m.student_id;

INSERT INTO students (name) VALUES ('Nirbhay');

SELECT * FROM students s RIGHT JOIN MARKS m
ON s.student_id=m.student_id;

SELECT * FROM students s FULL JOIN MARKS m
ON s.student_id=m.student_id;

SELECT * FROM students s CROSS JOIN MARKS m;









