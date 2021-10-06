SELECT 
DISTINCT on (e.emp_no, ttls.title)
			e.emp_no,
			e.first_name,
			e.last_name,
			ttls.title,
			ttls.from_date,
			ttls.to_date
INTO retirement_titles1
FROM titles AS ttls
INNER JOIN current_emp AS e
ON (e.emp_no = ttls.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
--	 AND (de.to_date = '9999-01-01');
ORDER BY e.emp_no ASC;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rts.emp_no)
rts.emp_no,
rts.first_name, 
rts.last_name,
rts.title,
rts.to_date
INTO unique_titles
FROM retirement_titles AS rts
ORDER BY rts.emp_no ASC, to_date DESC;


SELECT COUNT(uts.title), uts.title
INTO retiring_titles
FROM unique_titles as uts
GROUP BY uts.title
ORDER BY COUNT DESC;


SELECT 
DISTINCT on (e.emp_no)
			e.first_name,
			e.last_name,
			e.birth_date,
			dpte.from_date,
			dpte.to_date,
			ttls.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS dpte
ON (e.emp_no = dpte.emp_no)
INNER JOIN titles as ttls
ON (e.emp_no = ttls.emp_no)
WHERE (dpte.to_date = '9999-01-01')
	AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
-- AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
ORDER BY e.emp_no ASC;