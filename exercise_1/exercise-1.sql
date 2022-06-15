-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to city
select a.address_id
from address a
join city c on a.city_id = c.city_id
where c.city = 'Dundee';