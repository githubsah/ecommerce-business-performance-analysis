-- Question 1(a): Monthly Sales & Profit Trend

SELECT
    DATE_FORMAT(
        STR_TO_DATE(o.`Order Date`, '%d-%m-%Y'),
        '%Y-%m'
    ) AS order_month,
    SUM(d.amount) AS total_sales,
    SUM(d.profit) AS total_profit
FROM `indian_ecommerce_sales`.`list of orders` o
JOIN `indian_ecommerce_sales`.`order_details` d
    ON o.`Order ID` = d.order_id
GROUP BY
    DATE_FORMAT(STR_TO_DATE(o.`Order Date`, '%d-%m-%Y'), '%Y-%m')
ORDER BY order_month;
