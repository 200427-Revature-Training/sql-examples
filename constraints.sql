/*
 CONSTRAINTS

 CONSTRAINT IS an additional property that can be assigned TO a TABLE OR
 COLUMN which restricts the VALUES that ARE considered VALID. 

 PRIMARY KEY (pk) - Is the identifying column value for a row. Every table
 should have a primary key. There ARE two kinds OF PRIMARY keys: 1) NATURAL
 KEY: SOME NATURAL value that will uniquely identify a record.  2) Surrogate
 KEY: An arbitrary, often GENERATED FOR the purpose OF uniquely identifying
 a record. Note: PRIMARY KEY can be composite. This means that a PRIMARY KEY
 can be the UNIQUE combination OF multiple COLUMNS. Primary keys restrict
 the possible values of the column by requiring that all values must be
 unique and not null.

 FOREIGN KEY (fk) - These keys define the relationship between two tables.
 Foreign keys require us to define the table and column that they reference.
 The foreign key must be of the same datatype as the referenced column. 
 Foreign keys constraint possible values by disallowing any value that
 is not present on a row in the referenced column. The enforcing of the
 requirement that references must always be valid supports the principle
 of REFERENTIAL INTEGRITY. 

 CHECK - Check contraints allow us to define a predicate by which a table
 is validated.  If the predicate evaluates to false, then the new data is
 considered invalid.  Check constraints constrain possible values by only
 allowing data that would pass the predicate.
 
 NOT NULL - The NOT NULL constraint can be used to define that a column
 value may not be null.  This should be used when the lack of a value
 or the lack of knowing a value is considered invalid.  The not null 
 constraint constraints possible values by not allowing null.
 
 UNIQUE - The UNIQUE constraint enforces that that any value stored in this
 column must be unique amongst all rows for this column. The UNIQUE constraint
 constraints possible values by preventing rows from having values that
 already exist in that column.

 EXCLUDE - For a given predicate comparing rows to all other rows, it should
 never return true.
 

*/