/*
	DQL - DATA Query LANGUAGE
	
	DATA query LANGUAGE IS the sublanguage OF SQL which IS responsible
FOR retrieving DATA FROM the DATABASE.  DQL has ONLY one operation: SELECT.
SOME people will INCLUDE DQL WITHIN DML due TO it being a single operation,
however the amount OF complexity WITHIN SELECT often leads people TO isolate
it TO its own sublanguage.

	Basic anatomy of a SELECT statement:
	
	SELECT column, ... FROM table;
	
	Note: We can use * as a wildcard in the column list.
*/

/* 
 * 
 * WHERE CLAUSE 
 * = - Equality
 * >, <, >=, <=, != - Inequalities
 * BETWEEN x AND y - Comparison between two values
 * IS NULL, IS NOT NULL - Null checks
 * LIKE - String comparison
 * 		_ - Single character wildcard
 * 		% - variable length wildcard
 * AND - logical and
 * OR - logical or
 */
--


SELECT * FROM people WHERE first_name LIKE '___y';
--
--SELECT * FROM people WHERE first_name LIKE '%y';
--
--SELECT * FROM people WHERE first_name LIKE '%i%';
--
--SELECT * FROM people WHERE first_name NOT LIKE '%ll%';
--SELECT * FROM pets WHERE id BETWEEN 1 AND 2;
--
--SELECT * FROM pets WHERE birthdate BETWEEN '2010-01-01' AND '2013-01-01';
--
--
--SELECT * FROM pets WHERE birthdate < '2013-01-01';
--
--SELECT * FROM pets WHERE birthdate > '2013-01-01';
--
--SELECT * FROM pets WHERE id > 1;
--
--SELECT * FROM pets WHERE name = 'Rex';
--


/* ORDER BY
	 Order by allows us to specify a rule for how results should be ordered
	within the result set. We can specify a column(s) to order by. By default
	columns order in ascending order, we can add DESC after the column name
	to order in descending order.
*/

SELECT * FROM pets ORDER BY birthdate DESC;

/* LIMIT, OFFSET
 * LIMIT - limits the results to the first n rows
 * OFFSET - Offsets the returned rows by n
*/

-- Finding the oldest pet
SELECT * FROM pets ORDER BY birthdate LIMIT 1;

-- Finding second oldest pet
SELECT * FROM PEOPLE ORDER BY first_name desc OFFSET 2;