create database bigmart_data;

use bigmart_data;

create table bigmart(
-- id int primary key auto_increment, 
item_fat_content varchar(50),
item_identifier varchar(10),
item_type varchar(50),
outlet_establishment_year int,
outlet_identifier varchar(10),
outlet_location_type varchar(10),
outlet_size varchar(50),
outlet_type varchar(100),
item_visibility float,
item_weight float,
sales float,
rating float,
rating_category varchar(100),
outlet_age int,
sales_category varchar(100),
visibility_category varchar(100)
);

select * from bigmart;

-- Total Sales
select sum(sales) as Total_Sales from bigmart;

-- Average Rating
select avg(rating) as Average_Rating from bigmart;

-- Total Sales by Item
select item_type, sum(sales) as Total_Sales from bigmart
group by item_type
order by Total_Sales DESC;

-- Total Sales by Outlet Type
select outlet_type, sum(sales) as Total_Sales from bigmart
group by outlet_type
order by Total_Sales;

-- Total Sales by Fat Content
select item_fat_content, sum(sales) as Total_Sales from bigmart
group by item_fat_content;

-- Average Rating by Item Type
select item_type, avg(rating) as Average_Rating from bigmart
group by item_type
order by Average_Rating DESC;

-- Sales by Outlet Size
select outlet_size, sum(sales) as Total_Sales from bigmart
group by outlet_size
order by Total_Sales DESC;

-- Top 10 Highest Selling Products
select item_identifier, sales from bigmart
order by sales DESC limit 10;

-- Sales by Outlet Location Type
select outlet_location_type, sum(sales) as Total_Sales from bigmart
group by outlet_location_type
order by Total_Sales DESC;

-- Number of Products in Each Rating Category
select rating_category, count(*) as Product_Count from bigmart
group by rating_category;