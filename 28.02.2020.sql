/* Basit �rnekler vard� ve yoktum. Like komutu, s�ralama falan */

select SUBSTRING(SalesOrderNumber,3,4) from Sales.SalesOrderHeader Where SUBSTRING(SalesOrderNumber,3,4)= 4520
select * from Sales.SalesOrderHeader Where SUBSTRING(SalesOrderNumber,3,4)= 4520
select SUBSTRING(SalesOrderNumber,4,4) from Sales.SalesOrderHeader /* Soldan 4 falan (��zemedim...)*/
select SalesOrderNumber , RIGHT(SalesOrderNumber,4) from Sales.SalesOrderHeader
select SalesOrderNumber , LEFT(SalesOrderNumber,4) from Sales.SalesOrderHeader
select LOWER(PurchaseOrderNumber) from Sales.SalesOrderHeader /*Harfleri k���k �ekilde yazd�rma*/
select distinct LOWER(PurchaseOrderNumber) from Sales.SalesOrderHeader Where PurchaseOrderNumber like LOWER('po%') /*Harfleri k���k �ekilde yazd�rma ve ba�� po ile ba�layan*/
select distinct LOWER(PurchaseOrderNumber) from Sales.SalesOrderHeader Where PurchaseOrderNumber like LOWER('%po%')/*Harfleri k���k �ekilde yazd�rma ve ba�� po ile ge�en*/
select distinct upper(PurchaseOrderNumber) from Sales.SalesOrderHeader Where PurchaseOrderNumber like LOWER('%po%') /*Harfleri b�y�tt�*/
select distinct upper(PurchaseOrderNumber) from Sales.SalesOrderHeader Where PurchaseOrderNumber like LOWER('%po%') order by UPPER(PurchaseOrderNumber) desc
select distinct LEN(OrderDate) from Sales.SalesOrderHeader /*Karakter Sayma*/
select distinct LEN(ltrim(OrderDate)) from Sales.SalesOrderHeader /*Karakter Sayma ve bo�luklar� kald�rma (ama date de bo�luk yokmu�!)*/
select  CONCAT(OrderDate, ' * ', DueDate) from Sales.SalesOrderHeader -- Birle�tirme, bir s�tunda yan yana yazd�rma
select REVERSE(SalesOrderNumber) from Sales.SalesOrderHeader --Tersten yazd�rma 
select ABS(SubTotal) from Sales.SalesOrderHeader --Mutlak De�er
select UPPER(LEFT(PurchaseOrderNumber,1))+ LOWER(substring(PurchaseOrderNumber,2,LEN(PurchaseOrderNumber))) from Sales.SalesOrderHeader --????
select ROUND(TotalDue,5) from Sales.SalesOrderHeader --???
select SUM(TotalDue) from Sales.SalesOrderHeader
select Avg(TotalDue) from Sales.SalesOrderHeader -- Ortalama
select MAX(TotalDue) from Sales.SalesOrderHeader --Maximum De�eri
select min(TotalDue) from Sales.SalesOrderHeader --Minimum De�eri
select COUNT (*) from Sales.SalesOrderHeader     -- S�tun ve sat�rlar� (t�m�n�) sayd�







