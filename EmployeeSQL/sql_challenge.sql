--- Question 1 --- Works
SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no = s.emp_no;

--- Question 2 --- Works
select e.emp_no, e.first_name, e.last_name, e.hire_date
From employees AS e
Where e.hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Question 3 --- Works
SELECT e.emp_no, e.first_name, e.last_name, dm.from_date, dm.to_date, d.dept_no, d.dept_name
FROM employees AS e
INNER JOIN dept_manager AS dm
ON e.emp_no = dm.emp_no
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no;

--- Question 4 --- Works
--List the department of each employee with the following information:
--employee number, last name, first name, and department name.

SELECT d.dept_name, e.emp_no, e.last_name, e.first_name, d.dept_no
FROM employees AS e
INNER JOIN dept_emp AS dm
ON e.emp_no = dm.emp_no
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no;

--- Question 5 --- Works
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--- Question 6 ---
-- List all employees in the Sales department, including their employee number,
-- last name, first name, and department name.

SELECT f.emp_no, h.first_name, h.last_name, e.dept_name
FROM dept_emp AS f
INNER JOIN employees AS h
ON f.emp_no = h.emp_no
INNER Join departments as e
on f.dept_no = e.dept_no
WHERE dept_name = 'Sales'

-- Question 7 -- Working
-- List all employees in the Sales and Development departments,
-- including their employee number, last name, first name,
-- and department name..
SELECT f.emp_no, h.first_name, h.last_name, e.dept_name
FROM dept_emp AS f
INNER JOIN employees AS h
ON f.emp_no = h.emp_no
INNER Join departments as e
on f.dept_no = e.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development'

-- Question 8 --
-- In descending order, list the frequency count of employee last names,
-- i.e., how many employees share each last name.
SELECT last_name 
FROM employees
WHERE last_name = '%'
AND last_name LIKE 'B%';

--- REFERENCES ----
Select * from departments;
Select * from dept_emp;
Select * from dept_manager;
Select * from employees;
Select * from salaries;
Select * from titles;