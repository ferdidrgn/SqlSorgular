select * from Production.Product  /*Production.Product dosyasındaki Hepsini seç*/
select ProductID,ProductNumber From Production.Product /*seçili 2 sütunu getir Hepsini seç*/
select DISTINCT /*Çoklayanları bulma*/ProductID ,ProductNumber From Production.Product  /*2 sütunu seç , onlarda çoklayıcıları (tekrar edenleri) bul (bunda çoklayıcı yok)*/
select  DISTINCT /*Çoklayanları bulma*/ TerritoryID from Sales.Customer                  /*seçili 1 sütundaki çoklayıcıyıları (tekrar edenleri) bul*/
select * from Sales.Customer Order By StoreID Asc /*StoreID küçükten büyüðe sıralama*/
select * from Sales.Customer Order By StoreID Desc /*StoreID büyükten küçüðe sıralama*/
select * from Sales.Customer Order By 3 Desc /*Sayı girince Sıradaki sütunlardan büyükten küçüðe sıralama*/
select * from Sales.Customer Order By StoreID , TerritoryID /*Biri büyükten ,diðeri küçükten itibâren sıralıyor*/
select * from Sales.Customer Order By StoreID Desc , TerritoryID ASC  /*Desc büyükten ,Ascküçükten itibâren sıralıyor*/
select CustomerID as Müþteri from Sales.Customer /*CustomerID adını Müþteri olarak deðiþtirme*/

/*Matematiksel (ınteger) ıþlemler*/

select OrderQty,UnitPrice, OrderQty*UnitPrice AS ToplamSatis from Sales.SalesOrderDetail /**/
select OrderQty,UnitPrice, ((OrderQty*UnitPrice+1000)*0.2) AS ToplamSatis from Sales.SalesOrderDetail /**1000 ile toplayıp %20 alma*/
 
 /*Metinsel (String) ıþlemler*/

 select SalesOrderID, SalesOrderDetailID ,concat(SalesOrderID ,'-', SalesOrderDetailID) as Birleþtirme from Sales.SalesOrderDetail /*ılk iki sütunu birleþtirme ve ad koyma*/
 select * from Sales.SalesOrderDetail Where ProductID > 773 /*ProductID 773 den büyük olanlar*/
 select * from Sales.SalesOrderDetail Where ProductID between 772 and 773 /*ProductID 772 ile 773 arası*/


 Derste yoktum...







select * From Sales.SalesOrderDetail Where CarrierTrackingNumber LIKE '[BD]%' /*ıçinde B ya da D olanlar*/

 
