Select *
From [Data analysis project].dbo.online_retail

--> Breaking out InvoiceDate column

--Select InvoiceDate
--from [Data analysis project].dbo.online_retail

--Select
--CONVERT(date, InvoiceDate) As Date
--from [Data analysis project].dbo.online_retail

--Alter table online_retail
--Add Date DATE;

--Update online_retail
--Set Date= Cast(InvoiceDate AS DATE)

--select Description ,Count(description)
--from online_retail
--group by Description


--Update online_retail
--set Description= Concat (
--    Upper(Left(Description,1)),
--	 Lower(Substring(Description,2,Len(Description)))
--	 ) 

--Select *
--From online_retail
--where Invoice is null

--Delete 
--from online_retail
--where Invoice is null
--or Description is null
--or StockCode is null
--or Quantity is null
--or Price is null

--Update online_retail
--set [Customer ID]= ' '
--where [Customer ID] is null

--Alter table dbo.online_retail
--Add ID BIGINT IDENTITY(1,1);

--alter table dbo.online_retail
--Add Constraint pk_online_retail_ID
--PRIMARY KEY (ID);


--select min(id)
--from online_retail
--group by Invoice, Price, StockCode, Description, Quantity, InvoiceDate, [Customer ID], Country, Date


--select Invoice, StockCode,Description, Quantity,InvoiceDate, Price,[Customer ID], Country, Date,
--count(*) as DuplicateCount
--from online_retail
--group by Invoice, StockCode,Description, Quantity,InvoiceDate, Price,[Customer ID], Country, Date
--having count(*)>1;
   

--Select count(*)-Count(Distinct Concat(Invoice,'|', StockCode,'|',Description,'|', Quantity,'|',InvoiceDate,'|', Price,'|',[Customer ID],'|', Country,'|', Date
--)) as TotalDuplicateRows
--from online_retail;

--with cte as (
--Select *,
--    ROW_NUMBER() over (
--           Partition by Invoice, StockCode,Description, Quantity,InvoiceDate, Price,[Customer ID], Country, Date
--		   order by Invoice
--		   ) as rn
--		   from online_retail
--		   )
--	DELETE
--	from cte
--	where rn>1;


--select *
--/from online_retail
--where Quantity<0
--and Price>0;
