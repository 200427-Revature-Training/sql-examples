-- PostgreSQL IS a relational DATABASE SYSTEM.
-- A relational DATABASE IS a DATA STORAGE SYSTEM that specializes IN STORAGE
-- OF relational DATA - that IS DATA that has connections TO other pieces OF
-- DATA.  FOR INSTANCE, a USER may have a profile, AND a profile may have posts,
-- AND posts, may have COMMENTS. There IS a relationship BETWEEN a USER AND their
-- profile, their profile AND their posts, AND a post AND its COMMENTS.

-- AT a abstract LEVEL, the different things we will track will be CALLED 
-- "entities".  Entities will closely resemble the classes we define IN our code.
-- Concretely, our entities ARE represented BY TABLES IN the DATABASE.

-- TABLES ARE 2-dimensional datastructures that ARE represented WITH COLUMNS
-- AND ROWS.  COLUMNS represent SPECIFIC datapoints that an entity might have.
-- IN JavaScript, we would CALL these properties. ROWS represent SPECIFIC 
-- instances OF these entities.

-- SQL (Structured Query Language) IS a standardized LANGUAGE used TO communicate
-- AND operate upon a relational DATABASE. SQL itself IS structured INTO a 
-- variety OF 'sublanguages' that operate ON SPECIFIC domains. The FIRST sublanguage
-- we will introduce IS DDL - DATA Definition LANGUAGE.  DDL operates ON the
-- DOMAIN OF the DATABASE OBJECT, such AS TABLES, VIEWS, FUNCTIONS, etc.

-- DDL is comprised of 4 operations:
-- 1. CREATE -- Used to create new database objects
-- 2. ALTER -- Update existing database objects
-- 3. DROP -- Removes existing database objects
-- 4. TRUNCATE -- Removes data from a table, leaving the structure behind

CREATE TABLE pets (
	-- columns to be defined in this table
	-- column_name column_type CONSTRAINTS,	
--	id SERIAL PRIMARY KEY, -- Very common mechanism for auto incrementing
	id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- newer mechanism
	name VARCHAR(50),
	birthdate DATE
);

CREATE TABLE people (
	id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	birthdate DATE
);

CREATE TABLE pet_dishbowl(
	id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	capacity INTEGER,
	amount INTEGER,
	pet_id INTEGER REFER	ENCES pets (id)
);

CREATE TABLE credit_cards(
	id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	balance MONEY,
	credit_limit MONEY,
	owner_id INTEGER REFERENCES people (id)
);

CREATE TABLE pet_owners (
	people_id integer REFERENCES people (id),
	pets_id integer REFERENCES pets (id),
	PRIMARY KEY (people_id, pets_id)
);


-- We want to add birthdate.  What would the appropriate type be for birthdate?
-- ALTER TABLE pets ADD COLUMN birthdate DATE;

DROP TABLE pets;
-- Data Types
-- CHAR, VARCHAR, TEXT
-- Char is a fixed-length, padded string
-- varchar is a unpadded string with a maximum length
-- text is an abritrary length string, not easy to query upon
