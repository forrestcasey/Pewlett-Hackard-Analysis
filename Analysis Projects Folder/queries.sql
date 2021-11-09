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

