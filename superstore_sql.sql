-- Superstore SQL Analysis
-- By Vachara-Armat

-- 1. Revenue by Category
SELECT 
  category,
  ROUND(SUM(sales), 0) AS Total_Revenue,
  ROUND(SUM(profit), 0) AS Total_Profit,
  ROUND(SUM(profit) / SUM(sales) * 100, 1) AS Profit_Margin_Pct
FROM SampleSuperstore
GROUP BY category
ORDER BY Total_Revenue DESC;

-- 2. Sub-category ที่ขาดทุน
SELECT 
  sub_category,
  ROUND(SUM(sales), 0) AS Revenue,
  ROUND(SUM(profit), 0) AS Profit
FROM SampleSuperstore
GROUP BY sub_category
HAVING SUM(profit) < 0
ORDER BY Profit ASC;

-- 3. Discount vs Profit
SELECT 
  CASE 
    WHEN discount = 0 THEN 'No discount'
    WHEN discount <= 0.2 THEN '1-20%'
    WHEN discount <= 0.4 THEN '21-40%'
    ELSE 'Over 40%'
  END AS Discount_Range,
  COUNT(*) AS Orders,
  ROUND(SUM(profit), 0) AS Total_Profit
FROM SampleSuperstore
GROUP BY Discount_Range
ORDER BY Total_Profit ASC;
