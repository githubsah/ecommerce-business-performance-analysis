-- Question 7: Quantity vs Profit Analysis (Category Level)

SELECT
    d.category,
    SUM(d.quantity) AS total_quantity,
    SUM(d.profit) AS total_profit
FROM `indian_ecommerce_sales`.`order_details` d
GROUP BY d.category
ORDER BY total_quantity DESC;
