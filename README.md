# Employee Tracker CLI Application

This command-line application allows business owners to view and manage departments, roles, and employees in their company. It uses Node.js, Inquirer, and MySQL to interact with the user and perform database operations.

## Functionality

The application provides the following features:

- View all departments, roles, and employees
- Add a department, role, or employee
- Update an employee's role

### Known Issue

Currently, there is an issue with the "View all departments" functionality. The application may encounter an error related to the 'employee_db.departments' table not existing. This known issue can be resolved in further updates. 

## Instructions

To run the application, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/lafrefre/empTracker
   
## Install dependencies:

Copy code
npm install
Set up your MySQL database:

Create a database using the provided db.sql file.
Update database credentials:

Open index.js and replace the connection details with your MySQL database credentials.
Run the application:

node index.js
Select the desired options from the menu and interact with the application.

## Video Walkthrough
For a demonstration of the application's functionality and known issue, please refer to the walkthrough video.

file:///Users/mirandamendoza/Downloads/Untitled_%20Nov%2014%202023%201_39%20AM.webm

## Github repo 
https://github.com/lafrefre/empTracker

## Technologies Used
Node.js

Inquirer

MySQL2

## Contributing
Contributions are welcome! If you encounter any issues or have suggestions for improvement, feel free to open an issue or submit a pull request.

## License
This project is licensed under the MIT License.



