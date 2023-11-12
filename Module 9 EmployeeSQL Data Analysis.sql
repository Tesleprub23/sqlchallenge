-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        e.sex,
        sa.salary
FROM employees AS e
    LEFT JOIN salaries AS sa
    ON (e.emp_no = sa.emp_no)
ORDER BY e.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT last_name,first_name,hire_date
    FROM employees
	WHERE DATE_PART('year',hire_date)=1986;
	
-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
		dpt.dept_no,
        dpt.dept_name
FROM dept_manager AS dm
	INNER JOIN departments AS dpt
	ON (dm.dept_no = dpt.dept_no)
	INNER JOIN employees AS e
	ON (dm.emp_no = e.emp_no)
ORDER BY e.emp_no;

-- 4. List the department number for each employee along with the employee's number, last name, first name, and department name.
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        dpt.dept_no,
        dpt.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS d
	ON (e.emp_no = d.emp_no)
    INNER JOIN departments AS dpt
    ON (d.dept_no = dpt.dept_no)
ORDER BY e.emp_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT  e.last_name,
        e.first_name,
        e.sex
FROM employees AS e
WHERE (e.first_name = 'Hercules') AND (LOWER(e.last_name) LIKE 'b%')
ORDER BY e.last_name;

-- 6.list each employee in the Sales Department, including their employee number, last name, and first name.
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (e.emp_no = de.emp_no)
    INNER JOIN departments AS d
        ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

-- 7. List each employee in the Sales and Developmental departments, including their employee number, last name, first name, and department name.
SELECT last_name,COUNT(last_name) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;

	
	