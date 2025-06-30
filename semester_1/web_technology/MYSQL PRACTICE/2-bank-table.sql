-- 1. Create table Bank with following fields
-- a. Branch_No primary key
-- b. Street
-- c. City
-- d. Postcode

CREATE TABLE Bank (
    Branch_No VARCHAR(10) PRIMARY KEY,
    Street VARCHAR(100),
    City VARCHAR(50),
    Postcode VARCHAR(10)
);



-- 2. Create table Staff with following fields
-- a. Staff_id primary key
-- b. First_tname
-- c. Last_name
-- d. Position
-- e. Gender
-- f. DOB
-- g. Salary
-- h. Date of joining
-- i. Branch_No Foreign-key

CREATE TABLE Staff (
    Staff_id INT PRIMARY KEY,
    First_tname VARCHAR(50),
    Last_name VARCHAR(50),
    Position VARCHAR(50),
    Gender VARCHAR(10),
    DOB DATE,
    Salary DECIMAL(10, 2),
    Date_of_joining DATE,
    Branch_No VARCHAR(10),
    FOREIGN KEY (Branch_No) REFERENCES Bank(Branch_No)
);



-- 3.Insert minimum 10 records with your own values into the Bank table & Staff table
-- against each column. (Note: data required to validate questions below should be
-- present) .

-- Inserting records into Bank table
INSERT INTO Bank (Branch_No, Street, City, Postcode)
VALUES 
('B001', '12 Elm St', 'London', 'E14 3FB'),
('B002', '50 High St', 'Bristol', 'BS1 4QJ'),
('B003', '163 Main St', 'London', 'E14 1LN'),
('B004', '29 Queen St', 'London', 'SE1 9XY'),
('B005', '101 Park Ave', 'Bristol', 'BS2 5RU'),
('B006', '77 Broadway', 'London', 'SW1 2DA'),
('B007', '150 King St', 'Bristol', 'BS8 4AA'),
('B008', '65 Oxford Rd', 'London', 'OX1 1DP'),
('B009', '8 Victoria Rd', 'Bristol', 'BS9 1HF'),
('B010', '37 Church St', 'London', 'N1 4AB');

-- Inserting records into Staff table
INSERT INTO Staff (Staff_id, First_tname, Last_name, Position, Gender, DOB, Salary, Date_of_joining, Branch_No)
VALUES 
(1, 'John', 'Doe', 'Manager', 'Male', '1985-03-25', 25000, '2020-06-15', 'B001'),
(2, 'Jane', 'Smith', 'Assistant', 'Female', '1990-07-13', 22000, '2019-05-10', 'B002'),
(3, 'Alice', 'Johnson', 'Manager', 'Female', '1982-10-05', 30000, '2021-01-22', 'B003'),
(4, 'Bob', 'Williams', 'Clerk', 'Male', '1993-12-14', 15000, '2022-04-07', 'B003'),
(5, 'Charlie', 'Brown', 'Assistant', 'Male', '1991-06-30', 18000, '2020-09-25', 'B004'),
(6, 'David', 'Taylor', 'Manager', 'Male', '1987-04-17', 28000, '2018-11-13', 'B005'),
(7, 'Eva', 'Anderson', 'Clerk', 'Female', '1995-01-22', 14000, '2021-06-08', 'B006'),
(8, 'George', 'Martinez', 'Assistant', 'Male', '1992-08-11', 16000, '2019-09-01', 'B007'),
(9, 'Helen', 'Lopez', 'Manager', 'Female', '1980-05-09', 32000, '2020-02-14', 'B008'),
(10, 'Ivy', 'Garcia', 'Clerk', 'Female', '1996-09-22', 13000, '2022-07-10', 'B009');



-- 4. Display the details of all Branches.

SELECT * FROM Bank;



-- 5. Display the details of all staff.

SELECT * FROM Staff;



-- 6. List the address of all branch offices in London or Bristol.

SELECT Street, City, Postcode
FROM Bank
WHERE City IN ('London', 'Bristol');



-- 7. Display the list of the staff whose salary is between $10000 and $30000.

SELECT * 
FROM Staff
WHERE Salary BETWEEN 10000 AND 30000;



-- 8. Display the list of staff in descending order of salary.

SELECT * 
FROM Staff
ORDER BY Salary DESC;



-- 9. Find the minimum, maximum and average of staff salary

SELECT 
    MIN(Salary) AS Min_Salary, 
    MAX(Salary) AS Max_Salary, 
    AVG(Salary) AS Avg_Salary
FROM Staff;



-- 10. For each branch office with more than one member of staff, find the number of
-- staff working in each branch and the sum of their salaries.

SELECT 
    Branch_No, 
    COUNT(Staff_id) AS Number_of_Staff, 
    SUM(Salary) AS Total_Salary
FROM Staff
GROUP BY Branch_No
HAVING COUNT(Staff_id) > 1;



-- 11. Display the list of staff who work in the branch with a street address as ‘163 Main
-- Street’.

SELECT s.*
FROM Staff s
JOIN Bank b ON s.Branch_No = b.Branch_No
WHERE b.Street = '163 Main St';



-- 12. Display the list of staff whose salary is larger than the salary of every staff
-- member at bank with branch_No B003

SELECT *
FROM Staff
WHERE Salary > ALL (
    SELECT Salary
    FROM Staff
    WHERE Branch_No = 'B003'
);



-- 13. Give all Managers a 5% increment to their salary.

UPDATE Staff
SET Salary = Salary * 1.05
WHERE Position = 'Manager';



-- 14. How many staff joined in Branch _No B005 during the month of March or
-- October.

SELECT COUNT(*)
FROM Staff
WHERE Branch_No = 'B005' 
  AND (MONTH(Date_of_joining) = 3 OR MONTH(Date_of_joining) = 10);




-- 15. Display the Branch_No of Bank in which 2 or more employees joined in
-- November 1989.

SELECT Branch_No
FROM Staff
WHERE YEAR(Date_of_joining) = 1989 AND MONTH(Date_of_joining) = 11
GROUP BY Branch_No
HAVING COUNT(Staff_id) >= 2;
