-- Question 8(a): Category-wise Target vs Actual Sales

SELECT
    d.category,
    SUM(d.amount) AS actual_sales,
    SUM(t.target) AS sales_target,
    SUM(d.amount) - SUM(t.target) AS target_gap
FROM `indian_ecommerce_sales`.`order_details` d
JOIN `indian_ecommerce_sales`.`sales_target` t
    ON d.category = t.category
GROUP BY d.category;
