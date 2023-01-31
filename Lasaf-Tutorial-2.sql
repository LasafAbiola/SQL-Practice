/*
Insert into EmployeeDemographics Values 
(1011, 'Ryan', 'Howard', 26, 'Male')
(NULL,'Holly', 'Flax', Null, Null)
(1013, 'Daryl', 'Philbin', Null, 'Male')
*/

/* Insert into EmployeeSalary Values
-- (1010, Null, 47000)
(Null, 'Salesman', 43000)
*/

-- Learning about Inner Join
/*
Select *
From EmployeeDemographics
Inner Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
*/

-- Learning about Full Outer Join
/* Select *
From EmployeeDemographics
Full Outer Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
*/

-- Learning about Left Outer Join
/* Select *
From EmployeeDemographics
Left Outer Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
*/

-- Learning about Right Outer Join
/*
Select *
From EmployeeDemographics
Right Outer Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
	*/

-- Use cases of the Join statement

-- Use Case 1a:
/*Select EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
From EmployeeDemographics
Inner Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
*/

/*
-- Use Case 1b:
Select EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
From EmployeeDemographics
Inner Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

	*/

-- Use Case 1c:
Select EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
From EmployeeDemographics
Right outer Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Use Case 1d:
Select EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
From EmployeeDemographics
Right outer Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Use Case 1e:
Select EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
From EmployeeDemographics
Left outer Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Use Case 1f:
Select EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
From EmployeeDemographics
Left outer Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Use Case 2a:
Select EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
From EmployeeDemographics
Inner Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where FirstName <> 'Michael'
Order by Salary Desc

-- Use Case 3:
Select JobTitle, AVG(Salary)
From EmployeeDemographics
Inner Join EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where JobTitle = 'Salesman'
Group by JobTitle

