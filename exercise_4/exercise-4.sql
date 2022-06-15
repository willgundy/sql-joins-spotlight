-- find all customers first_name, last_name, address, and city
-- Similar to exercise 3 but with customer, address, city
select c.first_name, c.last_name, a.address, city.city
from customer c
left join address a on c.address_id = a.address_id
left join city on city.city_id = a.city_id;