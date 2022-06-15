-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
select f.title
from film f
join inventory i on i.film_id = f.film_id
join rental r on r.inventory_id = i.inventory_id
join customer c on c.customer_id = r.customer_id
where c.first_name = 'Roberta';