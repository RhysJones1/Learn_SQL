# Learn SQL

![image](https://user-images.githubusercontent.com/91537105/154952678-c1af65aa-d1f0-4dbc-b272-8bb3efe63988.png)

## Introduction to SQL

SQL is a standard language for accessing and manipulating databases.

### What is SQL?

* SQL stands for Structured Query Language
* SQL lets you access and manipulate databases
* It is a RDBMS which stands for Relational Database Management System.
* RDBMS is the basis for SQL, and for all modern database systems such as MS SQL Server, IBM DB2, Oracle, MySQL, and Microsoft Access.
* The data in RDBMS is stored in database objects called tables. A table is a collection of related data entries and it consists of columns and rows.

For example:

``` SQL
SELECT *
FROM Customers;
```

### What can it do?

* SQL can execute queries against a database
* SQL can retrieve data from a database
* SQL can insert records in a database
* SQL can update records in a database
* SQL can delete records from a database
* SQL can create new databases
* SQL can create new tables in a database
* SQL can create stored procedures in a database
* SQL can create views in a database
* SQL can set permissions on tables, procedures, and views

### Structure of a Database

* Every table is broken up into smaller entities called fields. A field is a column in a table that is designed to maintain specific information about every record in the table. A column is a vertical entity in a table that contains all information associated with a specific field in a table.
* A record, also called a row, is each individual entry that exists in a table. A record is a horizontal entity in a table.

### Some of The Most Important SQL Commands

* SELECT - extracts data from a database
* UPDATE - updates data in a database
* DELETE - deletes data from a database
* INSERT INTO - inserts new data into a database
* CREATE DATABASE - creates a new database
* ALTER DATABASE - modifies a database
* CREATE TABLE - creates a new table
* ALTER TABLE - modifies a table
* DROP TABLE - deletes a table
* CREATE INDEX - creates an index (search key)
* DROP INDEX - deletes an index

## SELECT Statement 

The ```SELECT``` statement is used to select data from a database.

The data returned is stored in a result table, called the result-set.

``` SQL
SELECT column1, column2, ...
FROM table_name;
```
Here, column1, column2, ... are the field names of the table you want to select data from. If you want to select all the fields available in the table, use the following syntax:

``` SQL
SELECT *
FROM table_name;
```

### SELECT DISTINCT

The ```SELECT DISTINCT``` statement is used to return only distinct (different) values.

Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.

``` SQL
SELECT DISTINCT column1, column2, ...
FROM table_name;
```

Imagine a customer database where in one field it contains the country of the customer. If you were to use SELECT without DISTINCT, it's likely you'll get loads of duplicated. DISTINCT allows you to retrieve distinct values.

``` SQL
SELECT DISTINCT Country
FROM Customers;
```

### SELECT COUNT DISTINCT

This statement lists the number of different (distinct) entries. For example if you had a column called countries you may have 000's of rows. SELECT COUNT DISTINCT will return the number of distinct entries so for our column with 000's of rows, there may only be 20 distinct countries:

```SQL
SELECT COUNT(DISTINCT Country)
FROM Customers;
```

### WHERE Clause

The ```WHERE``` clause is used to filter records.

It is used to extract only those records that fulfill a specified condition.

``` SQL
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

Taking our customer example we could filter by country:

```SQL
SELECT *
FROM Customers
WHERE Country='Wales';
```

The above command would return all customers from Wales.

#### Text Fields vs. Numeric Fields

SQL requires single quotes around text values (most database systems will also allow double quotes).

However, numeric fields should not be enclosed in quotes:

```SQL
SELECT *
FROM Customers
WHERE Customer ID=1;
```

#### Operators in The WHERE Clause

The following operators can be used in the WHERE clause:

* =	Equal	
* '>' Greater than	
* '<'	 Less than	
* '>='	Greater than or equal	
* <=	Less than or equal	
* <>	Not equal. Note: In some versions of SQL this operator may be written as !=	
* BETWEEN	Between a certain range	
* LIKE	Search for a pattern	
* IN	To specify multiple possible values for a column

#### The SQL AND, OR and NOT Operators

The WHERE clause can be combined with AND, OR, and NOT operators.

The AND and OR operators are used to filter records based on more than one condition:

* The AND operator displays a record if all the conditions separated by AND are TRUE.
* The OR operator displays a record if any of the conditions separated by OR is TRUE.
* The NOT operator displays a record if the condition(s) is NOT TRUE.

##### AND Syntax

``` SQL
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin';
```
##### OR Syntax

``` SQL
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

SELECT * FROM Customers
WHERE City='Berlin' OR City='München';
```

##### NOT Syntax

```SQL
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

SELECT *
FROM Customers
WHERE NOT Country='Germany';
```

#### Combining AND, OR and NOT

You can also combine the AND, OR and NOT operators.

The following SQL statement selects all fields from "Customers" where country is "Germany" AND city must be "Berlin" OR "München" (use parenthesis to form complex expressions):

``` SQL
SELECT *
FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');
```

The following SQL statement selects all fields from "Customers" where country is NOT "Germany" and NOT "USA":

``` SQL
SELECT *
FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';
```

Exercise:

Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 12209.

``` SQL
SELECT *
FROM Customers
WHERE City = 'Berlin' AND PostalCode = 12209;
```

### ORDER BY

The ORDER BY keyword is used to sort the result-set in ascending or descending order.

The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

ORDER BY Syntax:

``` SQL
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

SELECT *
FROM Customers
ORDER BY Country;
```
#### ORDER BY DESC

The following SQL statement selects all customers from the "Customers" table, sorted DESCENDING by the "Country" column:

Example

```SQL
SELECT *
FROM Customers
ORDER BY Country DESC;
```

#### ORDER BY Several Columns

The following SQL statement selects all customers from the "Customers" table, sorted by the "Country" and the "CustomerName" column. This means that it orders by Country, but if some rows have the same Country, it orders them by CustomerName:

Example:
```SQL
SELECT *
FROM Customers
ORDER BY Country, CustomerName;
```

The following SQL statement selects all customers from the "Customers" table, sorted ascending by the "Country" and descending by the "CustomerName" column:

Example:
```SQL
SELECT *
FROM Customers
ORDER BY Country ASC, CustomerName DESC;

Exercise:

Select all records from the Customers table, sort the result alphabetically by the column City.

```SQL
SELECT *
FROM Customers
ORDER BY City;
```

Select all records from the Customers table, sort the result reversed alphabetically by the column City.
``` SQL
SELECT *
FROM Customers
ORDER BY City DESC;
```

Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City.
``` SQL
SELECT *
FROM Customers
ORDER BY Country, City;
```

SQL Keywords
Keyword	Description
ADD	Adds a column in an existing table
ADD CONSTRAINT	Adds a constraint after a table is already created
ALTER	Adds, deletes, or modifies columns in a table, or changes the data type of a column in a table
ALTER COLUMN	Changes the data type of a column in a table
ALTER TABLE	Adds, deletes, or modifies columns in a table
ALL	Returns true if all of the subquery values meet the condition
AND	Only includes rows where both conditions is true
ANY	Returns true if any of the subquery values meet the condition
AS	Renames a column or table with an alias
ASC	Sorts the result set in ascending order
BACKUP DATABASE	Creates a back up of an existing database
BETWEEN	Selects values within a given range
CASE	Creates different outputs based on conditions
CHECK	A constraint that limits the value that can be placed in a column
COLUMN	Changes the data type of a column or deletes a column in a table
CONSTRAINT	Adds or deletes a constraint
CREATE	Creates a database, index, view, table, or procedure
CREATE DATABASE	Creates a new SQL database
CREATE INDEX	Creates an index on a table (allows duplicate values)
CREATE OR REPLACE VIEW	Updates a view
CREATE TABLE	Creates a new table in the database
CREATE PROCEDURE	Creates a stored procedure
CREATE UNIQUE INDEX	Creates a unique index on a table (no duplicate values)
CREATE VIEW	Creates a view based on the result set of a SELECT statement
DATABASE	Creates or deletes an SQL database
DEFAULT	A constraint that provides a default value for a column
DELETE	Deletes rows from a table
DESC	Sorts the result set in descending order
DISTINCT	Selects only distinct (different) values
DROP	Deletes a column, constraint, database, index, table, or view
DROP COLUMN	Deletes a column in a table
DROP CONSTRAINT	Deletes a UNIQUE, PRIMARY KEY, FOREIGN KEY, or CHECK constraint
DROP DATABASE	Deletes an existing SQL database
DROP DEFAULT	Deletes a DEFAULT constraint
DROP INDEX	Deletes an index in a table
DROP TABLE	Deletes an existing table in the database
DROP VIEW	Deletes a view
EXEC	Executes a stored procedure
EXISTS	Tests for the existence of any record in a subquery
FOREIGN KEY	A constraint that is a key used to link two tables together
FROM	Specifies which table to select or delete data from
FULL OUTER JOIN	Returns all rows when there is a match in either left table or right table
GROUP BY	Groups the result set (used with aggregate functions: COUNT, MAX, MIN, SUM, AVG)
HAVING	Used instead of WHERE with aggregate functions
IN	Allows you to specify multiple values in a WHERE clause
INDEX	Creates or deletes an index in a table
INNER JOIN	Returns rows that have matching values in both tables
INSERT INTO	Inserts new rows in a table
INSERT INTO SELECT	Copies data from one table into another table
IS NULL	Tests for empty values
IS NOT NULL	Tests for non-empty values
JOIN	Joins tables
LEFT JOIN	Returns all rows from the left table, and the matching rows from the right table
LIKE	Searches for a specified pattern in a column
LIMIT	Specifies the number of records to return in the result set
NOT	Only includes rows where a condition is not true
NOT NULL	A constraint that enforces a column to not accept NULL values
OR	Includes rows where either condition is true
ORDER BY	Sorts the result set in ascending or descending order
OUTER JOIN	Returns all rows when there is a match in either left table or right table
PRIMARY KEY	A constraint that uniquely identifies each record in a database table
PROCEDURE	A stored procedure
RIGHT JOIN	Returns all rows from the right table, and the matching rows from the left table
ROWNUM	Specifies the number of records to return in the result set
SELECT	Selects data from a database
SELECT DISTINCT	Selects only distinct (different) values
SELECT INTO	Copies data from one table into a new table
SELECT TOP	Specifies the number of records to return in the result set
SET	Specifies which columns and values that should be updated in a table
TABLE	Creates a table, or adds, deletes, or modifies columns in a table, or deletes a table or data inside a table
TOP	Specifies the number of records to return in the result set
TRUNCATE TABLE	Deletes the data inside a table, but not the table itself
UNION	Combines the result set of two or more SELECT statements (only distinct values)
UNION ALL	Combines the result set of two or more SELECT statements (allows duplicate values)
UNIQUE	A constraint that ensures that all values in a column are unique
UPDATE	Updates existing rows in a table
VALUES	Specifies the values of an INSERT INTO statement
VIEW	Creates, updates, or deletes a view
WHERE	Filters a result set to include only records that fulfill a specified condition

From <https://www.w3schools.com/sql/sql_ref_keywords.asp> 

![image](https://user-images.githubusercontent.com/91537105/155357142-2315c7b9-f2a0-4380-a775-504826f95d4f.png)


