-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL
select f.title
from inventory i
join film f on i.film_id = f.film_id
left join rental r on r.inventory_id = i.inventory_id
where r.rental_id is null;