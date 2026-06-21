CREATE TABLE students(
student_id SERIAL PRIMARY KEY,
name varchar(100),
age BIGINT
);

INSERT INTO students (name, age)
VALUES ('Nirbhay', 20),
('Sneha', 21);

SELECT * FROM students;

ALTER TABLE students
ADD COLUMN email VARCHAR(20);

ALTER TABLE students
DROP COLUMN email;

ALTER TABLE students
RENAME COLUMN name TO full_name;

ALTER TABLE students
ALTER COLUMN age TYPE SMALLINT;

ALTER TABLE students
ADD CONSTRAINT check_age check (age>=0);

ALTER TABLE students
DROP CONSTRAINT check_age;



