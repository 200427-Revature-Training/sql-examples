/*
	Normalization
	-----
	In a database normalization is the process of reducing the the data model to
	structure that avoids bad practices that often result in redundancy. 
	
	Denormalization
	----
	Adding redundancy to improve database performance.
	
	
	Normalization is often categorized into Nth Normal Forms.  Each normal form
	has its own requirements that build on the requirements in the previous.

	1NF - 	1. Every table should have a primary key.
			2. All columns in the table should be atomic.
			
	2NF - 	1. Must meet the requirements of 1NF.
			2. Is that any non-key columns must describe the whole key.
			
			| Users Table |      | Friends Table                			 				   |		
			| id | ...    |      | sender_id | recipient_id | timestamp | sender_favorite_food |
			
			The sender_favorite_food column should be in the Users table because
			it is only about a single user and does not describe the relationship
			that is defined by the primary key of (sender_id, recipient_id).
			
	3NF - 	1. Must meet the requirements of 2NF.
			2. There should be no transitive/functional dependencies.
			
			|  Orders Table    		   |
			| price | quantity | total |
			|  1	|    3	   |  3    |
			|  5	|    1	   |  5    |
			
			
			The value of total is a functional dependency on the values of 
			price and quantity such that total could be calculated by simply
			finding the product of those values.
			
			|  Address 											|
			|  state  	|  city |  	street address 				|
			| Florida   | Tampa | 123 Reel Street				|
			| New York	| NYC	| Broadway						|
			| Florida	| Miami | 25 Spring Break Avenue		|
			
			| States        |			| Cities Table			   |
			| id | name     |			| id | name     | state_id |
			| 1	 | Florida  |			| 1  | Tampa	|   1	   |
			| 2  | New York |			| 2  | New York |   2      |
			| 3  | Montana	|			| 3  | Tampa    |   3	   |
			
			| Refactored Address 			|
			| city_id | street_address  	|
			|    1	  |   123 Reel St		|
			|    3    |   Cow Pasture Lane  |
			
			
			
			
			
			
			  
*/