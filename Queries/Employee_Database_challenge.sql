--Challenge 1
select e.emp_no,e.first_name,e.last_name,t.title,t.from_date,t.to_date
into retirement_titles
from titles as t
inner join employees as e on e.emp_no=t.emp_no
where (birth_date >= '1952-01-01' and birth_date < '1955-12-31') 
--where e.birth_date between '1952-01-01' and '1955-12-31'
order by e.emp_no


select * from retirement_titles

-- Obtain distinct values
--Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (retirement_titles.emp_no) retirement_titles.emp_no,
retirement_titles.first_name,
retirement_titles.last_name,
retirement_titles.title
INTO unique_titles_table
FROM retirement_titles
ORDER BY retirement_titles.emp_no,retirement_titles.to_date DESC;


--retrieve the number of employees by their most recent job title who are about to retire
select count(utt.emp_no) as count,utt.title 
into retiring_titles_table
from unique_titles_table as utt
group by utt.title
order by count desc

-Deliverable 2

SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,e.last_name,e.birth_date,
de.from_date,de.to_date,
te.title
--into 
from employees as e
inner join dept_employees as de on e.emp_no=de.emp_no
inner join titles as te on e.emp_no=te.emp_no
order by e.emp_no
