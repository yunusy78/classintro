select * from Products

select ProductName as Name ,ProductId as Id from Products

select p.ProductName, p.UnitsInStock *p.UnitPrice as Total from Products p

select ProductName +'  '+ QuantityPerUnit from Products

select 'Yunus Yigit' as Student

select 9*8 as Sonuc

select * from Products where CategoryID=1

select * from Products where UnitsInStock<5 -- =0 vs de denilebilir burda

select * from Products where UnitsInStock=0 and UnitsOnOrder>0

select * from Products where UnitsInStock=0 or UnitsOnOrder=0  -- and desek 4 tane kayit getiriyor yani kesisim kumesi gibi

select * from Products where ProductName='Chai'   ---burda Chai yi getirir ama not dersek Chai disindakiler gelir

select * from Products where not ProductName='Perth Pasties' and UnitsInStock=0 --not olmayan demek

select * from Products order by ProductName    -- Burda bu komutla siralama yapar Secilen birimi A dan Z ye siralayarak getirir

select * from Products Order by UnitPrice  -- Fiyata gore siralar

select * from Products Order by UnitPrice desc  -- Buyukten kucuge dogru siralar

select * from Products order by ProductName asc   --Ascending asc   desc descending

select * from Products order by UnitPrice asc, ProductName desc  

select * from Products where ProductName like 'ch%' -- Bu ch ile baslayan urunleri getir demek

select * from Products where ProductName like '%ch%' --Buda icinde ch gecen butun urunleri getir demek

select * from Products where ProductName like '%a'  -- Bu a ile biten urunleri getir demek

select * from Products where UnitPrice between 10 and 50 order by UnitPrice   --10 la 50 arasindaki fiyatlilari getirir

select * from Products where CategoryID in (1,2)  --Kategori id si 1 ve 2 olanlari getir demek

select Count(*) from Products  -- Burda urun sayisini verdi

select Count (ProductName) from Products 

select Count (*) from Customers --91

select Count(Region) from Customers --Null olanlar olduklari icin 31 dir Null olanlar Count ile sayilmaz

select Min (UnitPrice) from Products --En ucuz urunu verir

select Max (UnitPrice) from Products  -- En pahali urunu verir

select Avg (UnitPrice) from Products  -- Ortalama alinir 

select Sum(UnitPrice*Quantity) from [Order Details]    -- Adetle birim fiyat carpimindan elde edilen toplam kazanc bulunur

select Rand()  --Rastgele sayi uretmeye yariyor

select LEFT ('Engin Demirog' ,3)

select LEFT (ProductName,3) from Products --Urun isimlerinin solundan 3 karakter alir
select RIGHT (ProductName,3) from Products --Urun isimlerinin sagindan 3 karakter alir

select LEN ('Engin Demirog')

select ProductName, LEN(ProductName) as Karakter From Products  --Karakter sayisini verir

Select LOWER ('EnGin DeMirog')  --butun Harfleri kucultur

Select UPPER ('ENgin DEmiroG')  -- butun harfleri buyutur

Select TRIM ('     Engin Demirog     ')  --Bosluklari duzeltir

select * from Products where Trim(ProductName) ='Chai'

Select * from Products Where Len (ProductName)>10  --isim harfleri 10 dan buyuk olanlari getir demek

Select LTRIM('     Engin Demirog     ')  --Soldan boslugu atar

Select RTRIM('     Engin Demirog     ') -- SAgdan boslugu atar

Select REVERSE('Engin Demirog')   -- Metni tersten yazar

Select CHARINDEX('n','Engin Demirog',1) -- Burda n engin demirog icinde kacinci harf diye soruyorsun

Select ProductName From Products Where CHARINDEX(' ',ProductName,1)>0

Select ProductName From Products Where CHARINDEX('anton',ProductName,1)>0 -- icinde anton gecen urunleri bulur  

Select REPLACE('Engin Demirog', ' ','_') --Metnin icindeki boslugu alt cizgi ile degisitr demek

Select REPLACE (ProductName, ' ','_' ) from Products  --Urun icindeki bosluk olanlri alt cizgiyle degistirir

Select SUBSTRING ('Engin Demirog',1,5)  --Birinci karakterden itibaren 5 tane harfi yazdir demek

Select SUBSTRING(ProductName,1,6) from Products --Birinci karakterden itibaren 6 karekter al demek

Select ASCII('B') --Ascii tablosundan deger verir


select distinct (Country) from Customers order by Country

select distinct (Country) from Customers order by Country
select distinct Country, City from Customers order by Country
 
 Select Country, Count (*) Adet from Customers group by Country -- belirtiginiz gruba gore grup yapar  ornek o ulkedeki toplam musteri sayisini verir

 Select Country, City, Count (*) Adet from Customers group by Country, City 

 Select Country, City, Count(*) Adet From Customers Group by Country, City having Count(*)>1   --having burda 1 den buyk olanlari getir sarti getiriyor


 Select Country, City, Count(*) Adet From Customers where City<> 'Nantes'  Group by Country, City having Count(*)>1  -- Nantes harici sehirleri getir demek --<> farklidir demek

 
 --inner join iki tabloyu birlestirerek getirir
 Select * from Products inner join Categories on Products.CategoryID= Categories.CategoryID where Products.UnitPrice>20 order by Categories.CategoryID

 Select * from Products p inner join [Order Details] od on p.ProductID=od.ProductID inner join orders o on od.orderID=o.orderID


 Select p.ProductName, o.OrderDate, od.Quantity*od.UnitPrice as Total from Products p 
 inner join [Order Details] od on p.ProductID=od.ProductID inner join orders o on od.orderID=o.orderID
 order by p.ProductName, o.OrderDate

 --Left join nerde ihtiyacimiz var. sadece eslesenler gelmiyor eslesmeyen datalarda gelir.
 -- Satisini hic yapmadigimiz urunler

 select * from Products p inner join [Order Details] od on p.ProductID= od.ProductID

 select * from Products p left join [Order Details] od on p.ProductID= od.ProductID where od.ProductID is null 

 select * from Customers c inner join Orders o on c.CustomerID=o.CustomerID
 
 Select * from Customers c left join Orders o on c.CustomerID=o.CustomerID

 Select * from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is null

 Select * from Orders o right join Customers c on o.CustomerID=c.CustomerID where o.CustomerID is null

 Select c.CustomerID, c.ContactName from Orders o right join Customers c on o.CustomerID=c.CustomerID where o.CustomerID is null

 Select p.ProductName, p.QuantityPerUnit  from Products p order by p.ProductName

 Select * from Employees e left join Orders o on o.EmployeeID=e.EmployeeID where o.EmployeeID is null -- butun personel satis yapmis

 Select p.ProductName, Count(*) as Adet from Products p inner join [Order Details] o on p.ProductID=o.ProductID group by p.ProductName order by p.ProductName

 Select p.ProductName, Count(*) as Adet from Products p inner join [Order Details] o on p.ProductID=o.ProductID 
 where o.Discount>0 
 group by p.ProductName order by p.ProductName

Select c.CategoryName, Count(*) from Products p inner join Categories c on c.CategoryID=p.CategoryID 
inner join [Order Details] od on od.ProductID= p.ProductID group by c.CategoryName


Select e2.FirstName+ ' '+ e2.LastName as Personel, e1.FirstName+ ' '+ e1.LastName as Ustu   -- isim birlestirme yapmamizi sagladi ayni zamanda ayni tabloda innerjoin yaptik  
from Employees e1 inner join Employees e2 on e1.EmployeeID=e2.ReportsTo                      -- alt ust iliskisi kimler arasinda varsa onlari birlestirmis olduk

Select p.ProductName as 'Urun Adi', SUM(od.UnitPrice *od.Quantity) as 'Kazanilan Toplam Miktar' from Products p inner join [Order Details] od on p.ProductID=od.ProductID 
inner join orders o on od.orderID=o.orderID group by p.ProductName order by p.ProductName
