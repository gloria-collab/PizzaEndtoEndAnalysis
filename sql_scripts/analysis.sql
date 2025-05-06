
select *
from orders;


--checking for duplicates
select count(order_id)
from orders
group by order_id
having count(order_id) > 1;


--having a quick look of the order_details table
select *from order_details;

select * from pizzas

-- the most ordered pizza type
select pt.name, p.pizza_id,sum (p.price * quantity) as revenue
from pizza_types as pt
left join pizzas as p
on p.pizza_type_id = pt.pizza_type_id
left join order_details as od
on od.pizza_id = p.pizza_id
group by pt.name, p.pizza_id,p.price, od.quantity
order by revenue desc ;

