select distinct ProductID,ProductNumber from Production.Product; --tekrar� engeller distinct 
select * from Person.ContactType;
select distinct TerritoryID from Sales.Customer;select * from Sales.Customer order by StoreID ; --k���kten b�y��e s�ralar
select * from Sales.Customer order by StoreID desc ; --b�y�kten k����e s�ralar
select * from Sales.Customer order by 3 desc ; -- 3.sut�nu s�ralar /sut�na g�re s�ralar
select * from Sales.Customer order by StoreID,TerritoryID desc ;--birden fazla s�ralamaya g�re s�ralar
select * from Sales.Customer order by StoreID desc,TerritoryID asc; --birden fazla s�ralamaya g�re s�ralar store�d azalan territory�d artan
select * from Sales.Customer order by 3 desc,4 asc;--3.st�nu azalt�r ve 4. st�n� art�r�r.
select CustomerID as musteri from Sales.Customer;-- as -> ismi de�i�tirir.
select*from  Sales.SalesOrderDetail;--
select OrderQty*UnitPrice as toplamsat�� from Sales.SalesOrderDetail ;--st�nlar� �arpar orderqty unitprice �arpar
select (OrderQty*UnitPrice)+1000 as toplamsat�� from Sales.SalesOrderDetail ;--st�nlar� �arpar orderqty unitprice �arpar ve 1000 ekler

select ((OrderQty*UnitPrice)+1000)*0.2 as toplamsat�� from Sales.SalesOrderDetail ;
--st�nlar� �arpar orderqty unitprice �arpar ve 1000 ekler ve y�zde 20sini al�r.

select SalesOrderID,SalesOrderDetailID ,concat(SalesOrderID,'-',SalesOrderDetailID)  AS birle�tirme from  Sales.SalesOrderDetail;
 --salesorder�d ile salesorderdetail birle�tirir STR�NG H�CRE B�RLE�T�R�R.

select*from Sales.SalesOrderDetail where ProductID>773 ;-- product�d 773ten b�y�k olanlar� getirir
select*from Sales.SalesOrderDetail where ProductID=773 ;-- product�d 773e e�it olanlar� getirir
select*from Sales.SalesOrderDetail where ProductID BETWEEN 773 and 800 ;-- product�d 773 ile 800 aras�nda olanlar� getirir.
select*from Sales.SalesOrderDetail where ProductID!=773  ;--773TEN farkl� olanlar� getirir

select*from Sales.SalesOrderDetail where SalesOrderDetailID BETWEEN 3 and 8 order by OrderQty  ;
-- salesorder�d 2.kolonu 3-8 aras�nda olanlar� orderqty kolonuna g�re b�y�kten k����e do�ru s�ralan komut

select   distinct ModifiedDate from Sales.SalesOrderDetail;--tarihleri getirir tekrar� engelleyerek

select*from Sales.SalesOrderDetail where ModifiedDate='2011-06-27 00:00:00.000' ;
--ilk sat�rdaki tarihe e�it olan�n� bulan komut

select*from Sales.SalesOrderDetail where ModifiedDate>'2011-06-27 00:00:00.000'
--tarihin b�y�k olanan�n� getiren komut

select UnitPrice,ProductID,OrderQty from Sales.SalesOrderDetail where (UnitPrice>3000 or ProductID>777 )and OrderQty>3; 
--unitprice 3000den b�y�k olan veya product�d 777den b�y�k olan�n� getir ve OrderQty 3 ten b�y�k olan�n� verir.

select UnitPrice,ProductID,OrderQty from Sales.SalesOrderDetail where (UnitPrice>3000 or ProductID in (777,778,779) )and OrderQty>3 order by ProductID desc; 
--unitprice 3000den b�y�k olan veya product�d 777-778-779 e�it olan�n� getirir ve OrderQty 3 ten b�y�k olan�n� verir.

select * from Sales.SalesOrderDetail where CarrierTrackingNumber like '%b';
--i�inde b olanlar� getirir.

select * from Sales.SalesOrderDetail where CarrierTrackingNumber like '%b%';
--ikinci harfi a olan 

select * from Sales.SalesOrderDetail where CarrierTrackingNumber like '%b%' or '%d%';
--i�inde b veya d olan  

select * from Sales.SalesOrderDetail where CarrierTrackingNumber like '[BD]%';
--ilk harfi b olan veya d olan















