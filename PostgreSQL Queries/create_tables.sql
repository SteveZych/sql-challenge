CREATE TABLE departments(
	dept_no varchar(30) NOT NULL,
	dept_name varchar(30) NOT NULL,
	PRIMARY KEY(dept_no)
);
CREATE TABLE titles (
	title_id varchar(30),
	title varchar (30),
	PRIMARY KEY (title_id)
);
CREATE TABLE employees_info (
	emp_no int,
	emp_title_id varchar(30),
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	sex varchar (10),
	hire_date date,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(5) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees_info(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    CONSTRAINT pk_dept_emp PRIMARY KEY (emp_no,dept_no)
);
CREATE TABLE department_manager (
	dept_no varchar(30),
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees_info(emp_no)
);
CREATE TABLE salaries (
	emp_no int,
	salary int,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees_info(emp_no)
);

