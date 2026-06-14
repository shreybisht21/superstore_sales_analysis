use superstore_db;
select * from sample_superstore
limit 10;

 /* 1. Total sales*/
select sum(sales) as total_sales
from sample_superstore;

/* 2. Total profit*/
select sum(profit) as total_profit
from sample_superstore;

/* 3. Sales by region*/
select region, sum(sales) as total_sales
from sample_superstore
group by region
order by total_sales desc;

/* 4. Profit by region*/
select region, sum(profit) as total_profit
from sample_superstore
group by region
order by total_profit desc

/* 5. Top 10 customers*/
select customer_name, sum(sales) as total_sales
from sample_superstore
group by customer_name
order by total_sales desc
limit 10;

/* 6. Top 10 products*/
select product_name, count(quantity) as qty_sold
from sample_superstore
group by product_name
order by qty_sold desc
limit 10;

/* 7. Sales by category*/
select category, sum(sales) as total_sales
from sample_superstore
group by category;

/* 8. Most profitable products*/
select product_name, sum(profit) as total_profit
from sample_superstore
group by product_name
order by total_profit desc
limit 5;

