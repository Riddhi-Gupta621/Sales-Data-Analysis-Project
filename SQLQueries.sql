--Select *
--from Onlineretail_Clean

-->   QUERY 1: TOP PRODUCTS BY REVENUE

--Select Top 10 Description, Round(sum(Quantity*Price),2) as TotalRevenue
--from Onlineretail_Clean
--group by Description
--order by TotalRevenue desc

---OR---

--Select Description, Round(sum(Quantity*Price),2) as TotalRevenue
--from Onlineretail_Clean
--group by Description
--order by TotalRevenue desc
--offset 10 rows fetch next 5 rows only

-----------------------------------------------------------------------------------------------------------------------------------------------------------
-->   QUERY 2: MONTHLY SALES TREND

--Select Datename(Month, Date) as Month,Year(Date) as Year, round(sum(Quantity*Price),2) as MonthlyRevenue 
--from Onlineretail_Clean
--group by Year(Date), Datename(Month, Date) 
--Order by MonthlyRevenue desc

---OR---

--Select Format(Date, 'yyyy-MM') as Month, round(sum(Quantity*Price),2) as MonthlyRevenue 
--from Onlineretail_Clean
--group by Format(Date, 'yyyy-MM')
--Order by Month

-----------------------------------------------------------------------------------------------------------------------------------------------------------

-->   QUERY 3: TOP CUSTOMERS

--Select Top 10 [Customer ID], round(sum(Quantity*Price),2) as TotalSpent
--from Onlineretail_Clean
--where [Customer ID]> 0
--Group by [Customer ID]
--Order by TotalSpent desc 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

-->   QUERY 4: REVENUE BY COUNTRY

--Select Country, round(sum(Quantity*Price),2) as  Revenue
--from Onlineretail_Clean
--group by Country
--order by Revenue desc

-----------------------------------------------------------------------------------------------------------------------------------------------------------

-->   QUERY 5: RETURN/CANCELLATION RATE

--Select  Description, Round(sum(case when Quantity<0 Then 1 else 0 end) /Count(*)* 100,2) as ReturnRate
--from online_retail_raw
--group by Description
--order by ReturnRate desc

-----------------------------------------------------------------------------------------------------------------------------------------------------------

-->   QUERY 6: AVERAGE ORDER VALUE

--Select round(sum(Quantity* Price)/Count(Distinct Invoice),2) as AverageOrderValue
--from Onlineretail_Clean

-----------------------------------------------------------------------------------------------------------------------------------------------------------


