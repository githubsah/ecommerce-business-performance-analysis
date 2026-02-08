-- Question 2(b): City-wise Revenue & Profit Contribution

SELECT
    o.City,
    o.State,
    SUM(d.amount) AS total_sales,
    SUM(d.profit) AS total_profit
FROM `indian_ecommerce_sales`.`list of orders` o
JOIN `indian_ecommerce_sales`.`order_details` d
    ON o.`Order ID` = d.order_id
GROUP BY o.City, o.State
ORDER BY total_sales DESC;
