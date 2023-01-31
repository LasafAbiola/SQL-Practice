-- LEARNING HOW TO UPDATE AND DELETE DATA FROM A DB TABLE

Delete
From EmployeeDemographics
Where EmployeeID = 1011

Delete
From EmployeeDemographics
Where FirstName = 'Holly'

Delete
From EmployeeDemographics
Where EmployeeID = 1013

Insert into EmployeeDemographics Values 
--(1011, 'Ryan', 'Howard', 26, 'Male')
--(NULL,'Holly', 'Flax', Null, Null)
(1013, 'Daryl', 'Philbin', Null, 'Male')

Update EmployeeDemographics
Set EmployeeID = 1012
Where FirstName = 'Holly' and LastName = 'Flax'

Update EmployeeDemographics
Set Age = 32, Gender = 'Female'
Where FirstName = 'Holly' and LastName = 'Flax'

Update EmployeeDemographics
Set Age = 37
Where EmployeeID =1013

Update EmployeeSalary
Set JobTitle = 'Customer Relations'
Where EmployeeID =1010

Update EmployeeSalary
Set EmployeeID = 1011
Where JobTitle = 'Salesman' and Salary = 43000