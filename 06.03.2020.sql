select year (GETDATE()) -- yıl tarih sistemin
select month (GETDATE()) -- ay tarihi sistemin
select DAY(GETDATE()) -- gün tarihi sistemin
select DatePart( day,GETDATE()-1)/7+1 -- bulunduğumuz ayın kaçıncı haftası tarihi sistemin 
select DatePart( week,GETDATE()-1)-1 -- Yılda kaçıncı haftadayız tarihi sistemin 
select DatePart( day,GETDATE()-1)/7+1 -- hafta tarihi sistemin 

/* --hepsinin içinde de ayrı kodlar internet sitesinde: https://www.muratoner.net/sql/sql-datetime-fonksiyonlarinin-kullanimi
GETDATE()	Sistemin o anki tarih ve saatini verir. Ayrıca sistemin o anki tarih ve saatini CURRENT_TIMESTAMP ilede alabilirsiniz. GETDATE() fonksiyonu sybase’den devranılan ve SQL Server’a özgü bir fonksiyondur ama CURRENT_TIMESTAMP ANSI SQL standardıdır sql server içerisinde rahatlıkla ikisinide kullanabilirsiniz.
2	DATEDIFF()	İki tarih arasındaki farkı gösterir 
3	DATEADD()	Parametre olarak geçeceğimiz tarih’e gün, ay, yıl eklemek için kullanırız.
4	DATEPART()	Parametre olarak geçtiğimiz tarihin sadece gün, ay, yıl şeklinde parçalayıp alabiliriz.
5	CONVERT()	Tarih ve saat veri türlerini farklı formatlarda göstermek için kullanabiliriz.
6	DAY()	Parametre olarak geçtiğimiz tarihin gün kısmını verir.
7	MONTH()	Parametre olarak geçtiğimiz tarihin ay kısmını verir.
8	YEAR()	Parametre olarak geçtiğimiz tarihin yıl kısmını verir.  */

select DATENAME(MONTH,GETDATE()) 'Ayın Adı'--Bulunduğumuz Ayın Adı
set language Turkish select Datename(month,Getdate()) as 'Ay'-- Ay adını Türkçe bulan kod
select DATEPART(DAY,getdate()) --Ayın kaçıncı günü olduğu -- select day(getdate()) de oluyor
/*Önemli*/
set language Turkish select Datename(WEEKDAY,Getdate()) as 'Gün'-- Gün adını Türkçe bulan kod  -- Günün adını bulan kod 
select getdate()+3  -- bugüne 3 ekle ve tarihi komple yazma saatli (09/03/2020 : 10:09)
select CONVERT(date,SYSDATETIME())  -- bugüne 3 ekle ve tarihi komple yazma saatsiz (09/03/2020)
select format(getdate(),'dd-mm-yyyy') -- tarihi komple yazma saatsiz (06/03/2020)
select DATEDIFF(DAY,'2020/01/01','2020/03/6') -- 1 Ocaktan bugüne kadar gün farkı
select DATEDIFF(month,'2020/01/01','2020/03/6') -- 1 Ocaktan bugüne kadar ay farkı
select DATEDIFF(week,'2020/01/01','2020/03/6') -- 1 Ocaktan bugüne kadar hafta farkı

select TerritoryID,count(SalesOrderID) from Sales.SalesOrderHeader Group By TerritoryID Having count(SalesOrderID)>4000 Order by count(SalesOrderID) desc -- TerritoryID ye göre kaç tane ürün satılmış ve satışa göre hizala (grupla) ve 4000 den büyükleri göster (HAVING deyimi, WHERE anahtar sözcüğü toplama işlevleriyle kullanılamadığından SQL'e eklendi.)
/* Önemli*/
select TerritoryID, max(SubTotal) as 'Maksimum',MIN(SubTotal)'Minimum' from Sales.SalesOrderHeader Group by TerritoryID --TerritoryID e göre Subtotal maximum ve Subtotal minimum ları getirme
select territoryID,OnlineOrderFlag, MAX(SubTotal) as 'Max', MIN(SubTotal) as 'Min' From Sales.SalesOrderHeader Group by TerritoryID,OnlineOrderFlag Order By OnlineOrderFlag desc --  1 den fazla gruplama 2 sütun adını göster ve onları sırala, artımax min bul 


