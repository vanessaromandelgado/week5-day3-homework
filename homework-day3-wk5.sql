- - Q1
select first_name, last_name, district
from address
join customer
on address.address_id = customer.address_id
where district = 'Texas';
- - answer: five Texas customers

- - Q2
select amount, first_name, last_name
from payment
join customer
on payment.customer_id = customer.customer_id
where amount > 6.99;
- - answer: see query below

- - Q3
select amount, first_name, last_name
from customer
join payment
on customer.customer_id = payment.customer_id
where amount > 175;
- - answer: 55 customers who have made purchases over $175

- - Q4
select customer.customer_id, customer.first_name, customer.last_name, customer.address_id
from customer
join address
on customer.address_id = address.address_id
join city 
on address.city_id = city.city_id
join country
on city.country_id = country.country_id
where country.country like 'Nepal';
- - answer: one customer from Nepal, Kevin Schuler

- - Q5
select staff.first_name, staff.last_name, payment.staff_id, count(payment.staff_id) 
from staff
join payment
on staff.staff_id = payment.staff_id
group by first_name, last_name, payment.staff_id
order by staff_id desc;

- - Q6
select count(rating), rating
from film
group by rating
order by rating asc;
- - answer: 178:G, 194:PG, 223: PG-13, 195: R, 210: NC-17

- - Q7
select amount, first_name, last_name
from payment
join customer
on payment.customer_id = customer.customer_id
where amount > 6.99;
- - answer: 1,507 customers

- - Q8 *unsure
select * from rental;
select * from payment;
select payment.amount, rental.rental_id
from rental
join payment
on payment.rental_id = rental.rental_id
where rental = 0;

