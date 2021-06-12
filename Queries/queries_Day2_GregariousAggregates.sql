
select round(avg(rental_rate)) from film

select rating, avg(rental_rate) from film group by rating

select sum(replacement_cost)  from film

select rating, sum(replacement_cost)  from film group by rating
select title, max(length) as max_length
from film
group by title
order by max_length desc
limit 1