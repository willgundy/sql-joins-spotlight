-- the average film length by category
-- include the category name and avg length
select c.name, avg(f.length)
from film f
join film_category fc on f.film_id = fc.film_id
join category c on c.category_id = fc.category_id
group by c.name
limit 10;