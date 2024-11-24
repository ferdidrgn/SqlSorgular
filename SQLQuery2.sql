select * from Production.Product Where Color is NULL  /* Color Sütunu NULL olanlar ya da (color='null')*/
select * from Production.Product Where MakeFlag != 0 OR Color= 'Black' /* MakeFlag 0 dan farklý veya Color siyah olanlar */
select * from Production.Product Where MakeFlag != 0 or (Color= 'Black' and Color= 'Red') /* MakeFlag 0 dan farklý veya Color siyah ve kýrmýzý olanlar */
select * from Production.Product Where (ProductID >=3 and ProductID <=100) /* ProductID 3 le 100 eþit ve arasýnda olanlar olanlar (Between 3 And 1000) */
select Name, LEN(Name) from Production.Product /* Name sütunundaki karakter uzunluklarýný bul */
select Name, LEN(Name) from Production.Product ORDER BY LEN(Name) DESC/* Name sütunundaki karakter uzunluklarýný bul ve sýrala */
select top 1 Name, LEN(Name) from Production.Product ORDER BY LEN(Name) DESC /* Name sütunundaki karakter uzunluklarýný bul ve maximumunu bul*/
select top 5 Name, LEN(Name) from Production.Product ORDER BY LEN(Name) DESC /* Name sütunundaki karakter uzunluklarýný bul ve maximumun ilk 5 satrýný getir bul*/
select top 5 Name, LEN(Name) from Production.Product ORDER BY LEN(Name) ASC /* Name sütunundaki karakter uzunluklarýný bul ve minimumun ilk 5 satrýný getir bul*/
select top 5 Name From Production.Product WHERE Name LIKE '%.' /* Name sütunundaki sonu "." ile biten ilk 5 satýr*/
select top 5 Name From Production.Product WHERE Name LIKE '%11' /* Name sütunundaki sonu "11" ile biten ilk 5 satýr*/
select Name From Production.Product WHERE Name LIKE '%m%' /* Name sütununda içinde m geçenler*/
select AVG(Bonus)Avarage /*Kolon adý*/ From Sales.SalesPerson /* Bonus kolonunun ortalamasýný bulan ve yeni kolonda ad vererek oluþturan */
select TerritoryID, AVG(Bonus) Avarage From Sales.SalesPerson group by TerritoryID /* TerritoryID deki ayný deðerlerin ortalamasý*/
select TerritoryID, AVG(Bonus) Avarage From Sales.SalesPerson group by TerritoryID ORDER BY Avarage DESC /* TerritoryID deki ayný deðerlerin ortalamasý ve Büyükten küçüðe sýralama*/
select TerritoryID, AVG(Bonus) Avarage From Sales.SalesPerson group by TerritoryID having AVG(Bonus) > 5000 /* TerritoryID deki ayný deðerlerin ortalamasý ve 5000 den büyük olanlarý ya da (select TerritoryID, AVG(Bonus) Avarage From Sales.SalesPerson Where Bonus > 5000 group by TerritoryID)*/



