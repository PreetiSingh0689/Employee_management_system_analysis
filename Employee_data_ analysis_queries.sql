/* querying Data */
 /* ques - Retrieve all employee details */
select * from employees;

/* ques - Update Employee salary */
 Update employees set salary = 80000 where employee_id = 1;
 
 /* ques - Add a new employee */
 Insert into employees(first_name, last_name, email, hire_date, salary, job_title, department_id)
 values ('Jane', 'Doe', 'jane.doe@email.com', '2023-05-15', 55000, 'Marketing Specialist', 2);
 
 /* Advance queries */
 /* ques- Retrieve all employees with their department names */
 select e.first_name, e.last_name, d.department_name
 from employees e
 join departments d on e.department_id = d.department_id;

/* ques -Find employees with a salary above 60,000 */
select first_name, last_name from employees where salary > 60000;

/*ques - Retrieve performance reviews for a specific employee */
select e.first_name , e.last_name , p.review_date, p.rating, p.comments
from employees e
join performance_reviews p on e.employee_id = p.employee_id
where e.employee_id = 1;

/* Salary analysis */
/*Calculate the average salary for each department */
select avg(e.salary) as avg_salary, d.department_name
from employees e
join departments d on e.department_id = d.department_id
group by department_name;

/* ques - employee ranking by salary */
select first_name, last_name, salary,
rank() over (order by salary) as salary_rank
from employees;

/* ques - Cumulative Salary */
SELECT first_name, last_name, salary,
       SUM(salary) OVER (ORDER BY salary) AS cumulative_salary
FROM employees;

/*ques - Row Number Based on Hire Date */
SELECT first_name, last_name, salary,
row_number()  over (order by hire_date) as row_num
from employees;


/*ques -This query calculates the percentile rank of each employee’s salary compared to others */
SELECT first_name, last_name, salary,
       PERCENT_RANK() OVER (ORDER BY salary) AS percent_rank_salary
FROM employees;










