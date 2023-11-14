const mysql = require('mysql2');
const inquirer = require('inquirer');

// Connect to database
const connection = mysql.createConnection(
    {
        host: 'localhost',
        // MySQL username,
        user: 'root',
        // MySQL password
        password: 'mMendoBellA2023!',
        database: 'employee_db'
    },
    console.log(`Connected to the employee_db database.`)
);

// Inquirer prompts
const promptUser = () => {
    return inquirer.prompt([
        {
            type: 'list',
            name: 'action',
            message: 'What would you like to do?',
            choices: [
                'View all departments',
                'View all roles',
                'View all employees',
                'Quit'
            ]
        }
    ])
        .then((answers) => {
            switch (answers.action) {
                case 'View all department':
                    viewDepartment();
                    break;
                case 'View all roles':
                    viewRole();
                    break;
                case 'View all employees':
                    viewEmployee();
                case 'Quit':
                    connection.end();
                    break;
            }
        })
}


promptUser();

// View all departments
const viewDepartment = () => {
    connection.query('SELECT * FROM department;', (err, res) => {
        if (err) throw err;
        console.table(res);
        promptUser();
    });
};

// View all roles

const viewRole = () => {
    connection.query('SELECT * FROM role;', (err, res) => {
        if (err) throw err;
        console.table(res);
        promptUser();
    });
}

// View all employees

const viewEmployee = () => {
    connection.query('SELECT * FROM employee;', (err, res) => {
        if (err) throw err;
        console.table(res);
        promptUser();
    });
}

