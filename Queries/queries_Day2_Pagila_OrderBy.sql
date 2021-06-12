-- Select count of actors first names in descending order
select first_name, count(first_name ) as count_first_name
from actor 
group by first_name
order by count_first_name desc

-- Select the average duration of movies by rating
select rating, avg(rental_duration) as rental_duration
from film
group by rating

-- Select top ten replace costs for the length of the movie
select length, count(replacement_cost) as top_ten
from film
group by length
order by top_ten desc
limit 10;

-- Select the count of cities in each country
	select country.country,count(city.city)
	from city
	inner join country on country.country_id= city.country_id
	group by country.country
