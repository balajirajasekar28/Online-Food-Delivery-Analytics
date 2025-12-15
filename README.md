# Online Food Delivery – Performance & Insights Dashboard

Project Overview
This project analyzes an online food delivery dataset to understand **customer behavior, restaurant performance, revenue trends, and delivery efficiency**.  
The goal is to build a **professional, interactive Power BI dashboard** suitable for business decision-making.

This is an end-to-end analytics project covering **data extraction, cleaning, analysis, and visualization**.

# Tools & Technologies Used
- SQL (MySQL) – Data storage, table design, and querying  
- Python – Data analysis and preprocessing  
  - Pandas  
  - NumPy  
  - Matplotlib  
  - Seaborn  
- Power BI – Interactive dashboard creation and DAX measures  
- GitHub – Project version control and portfolio showcase

# Dataset Description
The dataset represents an online food delivery platform with the following entities:

- Customers – demographic and location data  
- Restaurants – cuisine type and ratings  
- Orders – order details, delivery time, payment mode, and feedback  

Data was queried using SQL and exported as CSV for analysis and dashboard creation.

**Data Model**
The project follows a star schema design:

- Fact Table: Orders  
- Dimension Tables: Customers, Restaurants  

Relationships:
- Customers (1) → Orders (Many)  
- Restaurants (1) → Orders (Many)

**Dashboard Pages**
1) Overview Dashboard
- Total Orders  
- Total Revenue  
- Average Delivery Time  
- Average Rating  
- Payment Mode Distribution  
- Revenue Trend Over Time  

2) Customer Insights
- Orders and revenue by customer  
- Orders by location  
- Age group analysis  

3) Restaurant Performance
- Top restaurants by revenue  
- Cuisine popularity  
- Restaurant ratings vs delivery time  

4) Delivery Analysis
- Delivery time trends  
- Feedback distribution  
- On-time delivery performance  


**Key DAX Measures Used**
DAX
Total Orders = COUNT(Orders[order_id])

Total Revenue = SUM(Orders[order_amount])

Avg Delivery Time = AVERAGE(Orders[delivery_time_min])

Avg Rating = AVERAGE(Restaurant[rating])

Avg Order Value =
DIVIDE([Total Revenue], [Total Orders])

