/*
	DCL - Data Control Language
	Data control langauge is used to manage permissions on users.  Data control
	language operates on the domain of users and privileges.  Users or roles can
	be created with DDL, and we can GRANT or REVOKE permissions using DCL.
	
	Operations:
	GRANT - Add privileges to a role.
	REVOKE - Remove privileges from a role.
	
	We should follow the concept of LEAST PRIVILEGES - No role should have any
	more privileges than those necessary to complete its job.
*/

CREATE ROLE node_app_role LOGIN PASSWORD 'p4ssw0rd';
--DROP ROLE node_app_role;

GRANT SELECT, UPDATE, INSERT ON ALL TABLES IN SCHEMA public TO node_app_role;

SELECT * FROM people;