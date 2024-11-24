--Replace komutuna bak Googleden
select year (GETDATE()) -- y�l tarih sistemin
select month (GETDATE()) -- ay tarihi sistemin
select DAY(GETDATE()) -- g�n tarihi sistemin
select DatePart( day,GETDATE()-1)/7+1 -- bulundu�umuz ay�n ka��nc� haftas� tarihi sistemin 
select DatePart( week,GETDATE()-1)-1 -- Y�lda ka��nc� haftaday�z tarihi sistemin 
select DatePart( day,GETDATE()-1)/7+1 -- hafta tarihi sistemin 

/* --hepsinin i�inde de ayr� kodlar internet sitesinde: https://www.muratoner.net/sql/sql-datetime-fonksiyonlarinin-kullanimi
GETDATE()	Sistemin o anki tarih ve saatini verir. Ayr�ca sistemin o anki tarih ve saatini CURRENT_TIMESTAMP ilede alabilirsiniz. GETDATE() fonksiyonu sybase�den devran�lan ve SQL Server�a �zg� bir fonksiyondur ama CURRENT_TIMESTAMP ANSI SQL standard�d�r sql server i�erisinde rahatl�kla ikisinide kullanabilirsiniz.
2	DATEDIFF()	�ki tarih aras�ndaki fark� g�sterir 
3	DATEADD()	Parametre olarak ge�ece�imiz tarih�e g�n, ay, y�l eklemek i�in kullan�r�z.
4	DATEPART()	Parametre olarak ge�ti�imiz tarihin sadece g�n, ay, y�l �eklinde par�alay�p alabiliriz.
5	CONVERT()	Tarih ve saat veri t�rlerini farkl� formatlarda g�stermek i�in kullanabiliriz.
6	DAY()	Parametre olarak ge�ti�imiz tarihin g�n k�sm�n� verir.
7	MONTH()	Parametre olarak ge�ti�imiz tarihin ay k�sm�n� verir.
8	YEAR()	Parametre olarak ge�ti�imiz tarihin y�l k�sm�n� verir.  */

select DATENAME(MONTH,GETDATE()) 'Ay�n Ad�'--Bulundu�umuz Ay�n Ad�
set language Turkish select Datename(month,Getdate()) as 'Ay'-- Ay ad�n� T�rk�e bulan kod
select DATEPART(DAY,getdate()) --Ay�n ka��nc� g�n� oldu�u -- select day(getdate()) de oluyor
/*�nemli*/
set language Turkish select Datename(WEEKDAY,Getdate()) as 'G�n'-- G�n ad�n� T�rk�e bulan kod  -- G�n�n ad�n� bulan kod 
select getdate()+3  -- bug�ne 3 ekle ve tarihi komple yazma saatli (09/03/2020 : 10:09)
select CONVERT(date,SYSDATETIME())  -- bug�ne 3 ekle ve tarihi komple yazma saatsiz (09/03/2020)
select format(getdate(),'dd-mm-yyyy') -- tarihi komple yazma saatsiz (06/03/2020)
select DATEDIFF(DAY,'2020/01/01','2020/03/6') -- 1 Ocaktan bug�ne kadar g�n fark�
select DATEDIFF(month,'2020/01/01','2020/03/6') -- 1 Ocaktan bug�ne kadar ay fark�
select DATEDIFF(week,'2020/01/01','2020/03/6') -- 1 Ocaktan bug�ne kadar hafta fark�

select TerritoryID,count(SalesOrderID) from Sales.SalesOrderHeader Group By TerritoryID Having count(SalesOrderID)>4000 Order by count(SalesOrderID) desc -- TerritoryID ye g�re ka� tane �r�n sat�lm�� ve sat��a g�re hizala (grupla) ve 4000 den b�y�kleri g�ster (HAVING deyimi, WHERE anahtar s�zc��� toplama i�levleriyle kullan�lamad���ndan SQL'e eklendi.)
/* �nemli*/
select TerritoryID, max(SubTotal) as 'Maksimum',MIN(SubTotal)'Minimum' from Sales.SalesOrderHeader Group by TerritoryID --TerritoryID e g�re Subtotal maximum ve Subtotal minimum lar� getirme
select territoryID,OnlineOrderFlag, MAX(SubTotal) as 'Max', MIN(SubTotal) as 'Min' From Sales.SalesOrderHeader Group by TerritoryID,OnlineOrderFlag Order By OnlineOrderFlag desc --  1 den fazla gruplama 2 s�tun ad�n� g�ster ve onlar� s�rala, art�max min bul 


