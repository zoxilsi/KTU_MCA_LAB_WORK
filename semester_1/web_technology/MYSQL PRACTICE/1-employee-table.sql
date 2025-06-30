-- Write SQL statements for the following operations.
-- 1. Create table Employee with following fields
-- a. employee_idf.
-- hiredate
-- b. first_nameg. salary
-- c. middle_nameh. commision
-- d. last_namei.
-- department_id
-- e. job_id

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    job_id VARCHAR(10),
    hiredate DATE,
    salary DECIMAL(10, 2),
    commission DECIMAL(10, 2),
    department_id INT
);



-- 2. Insert minimum 10 records with your own value into the employee table against each
-- column. (Note: data required to validate questions below should be present)

INSERT INTO Employee (employee_id, first_name, middle_name, last_name, job_id, hiredate, salary, commission, department_id)
VALUES
(1, 'John', 'A.', 'Doe', 'CL', '2023-01-15', 4000, 0, 10),
(2, 'Jane', NULL, 'Smith', 'SL', '2023-02-20', 3500, 200, 20),
(3, 'Steve', 'B.', 'Clark', 'CL', '2023-03-10', 4500, 0, 30),
(4, 'Susan', NULL, 'Lee', 'SL', '2023-04-25', 5000, 300, 20),
(5, 'Michael', 'C.', 'Brown', 'CL', '2023-05-01', 3000, 0, 10),
(6, 'Sarah', NULL, 'White', 'SL', '2023-06-15', 3200, 100, 30),
(7, 'Robert', 'D.', 'Green', 'CL', '2023-07-05', 4700, 0, 10),
(8, 'Sophia', NULL, 'Adams', 'SL', '2023-08-18', 4100, 150, 20),
(9, 'Daniel', 'E.', 'Moore', 'CL', '2023-09-12', 3400, 0, 30),
(10, 'Emma', NULL, 'Johnson', 'SL', '2023-10-03', 3600, 250, 20);




-- 3. Display the details of all employees.

SELECT * FROM Employee;



-- 4. Display first_name, last name, salary and commission for all employees.

SELECT first_name, last_name, salary, commission FROM Employee;




-- 5. Display employee_id, last name and department_id for all employees with column
-- title “Employee ID", "Employee Name” and “Department ID" respectively.

SELECT employee_id AS "Employee ID", last_name AS "Employee Name", department_id AS "Department ID" FROM Employee;




-- 6. Display employee's annual salary with their names. (Note: annual salary = salary
-- *12)

SELECT first_name, last_name, (salary * 12) AS annual_salary FROM Employee;




-- 7. Display the list of employees who are earning salaries between 3000 and 4500.

SELECT * FROM Employee WHERE salary BETWEEN 3000 AND 4500;




-- 8. Display the list of employees whose names start with "S"and end with "H".

SELECT * FROM Employee WHERE first_name LIKE 'S%' AND first_name LIKE '%H';




-- 9. Display the employees whose name length is 4 and start with “S”.

SELECT * FROM Employee WHERE CHAR_LENGTH(first_name) = 4 AND first_name LIKE 'S%';




-- 10. Display the employees working in department 10 and draw salaries more than 3500.

SELECT * FROM Employee WHERE department_id = 10 AND salary > 3500;




-- 11. Display employee_id, last name in ascending order based on the employee_id

SELECT employee_id, last_name FROM Employee ORDER BY employee_id ASC;




-- 12. Display the first_name of employees whose commission is 0

SELECT first_name FROM Employee WHERE commission = 0;



-- 13. Display employee details in the ascending order of last_name and descending order
-- of salaries

SELECT * FROM Employee ORDER BY last_name ASC, salary DESC;



-- 14. How many employees joined in the month of January or september.

SELECT COUNT(*) AS employee_count FROM Employee WHERE MONTH(hiredate) IN (1, 9);

-- 15. How many employees joined in the year 1985?

SELECT COUNT(*) AS employee_count FROM Employee WHERE YEAR(hiredate) = 1985;




-- 16. Display the list of employee(s) who draw the maximum salary.

SELECT * FROM Employee WHERE salary = (SELECT MAX(salary) FROM Employee);



-- 17. How many employees are working in different departments in the organisation?

SELECT department_id, COUNT(*) AS employee_count FROM Employee GROUP BY department_id;




-- 18. List out the department wise maximum salary, minimum salary, average salary of the
-- employees.

SELECT department_id, MAX(salary) AS max_salary, MIN(salary) AS min_salary, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id;




-- 19. List out the no.of employees for each month and year , in the ascending order based
-- on the year, month

SELECT YEAR(hiredate) AS year, MONTH(hiredate) AS month, COUNT(*) AS employee_count
FROM Employee
GROUP BY year, month
ORDER BY year ASC, month ASC;




-- 20. List out the department id having at least four employees.

SELECT department_id
FROM Employee
GROUP BY department_id
HAVING COUNT(*) >= 4;




-- 21. Which is the department_id, having greater than or equal to 3 employees joined in
-- April 1985.

SELECT department_id
FROM Employee
WHERE MONTH(hiredate) = 4 AND YEAR(hiredate) = 1985
GROUP BY department_id
HAVING COUNT(*) >= 3;




-- 22. Display the employees who got the maximum salary

SELECT * FROM Employee WHERE salary = (SELECT MAX(salary) FROM Employee);




-- 23. Display the employees who are working as “Clerk” ( Note: job_id=CL)

SELECT * FROM Employee WHERE job_id = 'CL';




-- 24. Find out no.of employees working in “sales”department (Note: Dept_id=SL)

SELECT COUNT(*) AS employee_count FROM Employee WHERE department_id = 'SL';




-- 25. Update the employees salaries , who are working as clerk on the basis of 12% hike
-- in salary.

UPDATE Employee
SET salary = salary * 1.12
WHERE job_id = 'CL';
