-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
select c.name
from inventory i
join film f on i.film_id = f.film_id
join film_category fc on fc.film_id = f.film_id
join category c on c.category_id = fc.category_id
left join rental r on r.inventory_id = i.inventory_id
where r.rental_id is null;