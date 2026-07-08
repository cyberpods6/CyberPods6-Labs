[9/22/2024 1:17 PM]
# sql-standard-commands
Here are some basic SQL commands and their descriptions.

## SQL Commands
1. **SELECT**

   Used to retrieve data from one or more tables.
   ### Example:
   ```sql
   SELECT column1, column2 FROM table_name;
   ```
1. **INSERT**

   Used to insert new records into a table.

   ### Example:
   ```sql
   INSERT INTO table_name (column1, column2) 
   VALUES (value1, value2);
   ```
3. **UPDATE**

   Used to modify existing records in a table.

   ### Example:
   ```sql
   UPDATE table_name
   SET column1 = value1, column2 = value2
   WHERE condition;
   ```
4. **DELETE**

   Used to remove records from a table.
   ### Example:
   ```sql
   DELETE FROM table_name WHERE condition;
   ```
5. **CREATE TABLE**

   Used to create a new table in the database.
   ### Example:
   ```sql
   CREATE TABLE table_name (
       column1 datatype,
       column2 datatype,
       column3 datatype
   );
   ```
6. **ALTER TABLE**

   Used to modify an existing table structure.
   ### Example:
   ```sql
   ALTER TABLE table_name
   ADD column_name datatype;
   ```
7. **DROP TABLE**

   Used to delete an entire table from the database.
   ### Example:
   ```sql
   DROP TABLE table_name;
   ```
8. **WHERE**

   Used to filter records based on a specified condition.
   ### Example:
   ```sql
   SELECT * FROM table_name WHERE condition;
   ```
9, **DESCRIBE**

   To retrieve the structure of a table in MySQL, you can use the following SQL commands:
   
   The simplest and most commonly used command is DESCRIBE:
   ```sql
   DESCRIBE table_name;
   ```

   This command will display information about the table's columns, including:
- Column names
- Data types
- Whether NULL values are allowed
- Key information (e.g. primary key)
- Default values
- Extra information (e.g. auto_increment)[1]

You can also use the shorthand version:
```sql
DESC table_name;
```

## References
1. Hostman Team. (2023, November 23). Basic SQL command list: A step-by-step guide. Hostman. https://hostman.com/tutorials/basic-sql-commands/
2. Basic SQL commands - The list of database queries and statements you should know. (2020, January 1). freeCodeCamp.org. https://www.freecodecamp.org/news/basic-sql-commands/
3. Zanini, A. (2024, May 27). Glossary of the SQL commands you need to know. DbVisualizer. https://www.dbvis.com/thetable/glossary-of-the-sql-commands-you-need-to-know/
4. SQL commands. (n.d.). Codecademy. https://www.codecademy.com/article/sql-commands
5. SQL syntax. (n.d.). W3Schools Online Web Tutorials. https://www.w3schools.com/sql/sql_syntax.asp
6. SQL examples. (n.d.). W3Schools Online Web Tutorials. https://www.w3schools.com/sql/sql_examples.asp
