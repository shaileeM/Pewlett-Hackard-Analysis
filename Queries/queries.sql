select first_name, last_name from employees 
where (birth_date >= '1952-01-01' and birth_date < '1955-12-31')

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

--birth date and hire date
select first_name, last_name from employees 
where ((birth_date >= '1952-01-01' and birth_date < '1955-12-31') and 
	   (hire_date BETWEEN '1985-01-01' AND '1988-12-31'))

--count function
select count(first_name),count(last_name) from employees 
where ((birth_date >= '1952-01-01' and birth_date < '1955-12-31') and 
	   (hire_date BETWEEN '1985-01-01' AND '1988-12-31'))

-- save selected data into new table

select first_name,last_name 
INTO retirement_info
from employees 
where ((birth_date >= '1952-01-01' and birth_date < '1955-12-31') and 
	   (hire_date BETWEEN '1985-01-01' AND '1988-12-31'))

select * from retirement_info

--Add emp_id into retirement_info table
select emp_no,first_name,last_name 
INTO retirement_info
from employees 
where ((birth_date >= '1952-01-01' and birth_date < '1955-12-31') and 
	   (hire_date BETWEEN '1985-01-01' AND '1988-12-31'))

-- Joining departments and dept_manager tables
SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;

--Using left join(current emplyees eligible for retirment 
select ri.first_name,ri.last_name,de.dept_no,
into current_emp
ri.emp_no,de.to_date
from retirement_info as ri
left join dept_employees as de on de.emp_no=ri.emp_no

--Using current_emp and dept_employees table finde how many employees are there in each department 
select count(ce.emp_no),de.dept_no
from current_emp as ce
left join dept_employees as de on ce.emp_no=de.emp_no
group by de.dept_no
order by de.dept_no 