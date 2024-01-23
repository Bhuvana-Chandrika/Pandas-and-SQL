
SELECT a.product_id, IFNULL(ROUND(SUM(a.price*b.units)/SUM(b.units),2),0) as average_price
FROM Prices a
LEFT JOIN UnitsSold b on a.product_id=b.product_id
AND b.purchase_date BETWEEN a.start_date and a.end_date
group by a.product_id
