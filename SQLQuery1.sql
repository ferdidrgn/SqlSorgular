select * from Sales.Customer Where rowguid LIKE '__A%' /* 3. s� A olan*/
select * from Sales.Customer Where rowguid LIKE '%A'   /* Sonu A olan*/
select  PersonID , TerritoryID from Sales.Customer     /*PersonID ve TerritoryID*/
select * from Sales.CreditCard Where ExpYear ='2006'   /*ExpYear'daki 2006 olanlar� getir*/
select * from Sales.CreditCard Where ExpYear ='2006' OR ExpYear ='2007'   /*ExpYear'daki 2006 aras�ndakileri 2007 olanlar� getir*/ /*BETWEEN komutuna bak. A�a��da var*/
select * from Sales.CreditCard Where CardType Like '___t%' AND ExpYear ='2006' /*CardType 4. harfi T ve * Y�l 2006*/
select * from Sales.CreditCard Where ExpMonth >11 /*Ay 11 den b�y�k*/
select * from Sales.CreditCard Where Not ExpMonth = 11 /*11 e e�it olamayan*/ /*ExMonth !=11*/
select * from Sales.CreditCard Where (CreditCardID Between 10 And 15 )OR ExpYear >2007 /*CrediCardID 10-15 aras� ya da y�l 2007 den b�y�k olanlar*/
Select Distinct CardType from Sales.CreditCard  /* KART T�PLER�N� TEK OLARAK GET�REN SORGU*/ 
Select * from Sales.CreditCard Where CardType IN ('Vista', 'SuperiorCard')   /* IN ORNE�� */
SELECT * FROM Sales.CreditCard WHERE CardType NOT IN ('Vista','SuperiorCard')/* NOT IN ORNE�� */


