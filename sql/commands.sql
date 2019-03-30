-- Drop database if it exists
DROP DATABASE IF EXISTS employees;

-- Create a database
CREATE DATABASE IF NOT EXISTS employees;

-- show all databases
show databases;

-- Change the current database as `test`
USE employees;

-- Check what is current database
SELECT DATABASE();

-- Show all tables name from current database
select TABLE_NAME from INFORMATION_SCHEMA.TABLES;

-- Drop the `test` database
DROP DATABASE IF EXISTS test;

-- Change the current database as `world`
USE world;

-- create a student table
CREATE TABLE student(
-- column name, data type, if null allowed 
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(60) NULL,
street VARCHAR(50) NOT NULL,
city VARCHAR(50) NOT NULL,
state CHAR(2) NOT NULL DEFAULT "PA", -- default value is PA
zip MEDIUMINT UNSIGNED NOT NULL, -- MEDIUMINT medium sized integer, UNSIGNED only positive number
phone VARCHAR(20) NOT NULL,
birth_date DATE NOT NULL,
sex ENUM('M', 'F') NOT NULL,
date_entered TIMESTAMP,  -- TIMESTAMP- for date and time
lunch_cost FLOAT NULL,
student_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY);

-- show tables in database
SHOW TABLES;

select * from employees;
