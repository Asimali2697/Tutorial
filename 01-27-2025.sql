


select * from Employees where FirstName = 'asim'

select * from Orders

select * from Employees

select lastname, shipcountry, shipcity from Employees as E 
join Orders as O on E.EmployeeID = O.EmployeeID order by LastName asc

select lastname, shipcountry, shipcity from Employees as E 
join Orders as O on E.EmployeeID = O.EmployeeID order by LastName desc 

