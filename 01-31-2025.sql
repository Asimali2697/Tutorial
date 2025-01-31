


--1.
--Tumhe Customers table se sabhi customers ka naam aur unka city dikhana hai.

select * from Customers
 select companyname, city from Customers

--2.
--Tumhe Orders table se 1997 ke baad place kiye gaye orders ka OrderID aur OrderDate dikhana hai.

select * from Orders

select orderdate,orderid from Orders where OrderDate > '1997-12-31' 

--3.
--Tumhe Products table se wo products dikhane hain jinka price 50 se zyada hai.

select * from Products

select productname from Products where UnitPrice > '50'

--4.
--Tumhe Employees table se jo employees USA me hain unka FirstName aur City dikhana hai.
 
 select * from Employees

 select firstname,city from Employees where Country = 'USA'


-- 5.
--Tumhe Orders aur Customers tables ko join karna hai aur sirf un customers ka ContactName aur OrderID dikhana hai jinke Freight 100 se zyada hai.

select * from Orders

select * from Customers


select Freight,CompanyName, contactname, orderid from orders as O
join Customers as C on O.CustomerID = C.CustomerID where Freight > 10 


--6.
--Tumhe Products table se jo products CategoryID = 2 wale hain unka average price calculate karna hai.

select * from Products

select productname, avg(unitprice) as averageprice from products where categoryid = 2 group by productname 


