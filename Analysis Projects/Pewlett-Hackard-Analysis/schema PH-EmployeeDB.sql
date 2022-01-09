schema.sql

-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

CREATE TABLE employees (
	emp_no int NOT NUll,
	birth_date date NOT NUll,
	first_name varchar (40) NOT NUll,
	last_name varchar (40) NOT NUll,
	gender varchar (15) NOT NUll,
	hire_date date NOT NUll,
	PRIMARY KEY (emp_no),
	UNIQUE (emp_no)
);
	
CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);	
	
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);	
	
CREATE TABLE titles (
  emp_no INT NOT NULL,
  title varchar NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
	
CREATE TABLE Dept_emp (
  emp_no INT NOT NULL,
  dept_no varchar NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no, dept_no)
);	
	
SELECT * FROM departments;	

select * from dept_manager;

select * from employees;

select * from salaries;

select * from titles;

select * from dept_emp;