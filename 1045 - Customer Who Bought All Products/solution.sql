# Write your MySQL query statement below
select customer_id
from customer c
inner join product p on c.product_key = p.product_key
where c.product_key is not null
group by customer_id
having count(distinct c.product_key) = (select count(product_key) from Product)
order by customer_id asc
