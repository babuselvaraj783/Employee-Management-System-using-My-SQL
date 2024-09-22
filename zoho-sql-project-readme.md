# Zoho SQL Project

This repository contains SQL scripts for creating and manipulating a database named "zoho" with employee data. The project demonstrates various SQL operations and concepts.

## Database Structure

The main table in this database is `emp_data`, which contains the following fields:

- Emp_ID (int)
- First_name (varchar(50))
- Second_name (varchar(50))
- Salary (int)
- Email (varchar(50))
- dept_Id (int)
- location (varchar(50))

## Features

This SQL project covers a wide range of SQL operations and concepts, including:

1. Database and table creation
2. Data insertion
3. Table alterations (adding, modifying, and dropping columns)
4. Data querying and filtering
5. Updating records
6. Aggregate functions (MIN, MAX, SUM, COUNT, AVG)
7. Grouping and ordering data
8. String and mathematical functions
9. Window functions (RANK, DENSE_RANK, ROW_NUMBER)
10. Subqueries
11. Stored procedures
12. Views

## Usage

1. Create the database:
   ```sql
   CREATE DATABASE zoho;
   USE zoho;
   ```

2. Run the table creation script for `emp_data`.

3. Insert the provided sample data.

4. Execute the various SQL commands and queries to explore different SQL operations.

## Sample Queries

Here are a few example queries included in the project:

```sql
-- Select employees with salary greater than 50000 in department 2
SELECT first_name 
FROM emp_data
WHERE salary > 50000 AND dept_id = 2;

-- Find the second highest salary
SELECT MAX(salary) FROM emp_data 
WHERE salary < (SELECT MAX(salary) FROM emp_data);

-- Rank employees by salary
SELECT *, RANK() OVER (ORDER BY salary DESC) AS ranking FROM emp_data;
```

## Stored Procedures

The project includes examples of stored procedures:

```sql
-- Procedure to select employees from a specific location
DELIMITER //
CREATE PROCEDURE balu(IN abc VARCHAR(50))
BEGIN
  SELECT * FROM emp_data
  WHERE location = abc;
END//
DELIMITER ;

-- Usage
CALL balu('salem');
```

## Contributing

Feel free to fork this repository and submit pull requests with improvements or additional SQL operations and queries.

## License

This project is open source and available under the [MIT License](LICENSE).
