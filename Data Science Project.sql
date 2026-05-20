SELECT *
FROM [Capstone SQL data set]

 
SELECT TOP 10 Dish_ordered,
MAX (price_of_dish_ordered) AS Topsellingfooditems
FROM [Capstone SQL data set]
GROUP BY  Dish_ordered 
ORDER BY MAX (price_of_dish_ordered)  DESC

SELECT TOP 10 Dish_ordered,
MIN (price_of_dish_ordered) AS Leastsellingfooditems
FROM [Capstone SQL data set]
GROUP BY  Dish_ordered 
ORDER BY MIN (price_of_dish_ordered)  ASC

SELECT Dish_ordered,
SUM (price_of_dish_ordered*Quantity) AS Total_Revenue
FROM [Capstone SQL data set]
GROUP BY Dish_ordered
ORDER BY Total_Revenue DESC

SELECT Dish_ordered,
MAX (price_of_dish_ordered) AS Highestsales
FROM [Capstone SQL data set]
GROUP BY Dish_ordered
ORDER BY Highestsales DESC

SELECT Dish_ordered,
MIN (price_of_dish_ordered) AS Lowestsales
FROM [Capstone SQL data set]
GROUP BY Dish_ordered
ORDER BY Lowestsales ASC

SELECT Dish_ordered,
AVG (Quantity) AS Avg_Quantity
FROM [Capstone SQL data set]
GROUP BY Dish_ordered
ORDER BY Avg_Quantity

SELECT Date_of_visit,
SUM (Quantity*Price_of_dish_ordered) AS DailyRevenue
FROM [Capstone SQL data set]
GROUP BY Date_of_visit
ORDER BY Date_of_visit 

SELECT MONTH (Date_of_visit) AS Month_visited,
SUM (Quantity*Price_of_dish_ordered) AS MonthlyRevenue
FROM [Capstone SQL data set]
GROUP BY MONTH (Date_of_visit)
ORDER BY MONTH (Date_of_visit)

SELECT DATENAME(WEEKDAY,Date_of_visit) AS weekday_visit,
SUM (Quantity*Price_of_dish_ordered) AS weekday_revenue
FROM [Capstone SQL data set]
GROUP BY DATENAME(WEEKDAY,Date_of_visit)
ORDER BY weekday_revenue DESC

SELECT TOP 1 MONTH (Date_of_visit) AS Month_visited,
SUM (Quantity*Price_of_dish_ordered) AS MonthlyRevenue
FROM [Capstone SQL data set]
GROUP BY MONTH (Date_of_visit)
ORDER BY MonthlyRevenue DESC

SELECT 
CASE  
WHEN DATENAME(WEEKDAY, Date_of_visit) IN ('Saturday', 'Sunday')
THEN 'Weekend'
ELSE 'Weekday'
END AS Sales_Period,
SUM(Quantity * Price_of_dish_ordered) AS Total_Revenue
FROM [Capstone SQL data set]
GROUP BY 
CASE 
WHEN DATENAME(WEEKDAY, Date_of_visit) IN ('Saturday', 'Sunday')
THEN 'Weekend'
ELSE 'Weekday'
END

SELECT Dish_ordered,
SUM (Quantity*Price_of_dish_ordered) AS DailyRevenue
FROM [Capstone SQL data set]
GROUP BY Dish_ordered
ORDER BY DailyRevenue DESC



















