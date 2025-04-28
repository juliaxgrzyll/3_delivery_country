/*3 countries of delivery, the largest nr of customers
 nr of orders between 160 and 200 */
select 
 	delivery_country
 	,count(distinct customer_id) as nr_of_customers
 	,count(order_id)          	  as nr_of_orders
from my_orders
group by 1
having count(order_id) between 160 and 200
order by count(distinct customer_id) desc
limit 3



