

select * from orders

select shipcountry, sum(freight) as total  from Orders group by ShipCountry

select * from Products

select categoryid, max(unitprice) as total  from Products group by categoryid

select * from Customers

select City, count(CompanyName) as totalcustomers  from Customers group by city 

select * from orders

select AVG(Freight) as Averagefreight from Orders where Freight > '50' 

select * from [Order Details]

select orderid, sum(unitprice * quantity) as totalprice from [Order Details] group by OrderID 

select * from Employees

select  count(LastName) as totalempolyees  from Employees group by title 

select * from Customers

select Country, count(distinct City) as UniqueCities from Customers group by Country;

select * from orders

select OrderID,OrderDate from Orders where Freight > 50

update Orders
set Freight = 100

select * from Customers

select  count(*) as totalemployees  from Employees where city = 'london' 

select * from Products

select ProductName, UnitPrice from Products where CategoryID = 2

select * from Customers

select count(*) as USACustomers from Customers where Country = 'USA'

select * from [Order Details]

select OrderID, sum(UnitPrice * Quantity) as TotalPrice from [Order Details] where Quantity > 10 group by OrderID;

select * from Orders

select OrderID, OrderDate from Orders where OrderDate BETWEEN '1996-01-01' AND '1996-12-31';

select * from Customers

select ContactName, City from Customers where City = 'Paris'

select * from Orders

select OrderID, Freight from Orders where Freight < 50

select * from Employees

select EmployeeID, LastName from Employees where HireDate > '1996-12-31'


