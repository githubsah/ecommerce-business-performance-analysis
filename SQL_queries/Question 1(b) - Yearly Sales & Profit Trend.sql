-- Question 1(b): Yearly Sales & Profit Trend

SELECT
    YEAR(STR_TO_DATE(o.`Order Date`, '%d-%m-%Y')) AS order_year,
    SUM(d.amount) AS total_sales,
    SUM(d.profit) AS total_profit
FROM `indian_ecommerce_sales`.`list of orders` o
JOIN `indian_ecommerce_sales`.`order_details` d
    ON o.`Order ID` = d.order_id
GROUP BY YEAR(STR_TO_DATE(o.`Order Date`, '%d-%m-%Y'))
ORDER BY order_year;
