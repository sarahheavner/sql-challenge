SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM departments d
LEFT JOIN dept_manager m
ON d.dept_no = m.dept_no
LEFT JOIN employees e
ON m.emp_no = e.emp_no;


--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT d.dept_no, d.dept_name, de.emp_no, e.last_name, e.first_name
FROM departments d
LEFT JOIN dept_emp de
ON d.dept_no = de.dept_no
LEFT JOIN employees e
ON de.emp_no = e.emp_no;


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


--List all employees in the Sales department, 
--including their employee number, last name, first name, and department 


--List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name