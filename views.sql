/* VIEWS
 A VIEW IS a DATABASE OBJECT (meaning we use DDL to create them) 
which stores a query to queryable later. A view does not store the result,
it only stores the query.  When you use a view later it will query on against
the current state of the database.

	We can assign privileges to views seperately from tables.
*/

CREATE VIEW remaining_card_balance AS SELECT id, 
	credit_limit - balance "remaining_available",
	owner_id FROM credit_cards;
	
SELECT * FROM remaining_card_balance;