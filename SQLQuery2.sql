--Select 
--ANSII
Select ContactName Adi,CompanyName Sirketadi,City Sehir from Customers 
select * from Customers Where City = 'Berlin'

--Case insensitive
sElEct * from Products Where CategoryID=1 or CategoryID=3

select * from Products Where CategoryID=1 and UnitPrice>=10

select * from Products order by ProductName

select * from Products order by CategoryId 

select * from Products order by UnitPrice desc   --ascending artan  descending dusen

select * from Products where CategoryID=1 order by UnitPrice desc

select count(*)Adet from Products

select count (*) from Products where CategoryID=3

select *
from Products inner join Categories
on Products.CategoryID = Categories.CategoryID

select products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName
from Products inner join Categories
on Products.CategoryID = Categories.CategoryID 
where Products.UnitPrice>10

select * from Products p inner join [Order Details] od
on p.ProductID=od.ProductID

--yukardakiden farki solda olup sagda olmayanlari getirir
select * from Products p left join [Order Details] od
on p.ProductID=od.ProductID

select * from Customers c inner join Orders O 
on c.CustomerID=o.CustomerID


--sistemimize kayit olmus ama alisveris yapmamis kisileri getir onlara kampanta yapacagim dediginde kullanilir dediginde ozel musteri 
select * from Customers c left join Orders O 
on c.CustomerID=o.CustomerID
where o.CustomerID is null  -- bu kosul her zaman Pk uygulanir null

select * from Products p inner join [Order Details] od
on p.ProductID=od.ProductID
inner join Orders o
on o.OrderID=od.OrderID



--burda heryesi yazabilirsin 
--DTO Data transformation object















select CategoryID, count(*) from Products group by CategoryID

select CategoryID, count(*) from Products group by CategoryID having count(*)<10

select CategoryID, count(*) from Products where UnitPrice>20 group by CategoryID having count(*)<10

