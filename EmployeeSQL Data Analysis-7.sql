--7. List each employee in the Sales and Developmental departments, including their employee number, last name, first name, and department name.
SELECT last_name,COUNT(last_name) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;