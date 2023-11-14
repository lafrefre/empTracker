INSERT INTO department (id, name) VALUES
(1, 'Sales'),
(2, 'Engineering'),
(3, 'Marketing'),
(4, 'IT')
(5, 'HR');

INSERT INTO role (id, title, salary, department_id) VALUES
(1, 'Sales Manager', 60000, 1),
(2, 'Software Engineer', 80000, 2),
(3, 'Financial Analyst', 50000, 3),
(4, 'Marketing Specialist', 55000, 4),
(5, 'HR Manager', 65000, 5);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id) VALUES
(1, 'John', 'Doe', 1, NULL),
(2, 'Jane', 'Smith', 2, 1),
(3, 'Bob', 'Johnson', 3, 1),
(4, 'Alice', 'Williams', 2, 1),
(5, 'Charlie', 'Brown', 4, 2);