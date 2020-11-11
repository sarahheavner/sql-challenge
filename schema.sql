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

--Create table for departments, use dept_no as PK
CREATE TABLE departments(
	dept_no VARCHAR(5) PRIMARY KEY NOT NULL,
	dept_name VARCHAR (25)
);

SELECT * FROM departments;

--Create junction table for dept_manager referencing departments and employees tables
CREATE TABLE dept_manager(
	dept_no VARCHAR(5) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_manager;

--Create junction table for dept_emp referencing employees and departments tables
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(5) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp;


