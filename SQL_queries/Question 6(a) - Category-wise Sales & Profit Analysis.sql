-- Question 6(a): Category-wise Sales & Profit Analysis

SELECT
    d.category,
    SUM(d.amount) AS total_sales,
    SUM(d.profit) AS total_profit
FROM `indian_ecommerce_sales`.`order_details` d
GROUP BY d.category
ORDER BY total_sales DESC;
