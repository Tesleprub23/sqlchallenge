2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT last_name,first_name,hire_date
    FROM employees
	WHERE DATE_PART('year',hire_date)=1986;