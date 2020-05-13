/* Joins */
/* Joins allow us TO combine RESULT SETS horizontally */
/* WHEN defining a JOIN, we JOIN a standard query TO a 'new' TABLE */

/* There ARE a variety OF TYPES OF joins, but FOR demos sake we will START WITH
 	LEFT JOIN (left outer join) */

SELECT * FROM pets;
SELECT * FROM pet_owners;
SELECT * FROM people;
/*
INSERT INTO pets (name, birthdate) VALUES ('Socks', '2011-03-01');

INSERT INTO pet_owners (pets_id, people_id) VALUES
	(1, 1), (1, 2), (2, 3), (4, 4), (4, 3);
*/

/* Show me pets, and their owners if they have an owner */
SELECT pets.*, people.first_name "owner_name" FROM pets 
	LEFT JOIN pet_owners ON pets.id = pet_owners.pets_id
	LEFT JOIN people ON pet_owners.people_id = people.id;

/* Show me people, and if those people have pets, show me that too */
SELECT pets.*, people.first_name "owner_name" FROM pets 
	RIGHT JOIN pet_owners ON pets.id = pet_owners.pets_id
	RIGHT JOIN people ON pet_owners.people_id = people.id;

/* A right join is like a left join with the FROM and JOIN tables swapped */
SELECT pets.*, people.first_name "owner_name" FROM people 
	LEFT JOIN pet_owners ON people.id = pet_owners.people_id
	LEFT JOIN pets ON pet_owners.pets_id = pets.id;

/* Show me the pets that have owners and the owner data */
SELECT pets.id, people.first_name "owner_name" FROM pets 
	INNER JOIN pet_owners ON pets.id = pet_owners.pets_id
	INNER JOIN people ON pet_owners.people_id = people.id;

/* Show me all the data, but combine where possible */
SELECT pets.*, people.first_name "owner_name" FROM pets 
	FULL OUTER JOIN pet_owners ON pets.id = pet_owners.pets_id
	FULL OUTER JOIN people ON pet_owners.people_id = people.id;

/* Show me only data with no correlation */
SELECT pets.*, people.first_name "owner_name" FROM pets 
	FULL OUTER JOIN pet_owners ON pets.id = pet_owners.pets_id
	FULL OUTER JOIN people ON pet_owners.people_id = people.id
	WHERE pet_owners.pets_id IS NULL;

/* CROSS JOIN - Join every record to every other record (Cartesian Product) 
 * No ON clause because we're not joining based on any column
 * */
SELECT * FROM  pets, people;
-- Alternative syntax
SELECT * FROM pets CROSS JOIN people;

/* Joins based on liked named columns.  
 * 	No ON clause as the join columns are implicit */
SELECT * FROM people NATURAL JOIN credit_cards;

ALTER TABLE people ADD COLUMN best_friend INTEGER REFERENCES people(id);

SELECT * FROM pets NATURAL JOIN people;

SELECT * FROM people;
UPDATE pets SET birthdate = '2000-02-01' WHERE id = 2;
SELECT * FROM pets;