/* Basit Örnekler vardý ve yoktum. Like komutu, sýralama falan */

select SUBSTRING(SalesOrderNumber,3,4) from Sales.SalesOrderHeader Where SUBSTRING(SalesOrderNumber,3,4)= 4520
select * from Sales.SalesOrderHeader Where SUBSTRING(SalesOrderNumber,3,4)= 4520
select SUBSTRING(SalesOrderNumber,4,4) from Sales.SalesOrderHeader /* Soldan 4 falan (çözemedim...)*/
select SalesOrderNumber , RIGHT(SalesOrderNumber,4) from Sales.SalesOrderHeader
select SalesOrderNumber , LEFT(SalesOrderNumber,4) from Sales.SalesOrderHeader
select LOWER(PurchaseOrderNumber) from Sales.SalesOrderHeader /*Harfleri küçük þekilde yazdýrma*/
select distinct LOWER(PurchaseOrderNumber) from Sales.SalesOrderHeader Where PurchaseOrderNumber like LOWER('po%') /*Harfleri küçük þekilde yazdýrma ve baþý po ile baþlayan*/
select distinct LOWER(PurchaseOrderNumber) from Sales.SalesOrderHeader Where PurchaseOrderNumber like LOWER('%po%')/*Harfleri küçük þekilde yazdýrma ve baþý po ile geçen*/
select distinct upper(PurchaseOrderNumber) from Sales.SalesOrderHeader Where PurchaseOrderNumber like LOWER('%po%') /*Harfleri büyüttü*/
select distinct upper(PurchaseOrderNumber) from Sales.SalesOrderHeader Where PurchaseOrderNumber like LOWER('%po%') order by UPPER(PurchaseOrderNumber) desc
select distinct LEN(OrderDate) from Sales.SalesOrderHeader /*Karakter Sayma*/
select distinct LEN(ltrim(OrderDate)) from Sales.SalesOrderHeader /*Karakter Sayma ve boþluklarý kaldýrma (ama date de boþluk yokmuþ!)*/
select  CONCAT(OrderDate, ' * ', DueDate) from Sales.SalesOrderHeader -- Birleþtirme, bir sütunda yan yana yazdýrma
select REVERSE(SalesOrderNumber) from Sales.SalesOrderHeader --Tersten yazdýrma 
select ABS(SubTotal) from Sales.SalesOrderHeader --Mutlak Deðer
select UPPER(LEFT(PurchaseOrderNumber,1))+ LOWER(substring(PurchaseOrderNumber,2,LEN(PurchaseOrderNumber))) from Sales.SalesOrderHeader --????
select ROUND(TotalDue,5) from Sales.SalesOrderHeader --???
select SUM(TotalDue) from Sales.SalesOrderHeader
select Avg(TotalDue) from Sales.SalesOrderHeader -- Ortalama
select MAX(TotalDue) from Sales.SalesOrderHeader --Maximum Deðeri
select min(TotalDue) from Sales.SalesOrderHeader --Minimum Deðeri
select COUNT (*) from Sales.SalesOrderHeader     -- Sütun ve satýrlarý (tümünü) saydý







