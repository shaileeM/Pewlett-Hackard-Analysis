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