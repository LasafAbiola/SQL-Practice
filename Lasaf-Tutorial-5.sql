/* Tutorial: Learning about Aliasing
This can be done via 'as' statement or using space
*/
-- Use case 1:
Select FirstName + ' ' + LastName as FullName
From EmployeeDemographics

-- Use case 2:
Select Avg(Age) as AverageAge
From EmployeeDemographics

-- Use case 3:
Select Demo.EmployeeID
From EmployeeDemographics as Demo

-- Example 1:
Select Demo.EmployeeID
From EmployeeDemographics as Demo
Join EmployeeSalary as Sal
	On Demo.EmployeeID = Sal.EmployeeID

-- Example 2:
Select Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Sal.Salary, Ware.Age
From EmployeeDemographics Demo
Left Join EmployeeSalary Sal
	On Demo.EmployeeID = Sal.EmployeeID
Left Join WareHouseEmployeeDemographics Ware
	On Demo.EmployeeID = Ware.EmployeeID

-- Example 3:
Select Demo.EmployeeID, Demo.FirstName, Demo.LastName, Ware.Age
From EmployeeDemographics Demo
Left Join WareHouseEmployeeDemographics Ware
	On Demo.EmployeeID = Ware.EmployeeID