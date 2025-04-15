SELECT TOP (1000) [Transaction_ID]
      ,[Date]
      ,[Product_Category]
      ,[Product_Name]
      ,[Units_Sold]
      ,[Unit_Price]
      ,[Total_Revenue]
      ,[Region]
      ,[Payment_Method]
  FROM [REDDI].[dbo].[SalesData1]


--1.Total Sales per country--
 select [Transaction_ID],sum([Units_Sold]
      *[Unit_Price]) as Totalsales from [REDDI].[dbo].[SalesData1]
	  group by [Transaction_ID]
	  order by Totalsales desc








--2.Total sales by Region--
SELECT [Region], SUM([Total_Revenue]) AS TotalSales
FROM [REDDI].[dbo].[SalesData1]
GROUP BY [Region]









--3.Top 5 Best-Selling Products--
SELECT TOP 5 Product_Name, SUM(Units_Sold) AS TotalUnitsSold
FROM [REDDI].[dbo].[SalesData1]
GROUP BY Product_Name
ORDER BY TotalUnitsSold DESC;






--4.Monthly Revenue Trend--
SELECT 
    FORMAT(Date, 'yyyy-MM') AS Month,
    SUM(Total_Revenue) AS MonthlyRevenue
FROM [REDDI].[dbo].[SalesData1]
GROUP BY FORMAT(Date, 'yyyy-MM')
ORDER BY Month;






--5.Sales by Payment Method--
SELECT Payment_Method, COUNT(*) AS NumberOfTransactions, SUM(Total_Revenue) AS TotalRevenue
FROM [REDDI].[dbo].[SalesData1]
GROUP BY Payment_Method;







--6.Average Revenue Per Transaction by Product Category--
SELECT Product_Category, AVG(Total_Revenue) AS AvgRevenuePerTransaction
FROM [REDDI].[dbo].[SalesData1]
GROUP BY Product_Category;





--7. Top 3 Regions by Total Sales--
SELECT TOP 3 Region, SUM(Total_Revenue) AS TotalSales
FROM [REDDI].[dbo].[SalesData1]
GROUP BY Region
ORDER BY TotalSales DESC;






--8.Daily Sales Summary--
SELECT Date, SUM(Units_Sold) AS TotalUnits, SUM(Total_Revenue) AS TotalRevenue
FROM [REDDI].[dbo].[SalesData1]
GROUP BY Date
ORDER BY Date;








--9.Products with Unit Price Over $500--
SELECT DISTINCT Product_Name, Unit_Price
FROM [REDDI].[dbo].[SalesData1]
WHERE Unit_Price > 500
ORDER BY Unit_Price DESC;








--10.Most Popular Payment Method by Region--
SELECT Region, Payment_Method, COUNT(*) AS MethodUsage
FROM[REDDI].[dbo].[SalesData1]
GROUP BY Region, Payment_Method
ORDER BY Region, MethodUsage DESC;






--11.Products Sold More Than 5 Times Total--
SELECT Product_Name, SUM(Units_Sold) AS TotalUnitsSold
FROM [REDDI].[dbo].[SalesData1]
GROUP BY Product_Name
HAVING SUM(Units_Sold) > 5
ORDER BY TotalUnitsSold DESC;



