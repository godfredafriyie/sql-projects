CREATE TABLE EMPLOYEES
(
emp_id number(10) NOT NULL,
emp_title varchar(50) NOT NULL,
manager_id number(10),
dept_id number(4) NOT NULL,
hire_date DATE NOT NULL,
separation_date DATE,
emp_status number(1)  NOT NULL,
emp_salary number(8,2) NOT NULL,
emp_ssn varchar(12) NOT NULL,
CONSTRAINT empid_pk PRIMARY KEY (emp_id)
) ;


CREATE TABLE EMPLOYEE_STATUS
(
emp_status number(1) NOT NULL,
status_detail varchar(20),
CONSTRAINT empstatus_pk PRIMARY KEY (emp_status) 
) ;

CREATE TABLE DEPT
(
dept_id number(4) NOT NULL,
dept_name varchar(30),
CONSTRAINT deptid_pk PRIMARY KEY (dept_id) 
) ;




INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (118673, 'IT Manager', 107634, 6, TO_DATE('2003-05-16','yyyy/mm/dd'),NULL ,1, 95000,'429-21-4303'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (118708, 'Database Admin', 118673, 6, TO_DATE('2012-08-21','yyyy/mm/dd'),NULL ,1, 55000,'416-55-0682'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (118822, 'Webmaster', 118673, 6, TO_DATE('2015-03-03','yyyy/mm/dd'),NULL ,1, 50000,'238-38-9345'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (118851, 'Tech Support', 118673, 6, TO_DATE('2015-03-03','yyyy/mm/dd'),NULL ,1, 45000,'004-84-5324'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (118893, 'Tech Support', 118673, 6, TO_DATE('2017-04-01','yyyy/mm/dd'),NULL ,1, 65000,'522-39-4024'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (117213, 'Accounting Manager', 107634, 2, TO_DATE('2003-02-02','yyyy/mm/dd'),NULL ,1, 85000,'222-42-3305');
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (117220, 'Accountant', 117213, 2, TO_DATE('2003-08-22','yyyy/mm/dd'),NULL ,1, 35000,'362-38-8383'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (117563, 'Accountant', 117213, 2, TO_DATE('2004-03-03','yyyy/mm/dd'),NULL ,1, 40000,'261-31-5462'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (118001, 'Book Keeper', 117213, 2, TO_DATE('2005-03-03','yyyy/mm/dd'),NULL ,1, 45000,'269-38-2989'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (118202, 'Auditor', 117213, 2, TO_DATE('2011-04-01','yyyy/mm/dd'),NULL ,1, 55000,'213-01-2774'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (117216, 'HR Manager', 107634, 3, TO_DATE('2003-03-01','yyyy/mm/dd'),NULL ,1, 75000,'401-63-5148');
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (117271, 'HR Clerk', 117216, 3, TO_DATE('2014-07-05','yyyy/mm/dd'),NULL ,1, 25000,'409-18-1850'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (117272, 'HR Clerk', 117216, 3, TO_DATE('2014-07-06','yyyy/mm/dd'),NULL ,1, 28000,'212-08-7491'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (105127, 'President', NULL, 1, TO_DATE('2001-01-01','yyyy/mm/dd'),NULL ,1, 500000, '416-66-2715'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (107634, 'Vice President', 115127, 1, TO_DATE('2001-01-01','yyyy/mm/dd'),NULL ,1, 250000, '135-80-3535'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (118002, 'Sales Manager', 107634, 4, TO_DATE('2001-06-01','yyyy/mm/dd'),NULL ,1, 100000, '527-30-0467'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (118913, 'Sales Associate', 107634, 4, TO_DATE('2005-01-01','yyyy/mm/dd'),NULL ,1, 75000, '503-38-2426'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (117221, 'Customer Service Manager', 107634, 5, TO_DATE('2001-06-01','yyyy/mm/dd'),NULL ,1, 65000, '409-71-4638'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (117649, 'Customer Service Associate', 117221, 5, TO_DATE('2006-06-01','yyyy/mm/dd'),NULL ,1, 30000, '529-73-9122'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (117222, 'HR Clerk', 117216, 3, TO_DATE('2003-06-01','yyyy/mm/dd'),TO_DATE('2014-06-30','yyyy/mm/dd') ,2, 65000, '036-54-9796'); 
INSERT INTO EMPLOYEES (emp_id, emp_title, manager_id, dept_id, hire_date, separation_date, emp_status, emp_salary, emp_ssn) VALUES (118699, 'IT Associate', 118673, 6, TO_DATE('2005-09-01','yyyy/mm/dd'),TO_DATE('2012-07-31','yyyy/mm/dd') ,2, 55000, '487-64-4174'); 
 


INSERT INTO EMPLOYEE_STATUS VALUES (1, 'ACTIVE');
INSERT INTO EMPLOYEE_STATUS VALUES (2, 'SEPARATED');
INSERT INTO EMPLOYEE_STATUS VALUES (3, 'APPROVED LEAVE');
INSERT INTO EMPLOYEE_STATUS VALUES (4, 'RETIRED');

INSERT INTO DEPT VALUES (1, 'EXECUTIVE');
INSERT INTO DEPT VALUES (2, 'ACCOUNTING');
INSERT INTO DEPT VALUES (3, 'HUMAN RESOURCES');
INSERT INTO DEPT VALUES (4, 'SALES');
INSERT INTO DEPT VALUES (5, 'CUSTOMER SERVICE');
INSERT INTO DEPT VALUES (6, 'INFORMATION TECH');

CREATE ROLE employee_role_gafriyie;

GRANT SELECT, INSERT, UPDATE ON GAFRIYIE.EMPLOYEES       TO employee_role_gafriyie;

GRANT SELECT, UPDATE            ON GAFRIYIE.EMPLOYEE_STATUS TO employee_role_gafriyie;

GRANT SELECT                    ON GAFRIYIE.DEPT            TO employee_role_gafriyie;

GRANT SELECT                    ON GAFRIYIE.DEPT            TO employee_role_gafriyie;

GRANT employee_role_gafriyie TO c##rwgibson;
