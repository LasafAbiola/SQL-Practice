/* Tutorial 1:
- Here one learns about creating a database and a Table
- Learn how to insert values into a table
*/

CREATE TABLE EmployeeDemographics
(
EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

CREATE TABLE EmployeeSalary
(
EmployeeID int,
JobTitle varchar(50),
Salary int
)

-- Table 1 Insert:
INSERT INTO EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')

--Table 2 Insert:
INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Reional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)

/* Tutorial 2:
- Here one learns about selecting values from a database and a Table
- Learn how to insert values into a table
- Learn about using the AS statement to create a derived column
*/

-- SELECT *
-- SELECT FirstName, LastName
-- SELECT TOP 5 *
SELECT DISTINCT EmployeeID
-- SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics;

--SELECT MIN(Salary) AS MINMAXAVG
--SELECT MAX(Salary) AS MINMAXAVG
--SELECT AVG(Salary) AS MINMAXAVG
--FROM EmployeeSalary

/* Tutorial 3:
- Here one learns about using the WHERE statement in a database and a Table
- Learn how to get values using multiple conditions in a statement
- Learn about using wildcard(%)
*/
SELECT *
FROM EmployeeDemographics
-- WHERE FirstName = 'Jim'
-- WHERE FirstName <> 'Jim'
-- WHERE Age = 30
-- WHERE Age >= 30
-- WHERE Age <= 32 AND Gender = 'Male'
-- WHERE Age >= 30 OR Gender = 'Male'
WHERE LastName LIKE '%s%'
-- WHERE FirstName is NULL
--WHERE FirstName in ('Jim', 'Michael', 'Scott')


/* Tutorial 4:
- Here one learns about GROUP BY and ORDER BY statement
*/
--SELECT Gender
--FROM EmployeeDemographics
--GROUP BY Gender
--ORDER BY Gender