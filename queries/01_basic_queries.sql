-- 01_basic_queries.sql
-- Basic SELECT, WHERE, and ORDER BY practice

-- 1. Select specific columns
SELECT OrderID, Product, Quantity, OrderStatus, ReferralSource, TotalPrice
FROM orders;

-- 2. Filter: show only delivered orders
SELECT *
FROM orders
WHERE OrderStatus = 'Delivered';

-- 3. Filter: high-value credit card orders
SELECT *
FROM orders
WHERE PaymentMethod = 'Credit Card' AND TotalPrice > 1000;

-- 4. Sort: highest orders first
SELECT OrderID, TotalPrice
FROM orders
ORDER BY TotalPrice DESC;

-- 5. Sort: lowest orders first
SELECT OrderID, TotalPrice
FROM orders
ORDER BY TotalPrice ASC;