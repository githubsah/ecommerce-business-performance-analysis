-- Question 2(a): State-wise Revenue & Profit Contribution

SELECT
    o.State,
    SUM(d.amount) AS total_sales,
    SUM(d.profit) AS total_profit
FROM `indian_ecommerce_sales`.`list of orders` o
JOIN `indian_ecommerce_sales`.`order_details` d
    ON o.`Order ID` = d.order_id
GROUP BY o.State
ORDER BY total_sales DESC;
