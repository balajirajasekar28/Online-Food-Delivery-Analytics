create database online_food_delivery_data;
use online_food_delivery_data;

create table customers
(
customer_id int primary key,
name varchar(100),
location varchar(100),
age int
);

create table restaurants
(
restaurant_id int primary key,
name varchar(100),
cuisine varchar(100),
rating int
);

create table orders
(
order_id int primary key,
customer_id int,
restaurant_id int,
order_date date,
delivery_time_min int,
order_amount float,
payment_mode varchar(100),
feedback varchar(100),
foreign key(customer_id) references customers(customer_id),
foreign key(restaurant_id) references restaurants(restaurant_id)
);

insert into customers values(100011,"balaji","srinivasapuram",27),
(10012,"kishore","srinivasapuram",22),
(10013,"rajasekar","srinivasapuram",59);

insert into restaurants values(001,"bananaleaf","karaikudi",4),
(002,"kms","chettinadu",5),
(003,"copperpot","indian",3);

insert into orders (order_id,customer_id,restaurant_id,order_date,delivery_time_min,order_amount,payment_mode,feedback) 
values 
(756661,100011,001,'2025-11-05',01,300.00,"online","good"),
(756662,10012,002,'2025-10-31',12,500.00,"offline","excellent"),
(756663,10013,003,'2025-10-20',02,750.00,"online","good");

#1total orders per customer
select c.name, count(o.order_id) as total_orders
from customers c
join orders o on c.customer_id=o.customer_id
group by c.name;

#2total amount spent per customer
select c.name, sum(o.order_amount) as total_spent
from customers c
join orders o on c.customer_id=o.customer_id
group by c.name
order by total_spent desc;

#3avg delivery time per customer
select c.name, round(avg(o.delivery_time_min),2) as avg_delivery_time
from customers c
join orders o on c.customer_id=o.customer_id
group by c.name
order by avg_delivery_time asc;

#4total orders and revenue per restaurant
select r.name,
count(o.order_id) as total_orders,
sum(o.order_amount) as total_revenue
from restaurants r
join orders o on r.restaurant_id=o.restaurant_id
group by r.name
order by total_revenue desc;

#5avg rating rating per cuisine
select cuisine, round(avg(rating),2)as avg_rating
from restaurants
group by cuisine
order by avg_rating desc;

#6total  order by payment
select payment_mode, count(order_id) as total_orders
from orders
group by payment_mode;

#7feedback summary
select feedback, count(order_id) as feedback_count
from orders
group by feedback;

select * from customers;
select * from restaurants;
select * from orders;