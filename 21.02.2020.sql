select distinct ProductID,ProductNumber from Production.Product; --tekrarı engeller distinct 
select * from Person.ContactType;
select distinct TerritoryID from Sales.Customer;select * from Sales.Customer order by StoreID ; --küçükten büyüğe sıralar
select * from Sales.Customer order by StoreID desc ; --büyükten küçüðe sıralar
select * from Sales.Customer order by 3 desc ; -- 3.sutünu sıralar /sutüna göre sıralar
select * from Sales.Customer order by StoreID,TerritoryID desc ;--birden fazla sıralamaya göre sıralar
select * from Sales.Customer order by StoreID desc,TerritoryID asc; --birden fazla sıralamaya göre sıralar storeıd azalan territoryıd artan
select * from Sales.Customer order by 3 desc,4 asc;--3.stünu azaltır ve 4. stünü artırır.
select CustomerID as musteri from Sales.Customer;-- as -> ismi deðiþtirir.
select*from  Sales.SalesOrderDetail;--
select OrderQty*UnitPrice as toplamsatıþ from Sales.SalesOrderDetail ;--stünları çarpar orderqty unitprice çarpar
select (OrderQty*UnitPrice)+1000 as toplamsatıþ from Sales.SalesOrderDetail ;--stünları çarpar orderqty unitprice çarpar ve 1000 ekler

select ((OrderQty*UnitPrice)+1000)*0.2 as toplamsatıþ from Sales.SalesOrderDetail ;
--stünları çarpar orderqty unitprice çarpar ve 1000 ekler ve yüzde 20sini alır.

select SalesOrderID,SalesOrderDetailID ,concat(SalesOrderID,'-',SalesOrderDetailID)  AS birleþtirme from  Sales.SalesOrderDetail;
 --salesorderıd ile salesorderdetail birleþtirir STRıNG HÜCRE BıRLEÞTıRıR.

select*from Sales.SalesOrderDetail where ProductID>773 ;-- productıd 773ten büyük olanları getirir
select*from Sales.SalesOrderDetail where ProductID=773 ;-- productıd 773e eþit olanları getirir
select*from Sales.SalesOrderDetail where ProductID BETWEEN 773 and 800 ;-- productıd 773 ile 800 arasında olanları getirir.
select*from Sales.SalesOrderDetail where ProductID!=773  ;--773TEN farklı olanları getirir

select*from Sales.SalesOrderDetail where SalesOrderDetailID BETWEEN 3 and 8 order by OrderQty  ;
-- salesorderıd 2.kolonu 3-8 arasında olanları orderqty kolonuna göre büyükten küçüðe doðru sıralan komut

select   distinct ModifiedDate from Sales.SalesOrderDetail;--tarihleri getirir tekrarı engelleyerek

select*from Sales.SalesOrderDetail where ModifiedDate='2011-06-27 00:00:00.000' ;
--ilk satırdaki tarihe eþit olanını bulan komut

select*from Sales.SalesOrderDetail where ModifiedDate>'2011-06-27 00:00:00.000'
--tarihin büyük olananını getiren komut

select UnitPrice,ProductID,OrderQty from Sales.SalesOrderDetail where (UnitPrice>3000 or ProductID>777 )and OrderQty>3; 
--unitprice 3000den büyük olan veya productıd 777den büyük olanını getir ve OrderQty 3 ten büyük olanını verir.

select UnitPrice,ProductID,OrderQty from Sales.SalesOrderDetail where (UnitPrice>3000 or ProductID in (777,778,779) )and OrderQty>3 order by ProductID desc; 
--unitprice 3000den büyük olan veya productıd 777-778-779 eþit olanını getirir ve OrderQty 3 ten büyük olanını verir.

select * from Sales.SalesOrderDetail where CarrierTrackingNumber like '%b';
--içinde b olanları getirir.

select * from Sales.SalesOrderDetail where CarrierTrackingNumber like '%b%';
--ikinci harfi a olan 

select * from Sales.SalesOrderDetail where CarrierTrackingNumber like '%b%' or '%d%';
--içinde b veya d olan  

select * from Sales.SalesOrderDetail where CarrierTrackingNumber like '[BD]%';
--ilk harfi b olan veya d olan















