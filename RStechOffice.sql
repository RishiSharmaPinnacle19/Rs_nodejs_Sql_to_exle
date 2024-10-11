create database RStechOffice;

use RStechOffice;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
)

INSERT INTO employees (first_name, last_name, department, salary, hire_date) VALUES
('Rishi', 'Doe', 'Technical', 150000.00, '2024-09-02'),
('Vikramjeet', 'Chawla', 'Technical', 25000.00, '2020-06-12'),
('Om', 'Sai', 'Sales', 50000.00, '2019-09-10'),
('Mahi', 'Pal', 'PWD', 82000.00, '2022-03-19'),
('Neha', 'Agarwal', 'HR', 55000.00, '2018-04-11')

select * from employees

