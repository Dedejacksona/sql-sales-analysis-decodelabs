-- 02_aggregations.sql
-- GROUP BY and aggregate functions: COUNT, SUM, AVG

--1. Total orders per referral source
SELECT ReferralSource, COUNT (*) AS Count
FROM orders
GROUP BY ReferralSource;

-- 2. Total orders, total revenue, and average revenue per referral source (descending order)
SELECT ReferralSource, COUNT (*) AS TotalOrders, SUM (TotalPrice) AS TotalRevenue, AVG (TotalPrice) AS AverageRevenue
FROM orders
GROUP BY ReferralSource
ORDER BY TotalRevenue DESC;

-- 3. Total orders, total revenue, and average revenue per referral source (ascending order)
SELECT ReferralSource, COUNT (*) AS TotalOrders, SUM (TotalPrice) AS TotalRevenue, AVG (TotalPrice) AS AverageRevenue
FROM orders
GROUP BY ReferralSource
ORDER BY TotalRevenue ASC;