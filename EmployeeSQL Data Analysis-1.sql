1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT  e.emp_no,
        e.last_name,
        e.first_name,
        e.sex,
        sa.salary
FROM employees AS e
    LEFT JOIN salaries AS sa
    ON (e.emp_no = sa.emp_no)
ORDER BY e.emp_no;