-- Databricks notebook source
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Employees_Extra;
DROP TABLE IF EXISTS Classes;
DROP TABLE IF EXISTS Attendance;
DROP TABLE IF EXISTS Bank_Accounts;
DROP TABLE IF EXISTS Projects;
DROP TABLE IF EXISTS Reviews;
DROP TABLE IF EXISTS Suppliers;
DROP TABLE IF EXISTS User_Settings;
DROP TABLE IF EXISTS Maintenance;
-- Table 1: Employees
CREATE TABLE Employees (
    employee_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employees VALUES
(1, 'Alice', 'HR', 5000),
(2, 'Bob', 'IT', NULL),
(3, 'Charlie', NULL, 7000),
(4, 'Dana', 'Finance', NULL);


-- Table 2: Orders
CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    delivery_date DATE
);

INSERT INTO Orders VALUES
(101, 201, '2024-12-01'),
(102, 202, NULL),
(103, NULL, '2024-12-03');


-- Table 3: Students
CREATE TABLE Students (
    student_id INT,
    name VARCHAR(50),
    grade INT
);

INSERT INTO Students VALUES
(1, 'Ethan', 85),
(2, 'Maya', NULL),
(3, 'Olivia', 90);


-- Table 4: Products
CREATE TABLE Products (
    product_id INT,
    name VARCHAR(50),
    price INT,
    discount INT
);

INSERT INTO Products VALUES
(501, 'Keyboard', 25, NULL),
(502, 'Mouse', 15, 5),
(503, 'Monitor', 100, NULL);


-- Table 5: Customers
CREATE TABLE Customers (
    customer_id INT,
    name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO Customers VALUES
(1, 'Linda', NULL),
(2, 'Joseph', 'joseph@mail.com'),
(3, 'Nia', NULL);


-- Table 6: Payments
CREATE TABLE Payments (
    payment_id INT,
    method VARCHAR(50),
    status VARCHAR(50)
);

INSERT INTO Payments VALUES
(301, 'Credit', NULL),
(302, 'PayPal', 'Success'),
(303, NULL, 'Failed');


-- Table 7: Inventory
CREATE TABLE Inventory (
    item_id INT,
    item_name VARCHAR(50),
    quantity INT
);

INSERT INTO Inventory VALUES
(1, 'Pen', NULL),
(2, 'Notebook', 150),
(3, 'Eraser', NULL);


-- Table 8: Employees_Extra
CREATE TABLE Employees_Extra (
    emp_id INT,
    bonus INT,
    commission INT
);

INSERT INTO Employees_Extra VALUES
(1, NULL, 300),
(2, 100, NULL),
(3, NULL, NULL);


-- Table 9: Classes
CREATE TABLE Classes (
    class_id INT,
    subject VARCHAR(50),
    room VARCHAR(50)
);

INSERT INTO Classes VALUES
(11, 'Math', NULL),
(12, 'Science', 'Lab A'),
(13, 'English', NULL);


-- Table 10: Attendance
CREATE TABLE Attendance (
    student_id INT,
    date DATE,
    status VARCHAR(20)
);

INSERT INTO Attendance VALUES
(1, '2025-04-01', NULL),
(2, '2025-04-01', 'Present'),
(3, '2025-04-01', 'Absent');


-- Table 11: Bank_Accounts
CREATE TABLE Bank_Accounts (
    account_id VARCHAR(10),
    account_type VARCHAR(50),
    balance INT
);

INSERT INTO Bank_Accounts VALUES
('A1', 'Savings', NULL),
('A2', 'Current', 5000),
('A3', NULL, 2000);


-- Table 12: Projects
CREATE TABLE Projects (
    project_id INT,
    title VARCHAR(100),
    start_date DATE,
    end_date DATE
);

INSERT INTO Projects VALUES
(1, 'Website Revamp', '2025-01-10', NULL),
(2, 'Mobile App', NULL, '2025-06-01'),
(3, 'Data Migration', NULL, NULL);


-- Table 13: Reviews
CREATE TABLE Reviews (
    review_id INT,
    product_id INT,
    comment VARCHAR(100),
    rating INT
);

INSERT INTO Reviews VALUES
(1, 501, 'Great product', 4),
(2, 502, NULL, NULL),
(3, 503, 'Works fine', 3);


SELECT
    order_id,
    customer_id,
    COALESCE(CAST(delivery_date AS STRING), 'Pending') AS delivery_status
FROM Orders;

-- Table 14: Suppliers
CREATE TABLE Suppliers (
    supplier_id INT,
    name VARCHAR(50),
    phone VARCHAR(20),
    alt_phone VARCHAR(20)
);

INSERT INTO Suppliers VALUES
(1, 'Global Goods', NULL, '123456789'),
(2, 'Best Supplies', '987654321', NULL),
(3, 'ValueSource', NULL, NULL);


-- Table 15: User_Settings
CREATE TABLE User_Settings (
    user_id INT,
    theme VARCHAR(20),
    language VARCHAR(20),
    timezone VARCHAR(20)
);

INSERT INTO User_Settings VALUES
(1, NULL, 'English', NULL),
(2, 'Dark', NULL, 'UTC+1'),
(3, NULL, NULL, NULL);


-- Table 16: Maintenance
CREATE TABLE Maintenance (
    record_id INT,
    machine_id VARCHAR(10),
    issue VARCHAR(50),
    technician VARCHAR(50)
);

INSERT INTO Maintenance VALUES
(1, 'M101', 'Overheating', NULL),
(2, 'M102', NULL, NULL),
(3, 'M103', 'Jammed', 'Alex');

-- Q1
SELECT
    employee_id,
    name,
    COALESCE(salary, 0) AS salary_with_default
FROM Employees;

-- Q2
SELECT
    employee_id,
    name,
    COALESCE(department, 'Not Assigned') AS department_name
FROM Employees;

-- Q3
SELECT
    order_id,
    customer_id
FROM Orders
WHERE customer_id IS NULL;

-- Q4
SELECT
    order_id,
    customer_id,
    IFNULL(delivery_date, 'Pending') AS delivery_status
FROM Orders;

-- Q5
SELECT
    student_id,
    name,
    COALESCE(grade, 0) AS final_grade
FROM Students;

-- Q6
SELECT
    COUNT(*) AS not_graded_count
FROM Students
WHERE grade IS NULL;

-- Q7
SELECT
    product_id,
    name,
    price - COALESCE(discount, 0) AS final_price
FROM Products;

-- Q8
SELECT
    COUNT(*) AS missing_email_count
FROM Customers
WHERE email IS NULL;

-- Q9
SELECT
    customer_id,
    name,
    COALESCE(email, 'No Email') AS email_display
FROM Customers;

-- Q10
SELECT
    payment_id,
    COALESCE(method, 'Unknown') AS method_display,
    status
FROM Payments;

-- Q11
SELECT
    item_id,
    item_name,
    COALESCE(quantity, 0) AS quantity_checked
FROM Inventory;

-- Q12
SELECT
    emp_id,
    COALESCE(bonus, commission) AS first_available_reward
FROM Employees_Extra;

-- Q13
SELECT
    COUNT(*) AS no_room_count
FROM Classes
WHERE room IS NULL;

-- Q14
SELECT
    student_id,
    date,
    COALESCE(status, 'Not Marked') AS attendance_status
FROM Attendance;

-- Q15
SELECT
    account_id,
    COALESCE(account_type, 'Unknown') AS type_display,
    COALESCE(balance, 0) AS balance_checked
FROM Bank_Accounts;

-- Q16
SELECT
    project_id,
    title,
    COALESCE(start_date, 'TBD') AS start_display
FROM Projects;

-- Q17
SELECT
    review_id,
    product_id,
    COALESCE(comment, 'No Comment') AS comment_display,
    COALESCE(rating, 0) AS rating_display
FROM Reviews;

-- Q18
SELECT
    supplier_id,
    name,
    COALESCE(phone, alt_phone, 'No Contact') AS contact_number
FROM Suppliers;

-- Q19
SELECT
    user_id,
    COALESCE(theme, 'Light') AS theme_set,
    COALESCE(language, 'English') AS language_set,
    COALESCE(timezone, 'UTC') AS timezone_set
FROM User_Settings;

-- Q20
SELECT
    record_id,
    machine_id,
    COALESCE(issue, 'Unknown Issue') AS issue_log,
    COALESCE(technician, 'Not Assigned') AS technician_name
FROM Maintenance;
