DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

\c employee_db;

CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    manager_id INTEGER,
    role_id INTEGER NOT NULL
);

CREATE TABLE roles(
    id SERIAL PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INTEGER NOT NULL
);

CREATE TABLE department(
    id SERIAL PRIMARY KEY,
    department_name VARCHAR(30) UNIQUE NOT NULL
);