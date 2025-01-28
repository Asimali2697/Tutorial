
						-- TAMAM PREPARATION CHAT GPT SE HO RHI HAI 


---- Orders table mein count karo kitne orders 1997 ke baad place kiye gaye hain.
select * from Orders 

SELECT count(*) as shipped from orders where OrderDate > '1997-12-31'

--Customers table mein jitne customers London mein hain, unka total count aur unka maximum customer ID dikhana hai.(CHATGPT Questions)

select * from Customers

select count(*) as customercity , customerid from Customers where city = 'london'

select  count(*) as totalcustomrs, max (CustomerID) as maxcustomerid from Customers where city = 'london'

-- Orders aur Customers tables ko join karke un customers ke ContactName aur unke OrderID dikhana hai jinke orders ka Freight 100 se zyada hai(CHATGPT Questions)

select * from Orders
select * from Customers

-- bhaiya mne ye query chlai jese ke isne mjhse output manga lkn ye query data show nahi krhi agr mn WHERE ka filter hata deta hun to data show ho rha hai (CHATGPT Questions)

select contactname,CompanyName, orderid 
from Orders as O
join Customers as C on O.CustomerID = C.CustomerID   
where O.Freight > 10

-- ye chat cpt se code copy kia hai or isne bhi chutya krdya hai :\

SELECT C.ContactName, O.OrderID
FROM Orders AS O
JOIN Customers AS C ON O.CustomerID = C.CustomerID
WHERE O.Freight > 10;

--Orders table mein har ShipCountry ke liye Freight ka total calculate karo.(CHATGPT Questions)

select * from Orders

select shipcountry, sum(freight) AS freighttotal 
from Orders 
group by ShipCountry


--Products table mein un products ka price 20% badhao jinki CategoryID = 3 hai.

select * from Products

update Products
set UnitPrice = UnitPrice * 10.20
where CategoryID = 3



