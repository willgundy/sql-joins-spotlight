-- find all film titles with the category Action
-- use a LEFT JOIN FROM film onto film_category
-- use LEFT JOIN FROM film_categor onto category
select f.title
from film f
left join film_category fc on f.film_id = fc.film_id
left join category c on c.category_id = fc.category_id
where c.name = 'Action';
