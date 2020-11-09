--Create table for titles, set title_id as Primary Key
CREATE TABLE titles(
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title VARCHAR (25)
);

SELECT * FROM titles;

--Create table for employees, set emp_no as PK and emp_title_id as Foreign Key
CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	SEX VARCHAR,
	hire_date DATE
);
	
SELECT * FROM employees;

--Create table for salaries, use emp_no as PK
CREATE TABLE salaries(
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT);
	
SELECT * FROM salaries;



