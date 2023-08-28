-- Problem 1:
-- Task: Write a query that shows all the information about all the salespeople
-- in the database. Use a basic select query.

select * from salespeople;

-- Problem 2:
-- Task: Write a query that shows all the information about all salespeople
-- from the 'Northwest' region.

select * from salespeople where region='Southwest';

-- Problem 3:
-- Task: Write a query that shows just the emails of the salespeople from
-- the 'Southwest' region.

select email from salespeople where region='Southwest';

-- Problem 4:
-- Task: Write a query that shows the given name, surname, and email of all
-- salespeople in the 'Northwest' region.

select first_name as Name, last_name as Surname, email from salespeople where region='Northwest';

-- Problem 5:
-- Task: Write a query that shows the common name of melons that cost more
-- than $5.00.

select melon_type from melons where price>5;

-- Problem 6:
-- Task: Write a query that shows the common name and price for all
-- watermelons that cost more than $5.00.

select * from melons where price>5 and melon_type='Watermelon';

-- Problem 7:
-- Task: Write a query that displays all common names of melons that
-- start with the letter 'C'.

select * from melons where common_name like 'C%';

-- Problem 8:
-- Task: Write a query that shows the common name of any melon with
-- 'Golden' anywhere in the common name.

select * from melons where common_name like '%Golden%';

-- Problem 9:
-- Task: Write a query that shows all the distinct regions that a
-- salesperson can belong to.

select distinct region from salespeople;

-- Problem 10:
-- Task: Write a query that shows the emails of all salespeople from
-- both the Northwest and Southwest regions.

select email from salespeople where region = 'Northwest' or region='Southwest';

-- Problem 11:
-- Task: Write a query that shows the emails of all salespeople from
-- both the Northwest and Southwest regions, this time using an 'IN' clause.

select email from salespeople where region in ('Northwest','Southwest');

-- Problem 12:
-- Task: Write a query that shows the email, given name, and surname of
-- all salespeople in either the Northwest or Southwest regions whose
-- surnames start with the letter 'M'.

select email, first_name, last_name from salespeople where region in ('Northwest', 'Southwest') and last_name like 'M%';

-- Problem 13:
-- Task: Write a query that shows the melon type, common name, price, and
-- the price of the melon given in euros. The 'melons' table has prices in
-- dollars, and the dollar to euro conversion rate is 0.73.

select melon_type, common_name, price, price/.73 from melons;

-- Problem 14:
-- Task: Write a query that shows the total number of customers in our
-- customer table.

select count(customers) from customers;

-- Problem 15:
-- Task: Write a query that counts the number of orders shipped to
-- California.

select count(*) from orders where shipto_state = 'CA';

-- Problem 16:
-- Task: Write a query that shows the total amount of money spent
-- across all melon orders.

select sum(order_total) from orders;

-- Problem 17:
-- Task: Write a query that shows the average order cost.

select avg(order_total) from orders;

-- Problem 18:
-- Task: Write a query that shows the order total that was lowest in price.

select min(order_total) from orders;

-- Problem 19:
-- Task: Write a query that fetches the id of the customer whose email
-- is 'pclark74@gmail.com'.

select id from customers where email='pclark74@gmail.com';

-- Problem 20:
-- Task: Write a query that shows the id, status and order_total for all
-- orders made by customer 100.

select id, status, order_total from orders where customer_id=100;

-- Problem 21:
--  Task: Write a single query that shows the id, status, and order total
-- for all orders made by 'pclark74@gmail.com'. Use a sub-select to do this.

select id, status, order_total from orders where customer_id=(select id from customers where email='pclark74@gmail.com');

-- Problem 22:
-- Write a query that shows the total amount of revenue that comes
-- from internet orders.

select sum(order_total) from orders where salesperson_id is null;
