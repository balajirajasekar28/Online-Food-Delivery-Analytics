# import libraries
import mysql.connector
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

#connect to mysql
connection = mysql.connector.connect(
    host="localhost",user="root",
    password="root",database="online_food_delivery_data"
    )
if connection.is_connected():
    print("successfully connected to mysql database!")

#load data into pandas
query_customers = "SELECT * FROM customers;"
query_restaurants = "SELECT * FROM restaurants;"
query_orders = "SELECT * FROM orders;"

df_customers=pd.read_sql(query_customers,connection)
df_restaurants=pd.read_sql(query_restaurants,connection)
df_orders=pd.read_sql(query_orders,connection)

print("\nCustomers Data:")
print(df_customers.head())
print("\nOrders Data:")
print(df_orders.head())
