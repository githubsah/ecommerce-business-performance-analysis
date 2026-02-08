-- Question 8(b): Month-wise Target vs Actual Sales

SELECT
    DATE_FORMAT(
        STR_TO_DATE(o.`Order Date`, '%d-%m-%Y'),
        '%Y-%m'
    ) AS order_month,
    SUM(d.amount) AS actual_sales,
    SUM(t.target) AS sales_target,
    SUM(d.amount) - SUM(t.target) AS target_gap
FROM `indian_ecommerce_sales`.`list of orders` o
JOIN `indian_ecommerce_sales`.`order_details` d
    ON o.`Order ID` = d.order_id
JOIN `indian_ecommerce_sales`.`sales_target` t
    ON d.category = t.category
GROUP BY order_month
ORDER BY order_month;
