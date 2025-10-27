CREATE TABLE STUDENTS (
student_enumber VARCHAR2(10) PRIMARY KEY,
first_name VARCHAR2(50),
last_name VARCHAR2(50),
grade_level NUMBER
)

INSERT INTO STUDENTS VALUES ('E123456789', 'William', 'Perry', 14);

INSERT INTO STUDENTS VALUES ('E120990989', 'Burden', 'Luther', 16); 

INSERT INTO STUDENTS VALUES ('E121344594', 'Diva', 'Cook', 15);

INSERT INTO STUDENTS VALUES ('E12719041', 'GodfredJunior', 'Afriyie', 10);


UPDATE STUDENTS
SET grade_level = 17
WHERE student_enumber = 'E12719041';


SELECT * FROM STUDENTS;
