--1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salary.salary
from employees
join salaries as salary
	on employees.emp_no = salary.emp_no;
--2
select * from employees
where hire_date between '1986-01-01' and '1986-12-31';
--3
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date
from dept_manager
join departments as departments
	on dept_manager.dept_no = departments.dept_no
join employees as employees
	on dept_manager.emp_no = employees.emp_no;
--4
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp as dept_emp
	on employees.emp_no = dept_emp.emp_no
join departments as departments
	on dept_emp.dept_no = departments.dept_no;
--5
select * from employees
where first_name = 'Hercules'
and last_name like 'B%';
--6
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp as dept_emp
	on employees.emp_no = dept_emp.emp_no
join departments as departments
	on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';
--7
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp as dept_emp
	on employees.emp_no = dept_emp.emp_no
join departments as departments
	on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales'
or dept_name = 'Development';
--8
select last_name, count(last_name) as "number_of_employees"
from employees
group by last_name
order by "number_of_employees" desc;