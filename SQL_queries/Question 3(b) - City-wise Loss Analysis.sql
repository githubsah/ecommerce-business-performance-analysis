-- Question 3(b): City-wise Loss Analysis

SELECT
    o.City,
    o.State,
    SUM(d.amount) AS total_sales,
    SUM(d.profit) AS total_profit
FROM `indian_ecommerce_sales`.`list of orders` o
JOIN `indian_ecommerce_sales`.`order_details` d
    ON o.`Order ID` = d.order_id
GROUP BY o.City, o.State
HAVING SUM(d.profit) <= 0
ORDER BY total_sales DESC;
