select * from Orders

select * from Employees

select * from Customers

select * from Shippers

select * from region

select * from [Order Details]

select * from Categories

select * from Suppliers


select * from Products

select companyname, productname from Suppliers as s
join Products as p on s.SupplierID = p.SupplierID

select OrderID, o.CustomerID from orders as O
join Customers as C on O.CustomerID = C.CustomerID where o.Freight > 100 

SELECT ContactName, OrderID 
FROM Customers AS c
INNER JOIN Orders AS o ON c.CustomerID = o.CustomerID
WHERE o.Freight > 100; -- isme isne contact name q liya thorha clear krna chahta hun

select CompanyName,  PostalCode  from Customers as C
join Region as R on R.RegionID = c.Region


update Orders
set Freight = 50
where OrderID =10248 

select * from Orders where Freight = 50 and OrderID = 10248

update Customers
set CompanyName = 'MARIA SMITH'
where CustomerID = 'ALFKI'

select * from Customers where CompanyName = 'MARIA SMITH' and CustomerID = 'ALFKI'

update Orders
set Freight = 0.20
where OrderDate > '1996-12-31'

select * from Orders where Freight = 0.20 and OrderDate > 1996-12-31
select Freight, OrderDate from Orders

update Customers
set region = 'western europe'
where city = 'london'

select * from Customers where region = 'western europe' and city = 'london'
select Freight, OrderDate from Orders

update Products
set UnitPrice = UnitPrice *1.20
where CategoryID = 1

select * from Products where UnitPrice = UnitPrice *1.20 and CategoryID =  1
select UnitPrice, CategoryID from Products

update Employees
set LastName = 'Johnson', Title = 'Senior Developer' 
where EmployeeID = 3

select * from Employees where LastName = 'Johnson'and Title = 'Senior Developer' 
select lastName, EmployeeID from Employees