/* DML - DATA Manipulation LANGUAGE
 DML IS the sublanguage OF SQL that operates ON the DOMAIN OF DATA FOR
 the purpose OF manipulation. DML has three PRIMARY operations. They ARE:

 1. INSERT - Create new records within a table (adding rows)
 2. UPDATE - Modify the values of existing rows in a table.
 3. DELETE - Remove existing ROWS FROM a TABLE.
 (4. SELECT, but we will classify this as DQL)

 INSERT STATEMENT anatomy
 INSERT INTO table_name (column_name, ...) VALUES (value, ...);

 Note on dates: Postgres automatically interpret an ISO format string as
 a date.  You can also explicitly cast it using the ::TYPE syntax.
*/

INSERT INTO people (first_name, last_name, birthdate) VALUES
	('Abby', 'Adams', '2020-01-01'::DATE);
	
INSERT INTO people (first_name, last_name, birthdate) VALUES
	('Billy', 'Brown', '2000-02-01'),
	('Cindy', 'Chevy', '1999-03-01'),
	('Danny', 'Davidson', '1998-04-01'),
	('Emily', 'Erikson', '1997-05-01');

/* What if we don't have data?  If we don't have data then we should
	likely use a null value.  
*/

  INSERT INTO pets(name, birthdate) VALUES
  	('Lucy','2009-04-14'),
  	('Rex', '2014-05-10'),
  	('Spot','2012-10-20');
  
INSERT INTO credit_cards (balance, credit_limit, owner_id) VALUES
	(0, 1000, 1);
INSERT INTO credit_cards (balance, credit_limit, owner_id) VALUES
	(500, 1000, 1);
INSERT INTO credit_cards (balance, credit_limit, owner_id) VALUES
	(2000, 10000, 2);
INSERT INTO credit_cards (balance, credit_limit, owner_id) VALUES
	(5000, 10000, 3);

INSERT INTO pet_dishbowl (capacity, amount, pet_id) VALUES
	(150, 75, 3);
/*
 UPDATE table_name SET column = value;
 DO NOT WRITE UPDATES THAT ARE THIS SIMPLE
 IT WILL UPDATE EVERYONE!

 How do we indicate which row or rows to upate?
 WHERE clause - The WHERE clause can be used in a SQL statement that
 needs to target specific rows, such as UPDATE, DELETE, 
 or SELECT statements.
 
 The WHERE clause is followed by a predicate which stipulates which rows
 should be returned.  Any rows which pass the predicate (meaning that the
 predicate returns true) are included while those that do not are excluded).
*/

UPDATE people SET first_name = 'Denny' WHERE id = 4;

-- Anatomy of Delete
-- DELETE FROM tablename WHERE <predicate>;

DELETE FROM people WHERE id = 5;