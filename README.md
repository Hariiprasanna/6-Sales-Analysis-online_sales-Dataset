# 6-Sales-Analysis-online_sales-Dataset


 
## Overview
This project explores time-based sales analysis using SQL on a sample online_sales dataset. The goal is to analyze order trends, revenue patterns, and volume over time without using the EXTRACT() function — relying instead on standard MySQL functions such as YEAR(), MONTH(), and DATE_FORMAT().

## Dataset Structure
Table Name: online_sales
Columns:
order_id (INT): Unique ID of each order
order_date (DATE): Date when the order was placed
amount (DECIMAL): Revenue generated from the order
product_id (INT): ID of the product purchased

## Tools & Technologies
Database: MySQL
Language: SQL
Platform: MySQL Workbench


## Objectives & Analysis Tasks

Task	Description
1	  Extract the month from order_date using MONTH() function
2   	Group the sales data by year and month using YEAR() and MONTH()
3	  Use SUM() to calculate the total monthly revenue
4	  Use COUNT(DISTINCT order_id) to compute monthly order volume
5	  Sort results chronologically using ORDER BY
6	  Filter results to focus on a specific time period  


## Sample Use Case

The analysis is helpful for:
Visualizing monthly revenue trends
Detecting seasonal demand
Generating KPIs for business dashboards
Performing time period comparisons
