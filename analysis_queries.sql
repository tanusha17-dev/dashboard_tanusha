-- Retail Sales Performance Analysis
-- Import data/retail_sales_sample.csv into a table named retail_sales.
-- SQL examples use ANSI-style syntax; adapt date functions to your database.

-- 1. Overall KPIs
SELECT ROUND(SUM(revenue),2) total_revenue,
       ROUND(SUM(estimated_cost),2) estimated_cost,
       ROUND(SUM(revenue-estimated_cost),2) estimated_gross_profit,
       ROUND(100.0*SUM(revenue-estimated_cost)/NULLIF(SUM(revenue),0),2) estimated_gross_margin_pct,
       COUNT(DISTINCT order_id) total_orders,
       COUNT(DISTINCT customer_id) unique_customers,
       ROUND(SUM(revenue)/NULLIF(COUNT(DISTINCT order_id),0),2) average_order_value
FROM retail_sales;

-- 2. Monthly trend (for DATE/TIMESTAMP column; adapt if stored as text)
SELECT EXTRACT(YEAR FROM order_date) sales_year,
       EXTRACT(MONTH FROM order_date) sales_month,
       ROUND(SUM(revenue),2) revenue,
       ROUND(SUM(revenue-estimated_cost),2) estimated_gross_profit
FROM retail_sales
GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY sales_year,sales_month;

-- 3. Category performance
SELECT category, ROUND(SUM(revenue),2) revenue,
       ROUND(SUM(revenue-estimated_cost),2) estimated_gross_profit,
       ROUND(100.0*SUM(revenue-estimated_cost)/NULLIF(SUM(revenue),0),2) margin_pct
FROM retail_sales GROUP BY category ORDER BY revenue DESC;

-- 4. Product ranking with a window function
SELECT product, SUM(revenue) revenue,
       DENSE_RANK() OVER (ORDER BY SUM(revenue) DESC) revenue_rank
FROM retail_sales GROUP BY product ORDER BY revenue_rank;

-- 5. Region and channel
SELECT region, sales_channel, COUNT(DISTINCT order_id) orders,
       ROUND(SUM(revenue),2) revenue
FROM retail_sales GROUP BY region,sales_channel ORDER BY revenue DESC;

-- 6. Validate calculated revenue (allowing rounding tolerance)
SELECT COUNT(*) revenue_mismatches
FROM retail_sales
WHERE ABS(revenue - quantity*unit_price*(1-discount_pct)) > 0.02;

-- 7. Find duplicate order IDs (in this generated data each row has a unique order ID)
SELECT order_id, COUNT(*) row_count
FROM retail_sales GROUP BY order_id HAVING COUNT(*) > 1;
