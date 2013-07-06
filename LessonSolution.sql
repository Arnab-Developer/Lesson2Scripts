USE [Lesson2Database]
GO

-- Create table.
CREATE TABLE Employees
(
	EmployeeId INT NOT NULL IDENTITY(1, 1),
	Name VARCHAR(20) NOT NULL,
	Department VARCHAR(20) NOT NULL,
	Designation VARCHAR(10) NOT NULL,
	BasicSalary INT NOT NULL,

	-- Primary key.
	CONSTRAINT pk_Employees PRIMARY KEY (EmployeeId)
)
GO

-- Insert data.
INSERT INTO Employees (Name, Department, Designation, BasicSalary)
VALUES ('Rajat', 'ACCTS', 'MGR', 6500),
       ('Madhurima', 'MKTG', 'MGR', 6000),
	   ('Rajnish', 'PERS', 'CLRK', 4500),
	   ('Rakhi', 'ACCTS', 'CLRK', 3000),
	   ('Sachin', 'MKTG', 'SALES', 2000),
	   ('Virat', 'PERS', 'MGR', 7000),
	   ('Mukesh', 'ACCTS', 'CLRK', 2500)
GO

-- Display only the name of employees.
SELECT E.Name
FROM Employees AS E
GO

-- Display all records of employees whose designation id 'MGR'.
SELECT E.Name, E.Department, E.Designation, E.BasicSalary
FROM Employees AS E
WHERE E.Designation = 'MGR'
GO

-- Display only name of employees who are working in 'ACCTS' department.
SELECT E.Name
FROM Employees AS E
WHERE E.Department = 'ACCTS'
GO

-- Display those records whose basic salary is more than 5000.
SELECT E.BasicSalary
FROM Employees AS E
WHERE E.BasicSalary > 5000
GO

-- Display name and department whose basic salary is between 2000 and 3000.
SELECT E.Name, E.Department
FROM Employees AS E
WHERE E.BasicSalary BETWEEN 2000 AND 3000
GO

-- Desplay only the name of employees who are working under 'MKTG' and 'PERS' departments.
SELECT E.Name
FROM Employees AS E
WHERE E.Department = 'MKTG' OR E.Department = 'PERS'
GO

-- Display records whose department is 'MKTG' and designation is 'MGR'.
SELECT E.Name, E.Department, E.Designation, E.BasicSalary
FROM Employees AS E
WHERE E.Department = 'MKTG' AND E.Designation = 'MGR'
GO

-- Display records whose EmployeeId is 3 and 7.
SELECT E.Name, E.Department, E.Designation, E.BasicSalary
FROM Employees AS E
WHERE E.EmployeeId = 3 OR E.EmployeeId = 7
GO

-- Display records whose name starts with 'R'.
SELECT E.Name, E.Department, E.Designation, E.BasicSalary
FROM Employees AS E
WHERE E.Name LIKE 'R%'
GO

-- Display records other than 'PERS' department and earning basic below 5000.
SELECT E.Name, E.Department, E.Designation, E.BasicSalary
FROM Employees AS E
WHERE E.Department <> 'PERS' AND E.BasicSalary < 5000
GO


