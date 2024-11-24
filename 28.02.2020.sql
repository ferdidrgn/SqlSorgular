/* Basit Örnekler Like komutu, sıralama falan yetişemedim */

select SUBSTRING(SalesOrderNumber,3,4) from Sales.SalesOrderHeader Where SUBSTRING(SalesOrderNumber,3,4)= 4520
select * from Sales.SalesOrderHeader Where SUBSTRING(SalesOrderNumber,3,4)= 4520
select SUBSTRING(SalesOrderNumber,4,4) from Sales.SalesOrderHeader /* Soldan 4 falan (çözemedim...)*/
select SalesOrderNumber , RIGHT(SalesOrderNumber,4) from Sales.SalesOrderHeader
select SalesOrderNumber , LEFT(SalesOrderNumber,4) from Sales.SalesOrderHeader
select LOWER(PurchaseOrderNumber) from Sales.SalesOrderHeader /*Harfleri küçük şekilde yazdırma*/
select distinct LOWER(PurchaseOrderNumber) from Sales.SalesOrderHeader Where PurchaseOrderNumber like LOWER('po%') /*Harfleri küçük şekilde yazdırma ve başı po ile başlayan*/
select distinct LOWER(PurchaseOrderNumber) from Sales.SalesOrderHeader Where PurchaseOrderNumber like LOWER('%po%')/*Harfleri küçük şekilde yazdırma ve başı po ile geçen*/
select distinct upper(PurchaseOrderNumber) from Sales.SalesOrderHeader Where PurchaseOrderNumber like LOWER('%po%') /*Harfleri büyüttü*/
select distinct upper(PurchaseOrderNumber) from Sales.SalesOrderHeader Where PurchaseOrderNumber like LOWER('%po%') order by UPPER(PurchaseOrderNumber) desc
select distinct LEN(OrderDate) from Sales.SalesOrderHeader /*Karakter Sayma*/
select distinct LEN(ltrim(OrderDate)) from Sales.SalesOrderHeader /*Karakter Sayma ve boşlukları kaldırma (ama date de boşluk yokmuş!)*/
select  CONCAT(OrderDate, ' * ', DueDate) from Sales.SalesOrderHeader -- Birleştirme, bir sütunda yan yana yazdırma
select REVERSE(SalesOrderNumber) from Sales.SalesOrderHeader --Tersten yazdırma 
select ABS(SubTotal) from Sales.SalesOrderHeader --Mutlak Deðer
select UPPER(LEFT(PurchaseOrderNumber,1))+ LOWER(substring(PurchaseOrderNumber,2,LEN(PurchaseOrderNumber))) from Sales.SalesOrderHeader --????
select ROUND(TotalDue,5) from Sales.SalesOrderHeader --???
select SUM(TotalDue) from Sales.SalesOrderHeader
select Avg(TotalDue) from Sales.SalesOrderHeader -- Ortalama
select MAX(TotalDue) from Sales.SalesOrderHeader --Maximum Deðeri
select min(TotalDue) from Sales.SalesOrderHeader --Minimum Deðeri
select COUNT (*) from Sales.SalesOrderHeader     -- Sütun ve satırları (tümünü) saydı







