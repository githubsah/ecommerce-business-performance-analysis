-- Question 6(b): Sub-Category-wise Sales & Profit Analysis

SELECT
    d.category,
    d.sub_category,
    SUM(d.amount) AS total_sales,
    SUM(d.profit) AS total_profit
FROM `indian_ecommerce_sales`.`order_details` d
GROUP BY d.category, d.sub_category
ORDER BY total_sales DESC;
