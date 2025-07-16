create database health_care;
use health_care;
show tables;
select * from customer;
CREATE TABLE stroke_data (
    id INT,
    gender VARCHAR(10),
    age FLOAT,
    hypertension INT,
    heart_disease INT,
    ever_married VARCHAR(5),
    work_type VARCHAR(20),
    Residence_type VARCHAR(10),
    avg_glucose_level FLOAT,
    bmi FLOAT,
    smoking_status VARCHAR(20),
    stroke INT
);
select * from stroke_data;
ALTER TABLE customer
MODIFY customer_id INT,
MODIFY gender VARCHAR(10),
MODIFY age FLOAT,
MODIFY hypertension INT,
MODIFY heart_disease INT,
MODIFY ever_married VARCHAR(5),
MODIFY work_type VARCHAR(20),
MODIFY Residence_type VARCHAR(10),
MODIFY avg_glucose_level FLOAT,
MODIFY bmi FLOAT,
MODIFY smoking_status VARCHAR(20),
MODIFY stroke INT;
ALTER TABLE customer
CHANGE COLUMN `ï»¿id` customer_id INT;
SELECT bmi FROM customer LIMIT 5;
UPDATE customer SET bmi = NULL WHERE bmi NOT REGEXP 'N/A';
UPDATE customer 
SET bmi = NULL 
WHERE bmi NOT REGEXP '^[0-9.]+$' AND customer_id IS NOT NULL;
SET SQL_SAFE_UPDATES = 0;
UPDATE customer 
SET bmi = NULL 
WHERE bmi = 'N/A';
SET SQL_SAFE_UPDATES = 1;
ALTER TABLE customer
MODIFY customer_id INT,
MODIFY gender VARCHAR(10),
MODIFY age FLOAT,
MODIFY hypertension INT,
MODIFY heart_disease INT,
MODIFY ever_married VARCHAR(5),
MODIFY work_type VARCHAR(20),
MODIFY Residence_type VARCHAR(10),
MODIFY avg_glucose_level FLOAT,
MODIFY bmi FLOAT,
MODIFY smoking_status VARCHAR(20),
MODIFY stroke INT;
drop table stroke_data;
select * from customer;
show columns from customer;





