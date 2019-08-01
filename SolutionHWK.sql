CREATE TABLE "employees" (
    "emp_no" integer   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "gender" varchar   NOT NULL,
    "hire_date" date   NOT NULL)

--List employees who were hired in 1986.
select * from employees;
select * from employees
where hire_date between '1986-01-01' and '1986-12-31';

select * from employees
where hire_date like '1986%';