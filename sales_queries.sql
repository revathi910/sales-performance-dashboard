-- ============================================================
-- Sales Performance Analysis – SQL Queries
-- Compatible with: MySQL / PostgreSQL / SQL Server
-- ============================================================

-- 1. Total Sales by Month
SELECT 
    YEAR(order_date)  AS year,
    MONTH(order_date) AS month,
    SUM(revenue)      AS total_sales,
    COUNT(*)          AS total_orders
FROM sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

-- 2. Top 10 Products by Revenue
SELECT 
    product_name,
    SUM(revenue)  AS total_revenue,
    SUM(profit)   AS total_profit,
    COUNT(*)      AS order_count,
    ROUND(SUM(profit)/SUM(revenue)*100, 2) AS profit_margin_pct
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 10;

-- 3. Regional Performance
SELECT 
    region,
    SUM(revenue)  AS total_revenue,
    SUM(profit)   AS total_profit,
    COUNT(*)      AS total_orders,
    ROUND(AVG(revenue), 2) AS avg_order_value
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

-- 4. Category Performance by Year
SELECT 
    YEAR(order_date) AS year,
    category,
    SUM(revenue)     AS total_revenue,
    SUM(profit)      AS total_profit
FROM sales
GROUP BY YEAR(order_date), category
ORDER BY year, total_revenue DESC;

-- 5. Revenue Drivers (Region x Category)
SELECT 
    region,
    category,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY region, category
ORDER BY region, total_revenue DESC;

-- 6. Discount Impact Analysis
SELECT 
    discount,
    COUNT(*)     AS orders,
    SUM(revenue) AS total_revenue,
    SUM(profit)  AS total_profit,
    ROUND(AVG(profit/revenue)*100, 2) AS avg_margin_pct
FROM sales
GROUP BY discount
ORDER BY discount;
