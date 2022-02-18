# Learn SQL

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
* >	Greater than	
* <	Less than	
* >=	Greater than or equal	
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







