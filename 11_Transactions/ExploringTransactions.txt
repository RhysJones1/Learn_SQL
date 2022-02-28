# Exploring Transactions In SQL

A transaction is a unit of work that is performed against a database. Transactions are units or sequences
 of work accomplished in a logical order, whether in a manual fashion by a user or automatically by some sort of a database program.

A transaction is the propagation of one or more changes to the database. For example, if you are creating a record or updating a
 record or deleting a record from the table, then you are performing a transaction on that table.
 It is important to control these transactions to ensure the data integrity and to handle database errors.

Practically, you will club many SQL queries into a group and you will execute all of them together as a part of a transaction.

## Properties of Transactions

Transactions have the following four standard properties, usually referred to by the acronym ACID.

* Atomicity − ensures that all operations within the work unit are completed successfully. Otherwise, the transaction is aborted at the point of failure and all the previous operations are rolled back to their former state.

* Consistency − ensures that the database properly changes states upon a successfully committed transaction.

* Isolation − enables transactions to operate independently of and transparent to each other.

* Durability − ensures that the result or effect of a committed transaction persists in case of a system failure.

## Transaction Control

The following commands are used to control transactions.

* COMMIT − to save the changes.

* ROLLBACK − to roll back the changes.

* SAVEPOINT − creates points within the groups of transactions in which to ROLLBACK.

* SET TRANSACTION − Places a name on a transaction.

## Transactional Control Commands

Transactional control commands are only used with the DML Commands such as - INSERT, UPDATE and DELETE only.
 They cannot be used while creating tables or dropping them because these operations are automatically committed in the database.

### The COMMIT Command

The COMMIT command is the transactional command used to save changes invoked by a transaction to the database.

The COMMIT command is the transactional command used to save changes invoked by a transaction to the database.
The COMMIT command saves all the transactions to the database since the last COMMIT or ROLLBACK command.

### The ROLLBACK Command

The ROLLBACK command is the transactional command used to undo transactions that have not already been saved to the database.
 This command can only be used to undo transactions since the last COMMIT or ROLLBACK command was issued.

### The SAVEPOINT Command

A SAVEPOINT is a point in a transaction when you can roll the transaction back to a certain point without rolling back the entire transaction.

### The RELEASE SAVEPOINT Command

The RELEASE SAVEPOINT command is used to remove a SAVEPOINT that you have created.
