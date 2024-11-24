select * from Sales.Customer Where rowguid LIKE '__A%' /* 3. sü A olan*/
select * from Sales.Customer Where rowguid LIKE '%A'   /* Sonu A olan*/
select  PersonID , TerritoryID from Sales.Customer     /*PersonID ve TerritoryID*/
select * from Sales.CreditCard Where ExpYear ='2006'   /*ExpYear'daki 2006 olanlarý getir*/
select * from Sales.CreditCard Where ExpYear ='2006' OR ExpYear ='2007'   /*ExpYear'daki 2006 arasýndakileri 2007 olanlarý getir*/ /*BETWEEN komutuna bak. Aþaðýda var*/
select * from Sales.CreditCard Where CardType Like '___t%' AND ExpYear ='2006' /*CardType 4. harfi T ve * Yýl 2006*/
select * from Sales.CreditCard Where ExpMonth >11 /*Ay 11 den büyük*/
select * from Sales.CreditCard Where Not ExpMonth = 11 /*11 e eþit olamayan*/ /*ExMonth !=11*/
select * from Sales.CreditCard Where (CreditCardID Between 10 And 15 )OR ExpYear >2007 /*CrediCardID 10-15 arasý ya da yýl 2007 den büyük olanlar*/
Select Distinct CardType from Sales.CreditCard  /* KART TÝPLERÝNÝ TEK OLARAK GETÝREN SORGU*/ 
Select * from Sales.CreditCard Where CardType IN ('Vista', 'SuperiorCard')   /* IN ORNEÐÝ */
SELECT * FROM Sales.CreditCard WHERE CardType NOT IN ('Vista','SuperiorCard')/* NOT IN ORNEÐÝ */


