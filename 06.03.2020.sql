--Replace komutuna bak Googleden
select year (GETDATE()) -- yýl tarih sistemin
select month (GETDATE()) -- ay tarihi sistemin
select DAY(GETDATE()) -- gün tarihi sistemin
select DatePart( day,GETDATE()-1)/7+1 -- bulunduðumuz ayýn kaçýncý haftasý tarihi sistemin 
select DatePart( week,GETDATE()-1)-1 -- Yýlda kaçýncý haftadayýz tarihi sistemin 
select DatePart( day,GETDATE()-1)/7+1 -- hafta tarihi sistemin 

/* --hepsinin içinde de ayrý kodlar internet sitesinde: https://www.muratoner.net/sql/sql-datetime-fonksiyonlarinin-kullanimi
GETDATE()	Sistemin o anki tarih ve saatini verir. Ayrýca sistemin o anki tarih ve saatini CURRENT_TIMESTAMP ilede alabilirsiniz. GETDATE() fonksiyonu sybase’den devranýlan ve SQL Server’a özgü bir fonksiyondur ama CURRENT_TIMESTAMP ANSI SQL standardýdýr sql server içerisinde rahatlýkla ikisinide kullanabilirsiniz.
2	DATEDIFF()	Ýki tarih arasýndaki farký gösterir 
3	DATEADD()	Parametre olarak geçeceðimiz tarih’e gün, ay, yýl eklemek için kullanýrýz.
4	DATEPART()	Parametre olarak geçtiðimiz tarihin sadece gün, ay, yýl þeklinde parçalayýp alabiliriz.
5	CONVERT()	Tarih ve saat veri türlerini farklý formatlarda göstermek için kullanabiliriz.
6	DAY()	Parametre olarak geçtiðimiz tarihin gün kýsmýný verir.
7	MONTH()	Parametre olarak geçtiðimiz tarihin ay kýsmýný verir.
8	YEAR()	Parametre olarak geçtiðimiz tarihin yýl kýsmýný verir.  */

select DATENAME(MONTH,GETDATE()) 'Ayýn Adý'--Bulunduðumuz Ayýn Adý
set language Turkish select Datename(month,Getdate()) as 'Ay'-- Ay adýný Türkçe bulan kod
select DATEPART(DAY,getdate()) --Ayýn kaçýncý günü olduðu -- select day(getdate()) de oluyor
/*Önemli*/
set language Turkish select Datename(WEEKDAY,Getdate()) as 'Gün'-- Gün adýný Türkçe bulan kod  -- Günün adýný bulan kod 
select getdate()+3  -- bugüne 3 ekle ve tarihi komple yazma saatli (09/03/2020 : 10:09)
select CONVERT(date,SYSDATETIME())  -- bugüne 3 ekle ve tarihi komple yazma saatsiz (09/03/2020)
select format(getdate(),'dd-mm-yyyy') -- tarihi komple yazma saatsiz (06/03/2020)
select DATEDIFF(DAY,'2020/01/01','2020/03/6') -- 1 Ocaktan bugüne kadar gün farký
select DATEDIFF(month,'2020/01/01','2020/03/6') -- 1 Ocaktan bugüne kadar ay farký
select DATEDIFF(week,'2020/01/01','2020/03/6') -- 1 Ocaktan bugüne kadar hafta farký

select TerritoryID,count(SalesOrderID) from Sales.SalesOrderHeader Group By TerritoryID Having count(SalesOrderID)>4000 Order by count(SalesOrderID) desc -- TerritoryID ye göre kaç tane ürün satýlmýþ ve satýþa göre hizala (grupla) ve 4000 den büyükleri göster (HAVING deyimi, WHERE anahtar sözcüðü toplama iþlevleriyle kullanýlamadýðýndan SQL'e eklendi.)
/* Önemli*/
select TerritoryID, max(SubTotal) as 'Maksimum',MIN(SubTotal)'Minimum' from Sales.SalesOrderHeader Group by TerritoryID --TerritoryID e göre Subtotal maximum ve Subtotal minimum larý getirme
select territoryID,OnlineOrderFlag, MAX(SubTotal) as 'Max', MIN(SubTotal) as 'Min' From Sales.SalesOrderHeader Group by TerritoryID,OnlineOrderFlag Order By OnlineOrderFlag desc --  1 den fazla gruplama 2 sütun adýný göster ve onlarý sýrala, artýmax min bul 


