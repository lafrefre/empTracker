CREATE DATABASE employee_db

USE employee_db

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Role (
id INT PRIMARY KEY,
title VARCHAR(50) NOT NULL,
department_id INT NOT NULL,
FOREIGN KEY (department_id) REFERENCES Department(id)
);

CREATE TABLE Employee
id INT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
role_id INT,
manager_id INT,
FOREIGN KEY (role_id) REFERENCES role(id),
FOREIGN KEY (manager_id) REFERENCES employee(id)