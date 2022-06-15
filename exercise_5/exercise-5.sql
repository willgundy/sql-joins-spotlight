-- find all film titles that an actor with the last_name Davis appears in
-- Similar to exercise 3 but with actor, film_actor, film
select f.title
from film f
left join film_actor fa on fa.film_id = f.film_id
left join actor a on a.actor_id = fa.actor_id
where a.last_name = 'Davis';