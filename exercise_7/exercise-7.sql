-- find all film titles rented out by customers who live in the city of Dundee
-- Similar to exercise 6 but you need a few more joins to get the city name
select f.title
from film f
left join inventory i on i.film_id = f.film_id
left join rental r on r.inventory_id = i.inventory_id
left join customer c on c.customer_id = r.customer_id
left join address a on c.address_id = a.address_id
left join city on city.city_id = a.city_id
where city.city = 'Dundee';