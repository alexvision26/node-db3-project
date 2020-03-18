-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select Product.ProductName, Category.CategoryName
from Product
Join Category on Product.CategoryId = Category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select o.Id, s.CompanyName from [order] as o
join Shipper as s on s.Id = o.ShipVia
where o.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.ProductName, od.Quantity from OrderDetail as od
join [Order] as o on o.id = od.OrderId
join Product as p on p.id = od.ProductId
where od.OrderId = 10251
Order By p.ProductName

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select o.id, o.ShipName, e.LastName from [Order] as o
join Employee as e on e.Id = o.EmployeeId
