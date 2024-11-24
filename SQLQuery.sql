select * from Production.Product  /*Production.Product dosyasýndaki Hepsini seç*/
select ProductID,ProductNumber From Production.Product /*seçili 2 sütunu getir Hepsini seç*/
select DISTINCT /*Çoklayanlarý bulma*/ProductID ,ProductNumber From Production.Product  /*2 sütunu seç , onlarda çoklayýcýlarý (tekrar edenleri) bul (bunda çoklayýcý yok)*/
select  DISTINCT /*Çoklayanlarý bulma*/ TerritoryID from Sales.Customer                  /*seçili 1 sütundaki çoklayýcýyýlarý (tekrar edenleri) bul*/
select * from Sales.Customer Order By StoreID Asc /*StoreID küçükten büyüðe sýralama*/
select * from Sales.Customer Order By StoreID Desc /*StoreID büyükten küçüðe sýralama*/
select * from Sales.Customer Order By 3 Desc /*Sayý girince Sýradaki sütunlardan büyükten küçüðe sýralama*/
select * from Sales.Customer Order By StoreID , TerritoryID /*Biri büyükten ,diðeri küçükten itibâren sýralýyor*/
select * from Sales.Customer Order By StoreID Desc , TerritoryID ASC  /*Desc büyükten ,Ascküçükten itibâren sýralýyor*/
select CustomerID as Müþteri from Sales.Customer /*CustomerID adýný Müþteri olarak deðiþtirme*/

/*Matematiksel (Ýnteger) Ýþlemler*/

select OrderQty,UnitPrice, OrderQty*UnitPrice AS ToplamSatis from Sales.SalesOrderDetail /**/
select OrderQty,UnitPrice, ((OrderQty*UnitPrice+1000)*0.2) AS ToplamSatis from Sales.SalesOrderDetail /**1000 ile toplayýp %20 alma*/
 
 /*Metinsel (String) Ýþlemler*/

 select SalesOrderID, SalesOrderDetailID ,concat(SalesOrderID ,'-', SalesOrderDetailID) as Birleþtirme from Sales.SalesOrderDetail /*Ýlk iki sütunu birleþtirme ve ad koyma*/
 select * from Sales.SalesOrderDetail Where ProductID > 773 /*ProductID 773 den büyük olanlar*/
 select * from Sales.SalesOrderDetail Where ProductID between 772 and 773 /*ProductID 772 ile 773 arasý*/


 Derste yoktum.... (Turnuva)







select * From Sales.SalesOrderDetail Where CarrierTrackingNumber LIKE '[BD]%' /*Ýçinde B ya da D olanlar*/

 
