-- successful queries here:



--beginning of queries.sql
--Determine Retirement Eligibility + count function module question
SELECT COUNT (first_name)
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';


-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees retiring using COUNT function
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--This time, the change we'll make to the code is also small
--we're modifying the SELECT statement into a SELECT INTO statement. 
--This statement tells Postgres that instead of generating a list of results, 
--the data is saved as a new table completely. 
--Update our code to include the INTO portion of the SELECT statement.
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--view/query the table with the SELECT statement
SELECT * FROM retirement_info;
-------------------------------------------



-- 7.3.3 Joining departments and dept_manager tables
SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;

-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
    retirement_info.first_name,
	retirement_info.last_name,
    dept_emp.to_date
FROM retirement_info
LEFT JOIN dept_emp
ON retirement_info.emp_no = dept_emp.emp_no;

---------------------------------
--create alias for table name
SELECT ri.emp_no,
    ri.first_name,
ri.last_name,
    de.to_date
--define alias 
FROM retirement_info as ri
LEFT JOIN dept_emp as de
--finish code with new alias
ON ri.emp_no = de.emp_no;
----------------------------------

--update other join with new alias from top of query:

-- Joining departments and dept_manager tables(reformat with alias below)
SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;

--Joining departments and dept_manager tables
SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no;

---------------------
--Use Left Join for retirement_info and dept_emp tables
SELECT ri.emp_no,
    ri.first_name,
    ri.last_name,
de.to_date
INTO current_emp
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01');
	
--------------- 7.3.4
--Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no

--Bobby can present this table to his boss since it provides a breakdown for each department. 
--Update the code block to create a new table, then export it as a CSV.

SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
INTO retiring_emp_by_dept
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;

--Bobby can present this table to his boss since it provides a breakdown for each department. 
--Update the code block to create a new table, then export it as a CSV.

SELECT COUNT(ce.emp_no), 
	de.dept_no
INTO retiring_emp_by_dept
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;