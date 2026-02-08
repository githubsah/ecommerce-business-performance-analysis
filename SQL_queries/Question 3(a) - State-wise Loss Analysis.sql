-- Question 3(a): State-wise Loss Analysis

SELECT
    o.State,
    SUM(d.amount) AS total_sales,
    SUM(d.profit) AS total_profit
FROM `indian_ecommerce_sales`.`list of orders` o
JOIN `indian_ecommerce_sales`.`order_details` d
    ON o.`Order ID` = d.order_id
GROUP BY o.State
HAVING SUM(d.profit) <= 0
ORDER BY total_sales DESC;
