-- Connect to the MySQL server and create the database
CREATE DATABASE loan_management;
USE loan_management;

-- Create the customer_income_status table
CREATE TABLE customer_income_status (
    customer_id INT PRIMARY KEY,
    income INT,
    grade VARCHAR(20),
    interest_rate DECIMAL(5,2)
);

-- Create the loan_status table
CREATE TABLE loan_status (
    customer_id INT,
    loan_amount INT,
    cibil_score INT,
    loan_status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customer_income_status(customer_id)
);

-- Create the customer_info table
CREATE TABLE customer_info (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    age INT
);

-- Create the country_state table
CREATE TABLE country_state (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(100)
);

-- Create the region_info table
CREATE TABLE region_info (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(100)
);

-- Insert data into customer_income_status
INSERT INTO customer_income_status (customer_id, income, grade, interest_rate) VALUES
(1, 16000, 'A', 7.00),
(2, 12000, 'B', 7.00),
(3, 7000, 'Middle Class', 7.00),
(4, 4000, 'Low Class', 5.00),
(5, 18000, 'A', 7.00),
(6, 10000, 'B', 7.00),
(7, 11000, 'B', 7.00),
(8, 9500, 'B', 7.00),
(9, 8000, 'Middle Class', 7.00),
(10, 3000, 'Low Class', 3.00),
(11, 17000, 'A', 7.00),
(12, 14000, 'A', 7.00),
(13, 6000, 'Middle Class', 7.00),
(14, 1000, 'Low Class', 3.00),
(15, 19000, 'A', 7.00),
(16, 13000, 'B', 7.00),
(17, 8500, 'Middle Class', 7.00),
(18, 3500, 'Low Class', 3.50),
(19, 16500, 'A', 7.00),
(20, 11500, 'B', 7.00),
(21, 9000, 'Middle Class', 7.00),
(22, 4500, 'Low Class', 3.50),
(23, 20000, 'A', 7.00),
(24, 12500, 'B', 7.00),
(25, 7000, 'Middle Class', 7.00),
(26, 2800, 'Low Class', 5.00),
(27, 15000, 'A', 7.00),
(28, 10500, 'B', 7.00),
(29, 5000, 'Middle Class', 7.00),
(30, 2000, 'Low Class', 3.50),
(31, 21000, 'A', 7.00),
(32, 10000, 'B', 7.00),
(33, 6000, 'Middle Class', 7.00),
(34, 3500, 'Low Class', 3.50),
(35, 16000, 'A', 7.00),
(36, 12000, 'B', 7.00),
(37, 4500, 'Middle Class', 7.00),
(38, 3000, 'Low Class', 5.00),
(39, 18000, 'A', 7.00),
(40, 11000, 'B', 7.00),
(41, 7000, 'Middle Class', 7.00),
(42, 4000, 'Low Class', 3.00),
(43, 19000, 'A', 7.00),
(44, 13000, 'B', 7.00),
(45, 8000, 'Middle Class', 7.00),
(46, 2500, 'Low Class', 2.50),
(47, 17000, 'A', 7.00),
(48, 10000, 'B', 7.00),
(49, 9000, 'Middle Class', 7.00),
(50, 4500, 'Low Class', 3.50),
(51, 15000, 'A', 7.00),
(52, 9500, 'B', 7.00),
(53, 8000, 'Middle Class', 7.00),
(54, 5000, 'Low Class', 3.50),
(55, 18000, 'A', 7.00),
(56, 12000, 'B', 7.00),
(57, 7000, 'Middle Class', 7.00),
(58, 3000, 'Low Class', 5.00),
(59, 16000, 'A', 7.00),
(60, 11000, 'B', 7.00);

select * from customer_income_status;

-- Insert data into customer_info
INSERT INTO customer_info (customer_id, name, gender, age) VALUES
(1, 'John Doe', 'Male', 30),
(2, 'Jane Smith', 'Female', 25),
(3, 'Jim Brown', 'Male', 40),
(4, 'Emily White', 'Female', 35),
(5, 'Michael Green', 'Male', 28),
(6, 'Sarah Black', 'Female', 33),
(7, 'Daniel Martin', 'Male', 29),
(8, 'Olivia Brown', 'Female', 27),
(9, 'Lucas White', 'Male', 34),
(10, 'Sophia Davis', 'Female', 23),
(11, 'Aiden Johnson', 'Male', 31),
(12, 'Mia Martinez', 'Female', 28),
(13, 'Ethan Miller', 'Male', 36),
(14, 'Ava Wilson', 'Female', 30),
(15, 'Mason Anderson', 'Male', 33),
(16, 'Isabella Taylor', 'Female', 32),
(17, 'Logan Thomas', 'Male', 25),
(18, 'Emily Lee', 'Female', 24),
(19, 'Jacob Harris', 'Male', 27),
(20, 'Abigail Clark', 'Female', 29),
(21, 'Jayden Lewis', 'Male', 28),
(22, 'Madison Robinson', 'Female', 26),
(23, 'Gabriel Walker', 'Male', 34),
(24, 'Ella Perez', 'Female', 31),
(25, 'Alexander Young', 'Male', 35),
(26, 'Charlotte King', 'Female', 33),
(27, 'Benjamin Wright', 'Male', 32),
(28, 'Amelia Scott', 'Female', 28),
(29, 'Henry Hall', 'Male', 30),
(30, 'Harper Green', 'Female', 27),
(31, 'Michael Adams', 'Male', 29),
(32, 'Evelyn Baker', 'Female', 25),
(33, 'William Gonzalez', 'Male', 33),
(34, 'Avery Nelson', 'Female', 24),
(35, 'James Carter', 'Male', 26),
(36, 'Sofia Mitchell', 'Female', 32),
(37, 'Elijah Perez', 'Male', 34),
(38, 'Chloe Roberts', 'Female', 31),
(39, 'Sebastian Turner', 'Male', 28),
(40, 'Victoria Phillips', 'Female', 30),
(41, 'Jackson Campbell', 'Male', 35),
(42, 'Aria Parker', 'Female', 29),
(43, 'Samuel Evans', 'Male', 32),
(44, 'Scarlett Edwards', 'Female', 28),
(45, 'David Collins', 'Male', 27),
(46, 'Grace Stewart', 'Female', 26),
(47, 'Joseph Sanchez', 'Male', 31),
(48, 'Zoey Morris', 'Female', 33),
(49, 'Owen Rogers', 'Male', 29),
(50, 'Lily Cook', 'Female', 25),
(51, 'Matthew Murphy', 'Male', 28),
(52, 'Hannah Ortiz', 'Female', 27),
(53, 'Wyatt Foster', 'Male', 30),
(54, 'Zoe Jenkins', 'Female', 29),
(55, 'Nathan Perry', 'Male', 32),
(56, 'Leah Bennett', 'Female', 28),
(57, 'Caleb Reed', 'Male', 34),
(58, 'Layla Howard', 'Female', 30),
(59, 'Ryan Ward', 'Male', 27),
(60, 'Addison Brooks', 'Female', 26);
select * from customer_info;

-- Create a trigger for row-level loan amount check
DELIMITER //
CREATE TRIGGER before_insert_loan_status
BEFORE INSERT ON loan_status
FOR EACH ROW
BEGIN
    IF NEW.loan_amount IS NULL THEN
        SET NEW.loan_status = 'Loan still processing';
    END IF;
END;
//
DELIMITER ;

-- Create a trigger for statement-level CIBIL score check
DELIMITER $$
CREATE TRIGGER after_insert_loan_status
BEFORE INSERT ON loan_status
FOR EACH ROW
BEGIN
    IF NEW.cibil_score > 900 THEN
        SET NEW.loan_status = 'High CIBIL score';
    ELSEIF NEW.cibil_score > 750 THEN
        SET NEW.loan_status = 'No penalty';
    ELSEIF NEW.cibil_score > 250 THEN
        SET NEW.loan_status = 'Penalty customers';
    ELSE
        DELETE FROM loan_status WHERE customer_id = NEW.customer_id;
    END IF;
END;
$$
DELIMITER ;

-- Create stored procedures for filtering information
DELIMITER //
CREATE PROCEDURE filter_high_cibil_score()
BEGIN
    SELECT * FROM loan_status WHERE cibil_score > 900;
END;
//

CREATE PROCEDURE filter_home_office_and_corporate()
BEGIN
    SELECT * FROM customer_info WHERE gender = 'Female';
END;
//
DELIMITER ;

-- Join all tables
SELECT c.customer_id, c.income, c.grade, c.interest_rate, l.loan_amount, l.cibil_score, l.loan_status, i.name, i.gender, i.age, s.state_name, r.region_name
FROM customer_income_status c
JOIN loan_status l ON c.customer_id = l.customer_id
JOIN customer_info i ON c.customer_id = i.customer_id
JOIN country_state s ON s.state_id = l.customer_id
JOIN region_info r ON r.region_id = l.customer_id;

-- Filter high CIBIL score
CALL filter_high_cibil_score();

-- Filter home office and corporate (example)
CALL filter_home_office_and_corporate();


