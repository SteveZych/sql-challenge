--1. List the following details of each employee: employee number, 
--last name, first name, sex, and salary.
SELECT 
employees_info.emp_no,
employees_info.last_name,
employees_info.first_name,
employees_info.sex,
salaries.salary
FROM employees_info
JOIN salaries ON employees_info.emp_no=salaries.emp_no;


--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT
first_name,
last_name,
hire_date
FROM employees_info
WHERE hire_date >= '1986-01-01' and hire_date <= '1986-12-31';

--3. List the manager of each department with the following information: 
---department number, department name, the manager's employee number, last name, first name.
SELECT e.emp_no, e.first_name, e.last_name, dm.dept_no, d.dept_name
FROM employees_info e
JOIN department_manager dm
ON e.emp_no = dm.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no;


--4. List the department of each employee with the following information: 
---employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees_info e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no;


--5. List first name, last name, and sex for employees whose first name is "Hercules" 
---and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees_info
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


--6.List all employees in the Sales department, including their 
---employee number, last name, first name, and department name.
CREATE VIEW employee_department AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees_info e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no;
SELECT *
FROM employee_department
WHERE dept_name = 'Sales';


--7.List all employees in the Sales and Development departments, including their 
---employee number, last name, first name, and department name.
SELECT *
FROM employee_department
WHERE dept_name = 'Sales' OR dept_name = 'Development';


--8. In descending order, list the frequency count of employee last names, 
---i.e., how many employees share each last name.
SELECT 
last_name,
COUNT(last_name)
FROM employees_info
GROUP BY last_name
ORDER BY COUNT DESC;










