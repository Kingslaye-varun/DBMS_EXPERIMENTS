---

# DBMS_EXPERIMENTS

This repository contains SQL scripts and examples that demonstrate database management system (DBMS) concepts using a sample `Company` database. These scripts showcase essential database operations, including creating tables, inserting data, and establishing relationships between tables using foreign key constraints.

## Database Schema Overview

The `Company` database consists of the following tables:

1. **EMPLOYEE**: Stores employee details such as first name, last name, social security number (SSN), birth date, address, sex, salary, supervisor SSN, and department number.
2. **DEPARTMENT**: Stores department details such as department name, number, manager SSN, and manager start date.
3. **DEPT_LOCATIONS**: Stores the different locations of each department.
4. **PROJECT**: Stores project details, including project name, number, location, and department number.
5. **WORKS_ON**: Links employees to projects they are working on and tracks the hours worked.
6. **DEPENDENT**: Stores details of the dependents of employees, including name, sex, birth date, and relationship to the employee.

## Getting Started

### Prerequisites

- A MySQL, SQL Server, or any SQL-supported environment.
- Basic knowledge of SQL commands.

### Setting Up the Database

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/DBMS_EXPERIMENTS.git
   ```

2. Open your SQL client and execute the SQL script `company_db.sql` to create the database and tables.

3. Alternatively, you can run the individual `CREATE TABLE` and `INSERT INTO` statements provided in the `company_db.sql` file to set up the schema and populate the tables.

### Example Query

Here’s an example query to fetch employee project details:

```sql
SELECT E.Fname, E.Lname, P.Pname, W.Hours
FROM EMPLOYEE E, WORKS_ON W, PROJECT P
WHERE E.Ssn = W.Essn AND W.Pno = P.Pnumber;
```

This query will list the first and last names of employees, the projects they work on, and the number of hours spent on each project.

## Contents

- `Experiment.sql`: SQL script containing the database schema and data insertion commands.
- **EMPLOYEE**: Table definition for employees.
- **DEPARTMENT**: Table definition for departments.
- **DEPT_LOCATIONS**: Table definition for department locations.
- **PROJECT**: Table definition for projects.
- **WORKS_ON**: Table linking employees and projects, tracking the hours worked.
- **DEPENDENT**: Table definition for employee dependents.

## Contributing

Feel free to fork this repository and submit pull requests if you want to add new features, improve the scripts, or include additional queries.

## License

This project is licensed under the MIT License.

---
