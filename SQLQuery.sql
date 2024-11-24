select * from Production.Product  /*Production.Product dosyas�ndaki Hepsini se�*/
select ProductID,ProductNumber From Production.Product /*se�ili 2 s�tunu getir Hepsini se�*/
select DISTINCT /*�oklayanlar� bulma*/ProductID ,ProductNumber From Production.Product  /*2 s�tunu se� , onlarda �oklay�c�lar� (tekrar edenleri) bul (bunda �oklay�c� yok)*/
select  DISTINCT /*�oklayanlar� bulma*/ TerritoryID from Sales.Customer                  /*se�ili 1 s�tundaki �oklay�c�y�lar� (tekrar edenleri) bul*/
select * from Sales.Customer Order By StoreID Asc /*StoreID k���kten b�y��e s�ralama*/
select * from Sales.Customer Order By StoreID Desc /*StoreID b�y�kten k����e s�ralama*/
select * from Sales.Customer Order By 3 Desc /*Say� girince S�radaki s�tunlardan b�y�kten k����e s�ralama*/
select * from Sales.Customer Order By StoreID , TerritoryID /*Biri b�y�kten ,di�eri k���kten itib�ren s�ral�yor*/
select * from Sales.Customer Order By StoreID Desc , TerritoryID ASC  /*Desc b�y�kten ,Asck���kten itib�ren s�ral�yor*/
select CustomerID as M��teri from Sales.Customer /*CustomerID ad�n� M��teri olarak de�i�tirme*/

/*Matematiksel (�nteger) ��lemler*/

select OrderQty,UnitPrice, OrderQty*UnitPrice AS ToplamSatis from Sales.SalesOrderDetail /**/
select OrderQty,UnitPrice, ((OrderQty*UnitPrice+1000)*0.2) AS ToplamSatis from Sales.SalesOrderDetail /**1000 ile toplay�p %20 alma*/
 
 /*Metinsel (String) ��lemler*/

 select SalesOrderID, SalesOrderDetailID ,concat(SalesOrderID ,'-', SalesOrderDetailID) as Birle�tirme from Sales.SalesOrderDetail /*�lk iki s�tunu birle�tirme ve ad koyma*/
 select * from Sales.SalesOrderDetail Where ProductID > 773 /*ProductID 773 den b�y�k olanlar*/
 select * from Sales.SalesOrderDetail Where ProductID between 772 and 773 /*ProductID 772 ile 773 aras�*/


 Derste yoktum.... (Turnuva)







select * From Sales.SalesOrderDetail Where CarrierTrackingNumber LIKE '[BD]%' /*��inde B ya da D olanlar*/

 
