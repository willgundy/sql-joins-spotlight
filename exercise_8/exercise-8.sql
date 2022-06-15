-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name

select f.title
from film f
join inventory i on i.film_id = f.film_id
join rental r on r.inventory_id = i.inventory_id
join customer c on c.customer_id = r.customer_id
join address a on c.address_id = a.address_id
join city on city.city_id = a.city_id
join country cou on cou.country_id = city.country_id
where cou.country = 'Peru';