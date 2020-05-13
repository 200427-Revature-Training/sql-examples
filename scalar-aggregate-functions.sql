/*
	Scalar Functions - Traditional functions.  Work just like functions you have
	used in JavaScript, etc.
	
	They take in parameters and produce a value.
	
	ABS(number) -- Calculate absolute value
	UPPER(str) -- convert string to uppercase
	LOWER(str) -- Convert string to lowercase
	SUBSTRING(str, int, int) -- Extract substring from string
	power(n, x) - calculate n^x
	mod(20, 3) - calculate 20 % 3
*/

SELECT ABS(-10) FROM people;

/*
	Aggregate Functions
	Aggregate functions are functions which operate on a result set, aggregating
	row data to provide a summation of that data.	
	
	count(*) - Counts number of rows
	sum(column) - Calculates sum of all column values
	max(column) - finds maximum value in column
	min(column) - finds minimum value in column
	avg(column) - finds average value in column
*/
SELECT * FROM people;
SELECT count(*) FROM people;
SELECT sum(id) FROM people;
SELECT max(id) FROM people;
SELECT min(id) FROM people;
SELECT avg(id) FROM people;

SELECT * FROM credit_cards;

SELECT max(balance) FROM credit_cards;

-- One caveat of using aggregate functions is that you can only select using 
-- columns when that column is being acted upon by an aggregate function OR
-- the column is listed in the GROUP BY clause.

SELECT subquery.funds_available, first_name FROM 
	(SELECT sum(credit_limit - balance) "funds_available", owner_id 
		FROM credit_cards 
		WHERE owner_id > 1 -- Could be credit_card.active = true
		GROUP BY owner_id
		HAVING sum(credit_limit - balance) > 15000::money
	) AS subquery
LEFT JOIN people ON subquery.owner_id = people.id;

-- HAVING - Filters rows - Filters POST aggregation
-- WHERE - Filters rows - Filters PRIOR to aggregation


SELECT * FROM credit_cards;

INSERT INTO credit_cards (balance, credit_limit, owner_id) VALUES
	(1000, 3000, 1),
	(0, 5000, 2),
	(2500, 10000, 3),
	(5000, 10000, 4),
	(5000, 25000, 4),
	(10000, 25000, 4),
	(9321.25, 30000, 4);