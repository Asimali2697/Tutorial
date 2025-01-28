USE [mansoor]
GO

select * from Employees where FirstName = 'steven'
select * from Employees where FirstName = 'smith'
select * from Employees where FirstName like 'a%'
select * from Employees where FirstName like '%a'
select * from Employees where FirstName like '%az%'
select * from Employees where FirstName like '%az%' and Title = 'manager'
select * from Employees where FirstName like '%az%' and Title = 'CEO'
select * from Employees where Title = 'CEO'
select * from Employees where Title like  '%e%'
select * from Employees where year(BirthDate) = '1952'
select * from Employees where BirthDate < '01-08-2023'
select * from Employees where BirthDate > '1920-12-31'
select * from Employees where BirthDate between '06-26-1948' and '06-03-1955'
select distinct city from Employees
select distinct title from Employees 
select * from Employees
select EmployeeID,lastname,firstname from Employees; 
SELECT FirstName, LastName, HireDate FROM Employees;
SELECT FirstName, LastName, HireDate from Employees;
SELECT firstName, lastName, hireDate,EmployeeID from Employees where EmployeeID between 1 and 1016
SELECT firstName, lastName, hireDate from Employees;
SELECT FirstName AS EmployeeFirstName, LastName AS EmployeeLastName FROM Employees;
select lastname as surname from Employees
SELECT * FROM Employees WHERE City <> 'london';
SELECT FirstName, LastName, HireDate FROM Employees ORDER BY HireDate DESC;
SELECT FirstName, LastName, HireDate FROM Employees ORDER BY HireDate ASC;
SELECT FirstName, LastName, City FROM Employees ORDER BY City ASC, LastName DESC;
SELECT FirstName, LastName, City FROM Employees ORDER BY City ASC, LastName ASC;
SELECT FirstName, LastName, City FROM Employees ORDER BY City DESC, LastName ASC;

SELECT EmployeeID, YEAR(BirthDate) AS BirthYear,BirthDate FROM Employees;
SELECT ProductName, UnitPrice, UnitPrice *1.2 AS PriceWithTax FROM Products;
SELECT COUNT(*) AS TotalProducts FROM Products;

select 100*0.01
select 100*0.10
select 100*0.90
select 100*0.98
select 100*0.99
select 100*0.995
select 100*0.996
select 100*1.00
select 100*0.15
select 100*1.15
select 100*1.19
select 100*1.20
select 18*1.2
select 18*0.12


select GETDATE()
select '1998-06-26'
select year('1998-06-26')

SELECT DATENAME(MONTH, GETDATE());
SELECT DATENAME(MONTH, '1998-06-26');
SELECT DATENAME(WEEKDAY, '1997-06-26');

select DATENAME(WEEK,getdate());
select DATENAME(WEEK,'1998-06-26');

select DATENAME(DAYOFYEAR,'1998-06-26');  
select DATENAME(ISO_WEEK,'1998-06-26'); -- ISOweek always starts from monday 
select DATENAME(YEAR,'1998-06-26');
select DATENAME(DAY,'1998-06-26');
select DATENAME(QUARTER,'1998-06-26');


select * from   Employees

SELECT DATENAME(YEAR, '1998-06-26') AS YearName;          -- Output: 1998
SELECT DATENAME(MONTH, '1998-06-26') AS MonthName;        -- Output: June
SELECT DATENAME(WEEKDAY, '1998-06-26') AS WeekdayName;    -- Output: Friday
SELECT DATENAME(DAYOFYEAR, '1998-06-26') AS DayOfYear;    -- Output: 177
SELECT DATENAME(QUARTER, '1998-06-26') AS QuarterName;    -- Output: 2
SELECT DATENAME(ISO_WEEK, '1998-06-26') AS ISOWeekName;   -- Output: 26


SELECT DATENAME(YEAR, '1998-06-26') 
SELECT DATENAME(MONTH, '1998-06-26') 
SELECT DATENAME(WEEKDAY, '1998-06-26') 
SELECT DATENAME(DAYOFYEAR, '1998-06-26') 
SELECT DATENAME(QUARTER, '1998-06-26') 
SELECT DATENAME(ISO_WEEK, '1998-06-26') 

SELECT COUNT(*) AS TotalEmployees FROM Employees;
select count (EmployeeID) as totalemployees from Employees

SELECT COUNT(*) AS Managers FROM Employees WHERE Title = 'Manager';

SELECT AVG(Salary) AS AverageSalary FROM Employees;

SELECT MAX(Salary) AS HighestSalary, MIN(Salary) AS LowestSalary FROM Employees;

SELECT MAX(Salary) AS HighestSalary, MIN(Salary) AS LowestSalary FROM Employees;

select salary from Employees;

select * from Employees where FirstName = 'steve waugh'

select * from Employees where EmployeeID = 1022

update Employees
set salary = 50000
where EmployeeID = 1022

select * from Employees where salary = 50000

select * from Employees where salary is null



update Employees
set salary = 50000
where EmployeeID = 102222


update Employees
set salary = 50000

update Employees
set salary =
   case 
		when employeeid = 1 then 100000
		when employeeid = 2 then 200000
		when employeeid = 3 then 300000
		when employeeid = 4 then 400000
		when employeeid = 5 then 500000
		when employeeid = 6 then 600000
		when employeeid = 7 then 700000
		
		else salary
	end;

select avg(salary) from Employees;

SELECT Country, COUNT(*) AS TotalEmployees FROM Employees GROUP BY Country;

SELECT City, COUNT(*) AS TotalEmployees FROM Employees GROUP BY City HAVING COUNT(*) > 3;

SELECT City, COUNT(*) AS TotalEmployees FROM Employees GROUP BY City HAVING COUNT(*) < 3;


select * from Employees


SELECT COUNT(*) FROM Employees where Salary between 50000 and 500000 ;

-- where or having to ek hi trhn kaam krhe hn phr 

select city, count(City) as totalemployees from Employees
group by City having count(City) <3


CREATE PROCEDURE GetAllEmployees
AS
BEGIN
    SELECT * FROM Employees;
END;

SELECT * FROM Customers ORDER BY ContactName;

SELECT * FROM Products ORDER BY UnitPrice;

SELECT * FROM Products ORDER BY UnitPrice desc

SELECT E.LastName, C.CompanyName
FROM Employees AS E
INNER JOIN Orders AS O ON E.EmployeeID = O.EmployeeID
INNER JOIN Customers AS C ON O.CustomerID = C.CustomerID;

select * from Employees

delete from Employees
where EmployeeID = 4010;

update Employees
set LastName = 'lara'
where EmployeeID = 8



SELECT E.FirstName, E.LastName, O.OrderID 
FROM Employees AS E
JOIN Orders AS O ON E.EmployeeID = O.EmployeeID;



