use demo_sql;

-- Step 1: Create the table
DROP TABLE IF EXISTS online_sales;

CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

-- Step 2: Insert sample data (50 rows)
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1001, '2023-01-05', 120.50, 101),
(1002, '2023-01-12', 75.00, 102),
(1003, '2023-01-20', 210.00, 101),
(1004, '2023-02-01', 200.00, 103),
(1005, '2023-02-15', 50.00, 101),
(1006, '2023-02-28', 99.99, 104),
(1007, '2023-03-03', 180.00, 102),
(1008, '2023-03-10', 130.00, 105),
(1009, '2023-03-21', 150.00, 101),
(1010, '2023-04-01', 80.00, 103),
(1011, '2023-04-18', 100.00, 106),
(1012, '2023-04-25', 60.00, 104),
(1013, '2023-05-05', 170.00, 105),
(1014, '2023-05-11', 190.00, 106),
(1015, '2023-05-28', 85.00, 102),
(1016, '2023-06-02', 210.00, 101),
(1017, '2023-06-18', 115.00, 104),
(1018, '2023-06-30', 95.00, 103),
(1019, '2023-07-07', 175.00, 102),
(1020, '2023-07-15', 250.00, 105),
(1021, '2023-08-01', 110.00, 106),
(1022, '2023-08-10', 135.00, 104),
(1023, '2023-08-17', 160.00, 101),
(1024, '2023-08-24', 190.00, 103),
(1025, '2023-09-03', 70.00, 102),
(1026, '2023-09-08', 200.00, 105),
(1027, '2023-09-19', 140.00, 106),
(1028, '2023-10-05', 125.00, 101),
(1029, '2023-10-11', 180.00, 104),
(1030, '2023-10-25', 95.00, 103),
(1031, '2023-11-01', 215.00, 102),
(1032, '2023-11-15', 185.00, 105),
(1033, '2023-11-20', 175.00, 106),
(1034, '2023-11-29', 120.00, 101),
(1035, '2023-12-05', 155.00, 104),
(1036, '2023-12-12', 90.00, 103),
(1037, '2023-12-18', 130.00, 102),
(1038, '2024-01-02', 205.00, 101),
(1039, '2024-01-14', 195.00, 105),
(1040, '2024-01-25', 140.00, 106),
(1041, '2024-02-08', 115.00, 104),
(1042, '2024-02-17', 170.00, 103),
(1043, '2024-03-01', 160.00, 102),
(1044, '2024-03-09', 155.00, 105),
(1045, '2024-03-15', 180.00, 106),
(1046, '2024-03-27', 145.00, 101),
(1047, '2024-04-02', 200.00, 104),
(1048, '2024-04-16', 220.00, 103),
(1049, '2024-04-25', 100.00, 102),
(1050, '2024-04-29', 190.00, 105);


 # MONTH FROM order_date
 SELECT 
    order_id,
    order_date,
    MONTH(order_date) AS order_month
FROM online_sales;




# Group by year and month

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    COUNT(*) AS total_orders
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date);




# SUM() for total revenue
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date);



# Order Volume using COUNT(DISTINCT order_id)
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date);


 # Sorted Results using ORDER BY
 SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY order_year ASC, order_month ASC;


# Limit Results to a Specific Period
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
WHERE order_date BETWEEN '2023-01-01' AND '2023-03-31'
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY order_year, order_month;



