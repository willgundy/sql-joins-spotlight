-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
select city.city, sum(p.amount)
from rental r
join payment p on p.rental_id = r.rental_id
join customer c on r.customer_id = c.customer_id
join address a on c.address_id = a.address_id
join city on a.city_id = city.city_id
group by city.city_id
order by 2 desc
limit 10;