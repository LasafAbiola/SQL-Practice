-- Learning about Union

-- Table 1 Insert:
Insert into EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

-- Table 3 Query:
Create Table WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

-- Table 3 Insert:
Insert into WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')

Select *
From EmployeeDemographics
Full Outer Join WareHouseEmployeeDemographics
	On EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

Select *
From EmployeeDemographics
Union
Select *
From WareHouseEmployeeDemographics
	
Select *
From EmployeeDemographics
Union All
Select *
From WareHouseEmployeeDemographics

Select EmployeeID, FirstName, Age
From EmployeeDemographics
Union
Select EmployeeID, JobTitle, Salary
From EmployeeSalary

-- Learning about using the Case statement
Select FirstName, LastName, Age,
CASE
	When Age = 38 Then 'Stanley'
	When Age > 30 Then 'Old'
	When Age Between 27 and 30 Then 'Young'
	Else 'Baby'
End
From EmployeeDemographics
Where Age is not Null
Order by Age

-- Use Case
Select FirstName, LastName, JobTitle, Salary,
Case
	When JobTitle = 'Salesman' Then Salary + (Salary * 0.1)
	When JobTitle = 'Accountant' Then Salary + (Salary * 0.05)
	When JobTitle = 'HR' Then Salary + (Salary * 0.01)
	Else Salary + (Salary * 0.03)
End as SalaryAfterRaise
From EmployeeDemographics
Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Learning about Having Statement
-- Use case 1:
Select JobTitle, Count(JobTitle)
From EmployeeDemographics
Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
Group by JobTitle
Having Count(JobTitle) > 1

-- Use case 2:
Select JobTitle, Avg(Salary)
From EmployeeDemographics
Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 
Group by JobTitle
Having Avg(Salary) > 45000
Order by Avg(Salary) Desc
