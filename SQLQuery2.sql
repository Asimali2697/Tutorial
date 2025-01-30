
SELECT E.FirstName, E.LastName, O.OrderID 
FROM Employees AS E
JOIN Orders AS O ON E.EmployeeID = O.EmployeeID;


select * from Orders

select * from Orders where EmployeeID = 5 

select * from Orders where EmployeeID = 5 and CustomerID = 'warth'

select * from Orders where OrderDate between 1996-01-01 and 1996-12-31

select * from Orders where OrderDate between '1996-01-01' and '1996-12-31'

select * from Shippers

select distinct ShipRegion from Orders

select * from orders where Freight > 15

SELECT shipvia, COUNT(*) AS Totalshipper FROM Orders GROUP BY ShipVia;

select * from Orders where ShipRegion = 'AK'

select * from Orders where ShipVia >0 and ShipCountry = 'belgium'

select * from Orders where Shipvia > 0

select OrderID, COUNT (OrderID) from Orders group by ShipVia

select CompanyName from Orders group by ShipVia 

select * from Orders where OrderDate min '1996-01-01' and '1996-12-31'

select * from Orders WHERE orderdate > 0  and shippeddate  < 10

select * from Orders WHERE orderdate = '1996-01-01'  and shippeddate  = '1996-01-11'

select ORDERDATE FROM Orders
WHERE ShippedDate < 10

select * from Orders where ShipVia = 1

select * from Orders where ShipVia = 2

select * from orders where shipvia = 3

SELECT shipvia, COUNT(*) AS Totalshipping FROM Orders group by ShipVia

select * from Orders

select * from Customers

select CompanyName, OrderID, OrderDate, Freight from Customers as C
join Orders as O on C.CustomerID = O.CustomerID order by CompanyName asc 

select CompanyName, OrderID, OrderDate, Freight from Customers as C
join Orders as O on C.CustomerID = O.CustomerID order by CompanyName desc

select CompanyName, OrderID, OrderDate, Freight from Customers as C
join Orders as O on C.CustomerID = O.CustomerID order by OrderID asc 

select CompanyName, OrderID, OrderDate, Freight from Customers as C
join Orders as O on C.CustomerID = O.CustomerID order by OrderID desc 

select CompanyName, OrderID, OrderDate, Freight from Customers as C
join Orders as O on C.CustomerID = O.CustomerID order by OrderDate asc 

select CompanyName, OrderID, OrderDate, Freight from Customers as C
join Orders as O on C.CustomerID = O.CustomerID order by OrderDate desc 

select CompanyName, OrderID, OrderDate, Freight from Customers as C
join Orders as O on C.CustomerID = O.CustomerID order by Freight asc 

select CompanyName, OrderID, OrderDate, Freight from Customers as C
join Orders as O on C.CustomerID = O.CustomerID order by Freight desc 
