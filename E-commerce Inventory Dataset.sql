-- drop table if exists ecommerce;

-- create table ecommerce (
-- sku_id SERIAL primary key, 
-- category varchar(120), 
-- name Varchar(150) not null, 
-- mrp numeric(8,2), 
-- discountPercent numeric(5,2), 
-- availableQuantity integer, 
-- discountedSellingPrice numeric (8,2), 
-- weightInGms integer, 
-- outOfStock boolean, 
-- quantity Integer
-- );

--Data Exploration

--Count of Rows
SELECT count(*) from ecommerce;

--sample DATA
SELECT * FROM ecommerce
LIMIT(10);

--NULL VALUE
SELECT * FROM ecommerce
WHERE name IS NULL
or
category IS NULL
or
mrp IS NULL
or
discountpercent IS NULL
or
availablequantity IS NULL
or
discountedsellingprice IS NULL
or
weightingms IS NULL
or
outofstock IS NULL
or 
quantity IS NULL;
--There are no Null VALUES

--different product categories
SELECT DISTINCT category from ecommerce
order by category ASC;

SELECT count(distinct category) from ecommerce;

--count of products in stock or out stock
SELECT outofstock, count(sku_id)
from ecommerce
group by outofstock;

--product names present multiple times
select name as "Name", count(sku_id) as "Number of SKUs"
from ecommerce
group by name
having count (sku_id) > 1
order by count(sku_id) DESC;

--Data cleaning
--products with price is 0 or negative
SELECT * from ecommerce
where mrp <= 0
or 
discountedsellingprice <= 0;

-- delete the product with 0 MPP or selling price. 
-- DELETE from ecommerce
-- where mrp = 0; 

--mrp and selling price are in paise, so need to convert to rupees. 
-- UPDATE ecommerce 
-- set mrp = mrp /100.0, 
-- discountedsellingprice = discountedsellingprice/100.0;

SELECT * from ecommerce
limit (10);

--Business insights
--Q1. What are the top 10 best-value products based on the discout percentage. 
SELECT distinct name as "Name", mrp as "mrp", discountpercent from ecommerce
order by discountpercent DESC
LIMIT(10);

--Q2. What are the products with the high MRP but out of stock? 
SELECT distinct name, mrp, outofstock from ecommerce
where outofstock = TRUE
order by mrp DESC
LIMIT(10);

--Q3. Calculate estimated revenue for each category. 
SELECT category, sum(discountedsellingprice * availablequantity) as "Revenue" from ecommerce
GROUP by category
order by sum(discountedsellingprice * availablequantity);

--Q4. Find all products where MRP is greater than 500 and discount is less than 10%. 
SELECT distinct name, mrp, discountpercent from ecommerce
where mrp > 500 and discountpercent < 10
order by mrp DESC;

--Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT category, round(avg(discountpercent),2) from ecommerce
GROUP by category
order by avg(discountpercent) DESC
limit(5);

--Q6. Find the price per gram for products above 100g and sort by best value.
select distinct name, round(discountedsellingprice/weightingms,2) as Price_per_Gram from ecommerce
where weightingms >= 100
order by Price_per_Gram;

--Q7. Group the products into categories like low (less than 1000), mediam (in between 1000 to 4999), bulk (greater than or equal to 5000). 
SELECT distinct name, weightingms, 
case when weightingms < 1000 then 'Low'
	when weightingms < 5000 then 'Medium'
	else 'Bulk'
	end as weight_Category
from ecommerce;

--Q8. What is the total inventory weight per category?
SELECT category, round(sum(weightingms * availablequantity),2) as total_quantity from ecommerce
group by category
order by total_quantity;








