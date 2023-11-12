-- 4. List the department number for each employee along with the employee's number, last name, first name, 
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


