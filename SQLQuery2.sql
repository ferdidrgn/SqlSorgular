select * from Production.Product Where Color is NULL  /* Color S�tunu NULL olanlar ya da (color='null')*/
select * from Production.Product Where MakeFlag != 0 OR Color= 'Black' /* MakeFlag 0 dan farkl� veya Color siyah olanlar */
select * from Production.Product Where MakeFlag != 0 or (Color= 'Black' and Color= 'Red') /* MakeFlag 0 dan farkl� veya Color siyah ve k�rm�z� olanlar */
select * from Production.Product Where (ProductID >=3 and ProductID <=100) /* ProductID 3 le 100 e�it ve aras�nda olanlar olanlar (Between 3 And 1000) */
select Name, LEN(Name) from Production.Product /* Name s�tunundaki karakter uzunluklar�n� bul */
select Name, LEN(Name) from Production.Product ORDER BY LEN(Name) DESC/* Name s�tunundaki karakter uzunluklar�n� bul ve s�rala */
select top 1 Name, LEN(Name) from Production.Product ORDER BY LEN(Name) DESC /* Name s�tunundaki karakter uzunluklar�n� bul ve maximumunu bul*/
select top 5 Name, LEN(Name) from Production.Product ORDER BY LEN(Name) DESC /* Name s�tunundaki karakter uzunluklar�n� bul ve maximumun ilk 5 satr�n� getir bul*/
select top 5 Name, LEN(Name) from Production.Product ORDER BY LEN(Name) ASC /* Name s�tunundaki karakter uzunluklar�n� bul ve minimumun ilk 5 satr�n� getir bul*/
select top 5 Name From Production.Product WHERE Name LIKE '%.' /* Name s�tunundaki sonu "." ile biten ilk 5 sat�r*/
select top 5 Name From Production.Product WHERE Name LIKE '%11' /* Name s�tunundaki sonu "11" ile biten ilk 5 sat�r*/
select Name From Production.Product WHERE Name LIKE '%m%' /* Name s�tununda i�inde m ge�enler*/
select AVG(Bonus)Avarage /*Kolon ad�*/ From Sales.SalesPerson /* Bonus kolonunun ortalamas�n� bulan ve yeni kolonda ad vererek olu�turan */
select TerritoryID, AVG(Bonus) Avarage From Sales.SalesPerson group by TerritoryID /* TerritoryID deki ayn� de�erlerin ortalamas�*/
select TerritoryID, AVG(Bonus) Avarage From Sales.SalesPerson group by TerritoryID ORDER BY Avarage DESC /* TerritoryID deki ayn� de�erlerin ortalamas� ve B�y�kten k����e s�ralama*/
select TerritoryID, AVG(Bonus) Avarage From Sales.SalesPerson group by TerritoryID having AVG(Bonus) > 5000 /* TerritoryID deki ayn� de�erlerin ortalamas� ve 5000 den b�y�k olanlar� ya da (select TerritoryID, AVG(Bonus) Avarage From Sales.SalesPerson Where Bonus > 5000 group by TerritoryID)*/



