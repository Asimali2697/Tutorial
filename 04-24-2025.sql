select * from Customers

select *from Customers where Country = 'Germany'

create table Students (
	ID int,
	name varchar (50),
	age int

);

select * from Students

insert into Students (ID,name,age)
values (1,'ali',25)


select * from Orders

select  count(*) orderid from Orders

select  count(OrderID) as totalorders from Orders


select * from Customers

select customerid, count(customerid) as totalorder from Orders
group by CustomerID

	select customerid, count(customerid) 
	as totalorder 
	from Orders
	group by CustomerID
	having count(*) >5

select * from [Order Details]

select productid, sum(Quantity) as totalproduct from [Order Details]
group by ProductID

select productid, sum(Quantity) as totalproduct from [Order Details]
group by ProductID
having sum(Quantity) > 500

select * from Orders

select employeeid, count(orderid) as totalordersprocess from Orders
group by EmployeeID


select employeeid, count(EmployeeID) as totalorders from Orders	
group by EmployeeID
having count(*) > 20

select * from Products

select Quantity, avg(Quantity) as totalorders from [Order Details]	
group by Quantity
having avg(Quantity) > 20

select ProductID, avg(Quantity) as totalorders from [Order Details]	
group by ProductID
having avg(Quantity) > 20

select  employeeid, count(*) as totalorderhandling from Orders
group by EmployeeID

select  employeeid, count(*) as totalorderhandling from Orders
group by EmployeeID
having count(*)> 20

select  ProductID, avg(Quantity) as totalorderhandling from [Order Details]
group by ProductID
having avg(Quantity)> 25

select * from orders 

select customerid, sum(freight) as totalfreight from orders
group by CustomerID
having count(*) > 5


select * from Products
select * from [Order Details]

SELECT ProductName, count(productname) as totalproduct, avg(quantity) totalquantity
from [Order Details]
join Products on [Order Details].ProductID = Products.ProductID
group by ProductName
having count(*) > 50


select * from orders
select * from employees













