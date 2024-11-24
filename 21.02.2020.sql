select distinct ProductID,ProductNumber from Production.Product; --tekrarý engeller distinct 
select * from Person.ContactType;
select distinct TerritoryID from Sales.Customer;select * from Sales.Customer order by StoreID ; --küçükten büyüðe sýralar
select * from Sales.Customer order by StoreID desc ; --büyükten küçüðe sýralar
select * from Sales.Customer order by 3 desc ; -- 3.sutünu sýralar /sutüna göre sýralar
select * from Sales.Customer order by StoreID,TerritoryID desc ;--birden fazla sýralamaya göre sýralar
select * from Sales.Customer order by StoreID desc,TerritoryID asc; --birden fazla sýralamaya göre sýralar storeýd azalan territoryýd artan
select * from Sales.Customer order by 3 desc,4 asc;--3.stünu azaltýr ve 4. stünü artýrýr.
select CustomerID as musteri from Sales.Customer;-- as -> ismi deðiþtirir.
select*from  Sales.SalesOrderDetail;--
select OrderQty*UnitPrice as toplamsatýþ from Sales.SalesOrderDetail ;--stünlarý çarpar orderqty unitprice çarpar
select (OrderQty*UnitPrice)+1000 as toplamsatýþ from Sales.SalesOrderDetail ;--stünlarý çarpar orderqty unitprice çarpar ve 1000 ekler

select ((OrderQty*UnitPrice)+1000)*0.2 as toplamsatýþ from Sales.SalesOrderDetail ;
--stünlarý çarpar orderqty unitprice çarpar ve 1000 ekler ve yüzde 20sini alýr.

select SalesOrderID,SalesOrderDetailID ,concat(SalesOrderID,'-',SalesOrderDetailID)  AS birleþtirme from  Sales.SalesOrderDetail;
 --salesorderýd ile salesorderdetail birleþtirir STRÝNG HÜCRE BÝRLEÞTÝRÝR.

select*from Sales.SalesOrderDetail where ProductID>773 ;-- productýd 773ten büyük olanlarý getirir
select*from Sales.SalesOrderDetail where ProductID=773 ;-- productýd 773e eþit olanlarý getirir
select*from Sales.SalesOrderDetail where ProductID BETWEEN 773 and 800 ;-- productýd 773 ile 800 arasýnda olanlarý getirir.
select*from Sales.SalesOrderDetail where ProductID!=773  ;--773TEN farklý olanlarý getirir

select*from Sales.SalesOrderDetail where SalesOrderDetailID BETWEEN 3 and 8 order by OrderQty  ;
-- salesorderýd 2.kolonu 3-8 arasýnda olanlarý orderqty kolonuna göre büyükten küçüðe doðru sýralan komut

select   distinct ModifiedDate from Sales.SalesOrderDetail;--tarihleri getirir tekrarý engelleyerek

select*from Sales.SalesOrderDetail where ModifiedDate='2011-06-27 00:00:00.000' ;
--ilk satýrdaki tarihe eþit olanýný bulan komut

select*from Sales.SalesOrderDetail where ModifiedDate>'2011-06-27 00:00:00.000'
--tarihin büyük olananýný getiren komut

select UnitPrice,ProductID,OrderQty from Sales.SalesOrderDetail where (UnitPrice>3000 or ProductID>777 )and OrderQty>3; 
--unitprice 3000den büyük olan veya productýd 777den büyük olanýný getir ve OrderQty 3 ten büyük olanýný verir.

select UnitPrice,ProductID,OrderQty from Sales.SalesOrderDetail where (UnitPrice>3000 or ProductID in (777,778,779) )and OrderQty>3 order by ProductID desc; 
--unitprice 3000den büyük olan veya productýd 777-778-779 eþit olanýný getirir ve OrderQty 3 ten büyük olanýný verir.

select * from Sales.SalesOrderDetail where CarrierTrackingNumber like '%b';
--içinde b olanlarý getirir.

select * from Sales.SalesOrderDetail where CarrierTrackingNumber like '%b%';
--ikinci harfi a olan 

select * from Sales.SalesOrderDetail where CarrierTrackingNumber like '%b%' or '%d%';
--içinde b veya d olan  

select * from Sales.SalesOrderDetail where CarrierTrackingNumber like '[BD]%';
--ilk harfi b olan veya d olan















