-- the total run time of all inventory items if they were all played back to back
select sum(f.length)
from inventory i
join film f on i.film_id = f.film_id;