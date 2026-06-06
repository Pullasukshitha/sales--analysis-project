create database sales_project;
use sales_project;
select* from sales_project;

-- counts total sales in the table 
SELECT COUNT(*) FROM sales_project;

-- calculates total sales generated from all sales transactions
select sum(sales) from sales_project;

--  calculates total profit generated from all sales transactions
select sum(profit) from sales_project;
show tables;

-- filters profits where profit is >than 1000
SELECT*FROM sales_project
WHERE PROFIT>1000;

-- sorts sales data by region in alphabetical order
select *FROM sales_project
ORDER BY REGION;

-- calculates the avg sales
SELECT AVG(PROFIT)
FROM sales_project;

-- calculates the minimum sales
SELECT MIN(PROFIT)
FROM sales_project;

-- calculates the maximum sales
SELECT MAX(PROFIT)
FROM sales_project;


-- calculates total sales for each region
select REGION, sum(SALES)
FROM sales_project
GROUP BY REGION;

-- groups sales by product caculates total sales for each project
select product,sum(sales)
FROM sales_project
group by product
order by sum(sales) desc;

-- groups sales by region and shows those region where total sales is greater than 2000
select region ,sum(sales)
from sales_project
group by region
having sum(sales)>2000;

-- caculates total sales for each product and limits the results upto 10
  select product,sum(sales)
  from sales_project
  group by product
  order by sum(sales) desc
  limit 10;
  
  -- used to clarify data into different catagories based on conditions
  SELECT PRODUCT,
CASE
    WHEN PROFIT > 1000 THEN 'High Profit'
    ELSE 'Low Profit'
END AS Profit_result
FROM sales_project;

-- returns unique regions
select distinct region
from sales_project;

-- gives sales between mentioned number
select* from sales project
where sales between 1000 and 5000;
  
  -- gives city that starts with that letter
  select*from sales_project
where city like 'P%';

-- shows city ending with that letter
select*from sales_project
where city like '%P';

-- used to alter table if wanted any changes
ALTER TABLE sales_project
CHANGE COLUMN `ï»¿Order_ID` Order_ID INT;


-- customers table
CREATE TABLE customers (
    Order_ID INT,
    Customer_Name VARCHAR(50),
    Customer_Type VARCHAR(20),
    Gender CHAR(1),
    Age INT,
    Join_Date DATE
    );
SELECT*FROM CUSTOMERS;

insert into customers 
(order_id, customer_name, customer_type, gender, age, join_date) values
(1001,'ravi','regular','m', 25, '2024-01-15'),
(1002,'sukshitha','premium','f', 22, '2023-11-10'),
(1003,'nichiketh','regular','m', 30, '2024-03-10'),
(1004,'sindhuja','premium','f', 27, '2022-08-05'),
(1005,'suhaas','premium','m', 20, '2026-03-12');

-- inner join analysis
-- returns only matching records from both tables based on common colum
SELECT
    s.`ï»¿Order_ID`,
    s.PRODUCT,
    s.SALES,
    c.Customer_Name,
    c.Customer_Type
FROM sales_project s
INNER JOIN customers c
ON s.`ï»¿Order_ID` = c.Order_ID;

-- left join
-- returns all records from the left table and matching records from the right table
SELECT
    s.`ï»¿Order_ID`,
    s.PRODUCT,
    c.Customer_Name
FROM sales_project s
LEFT JOIN customers c
ON s.`ï»¿Order_ID`= c.Order_ID;

-- right join
-- retrives all records from secondary table and matching data from main table 
SELECT
    s.`ï»¿Order_ID`,
    s.PRODUCT,
    c.Customer_Name,
    c.Customer_Type
FROM sales_project s
RIGHT JOIN customers c
ON s.`ï»¿Order_ID` = c.Order_ID;




  
 