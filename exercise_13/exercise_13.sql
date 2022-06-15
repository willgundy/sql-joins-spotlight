-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
select cou.country, avg(p.amount)
from rental r
join payment p on p.rental_id = r.rental_id
join customer c on r.customer_id = c.customer_id
join address a on c.address_id = a.address_id
join city on a.city_id = city.city_id
join country cou on cou.country_id = city.country_id
group by cou.country_id
order by 2 desc
limit 10;