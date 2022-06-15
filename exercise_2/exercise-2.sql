-- find all rental dates for customers with the first_name Patricia
-- use INNER JOIN FROM customer onto rental
select r.rental_date
from rental r
join customer c on c.customer_id = r.customer_id
where c.first_name = 'Patricia'
limit 100;
