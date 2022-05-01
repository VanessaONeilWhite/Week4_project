CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(13),
    email VARCHAR(50),
    address VARCHAR(100)
);

CREATE TABLE salesperson(
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(13),
    email VARCHAR(50),
    address VARCHAR(100)
);

CREATE TABLE service_employee(
    service_employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(13),
    email VARCHAR(50),
    address VARCHAR(100)
);

CREATE TABLE parts(
    part_id SERIAL PRIMARY KEY,
    part_name VARCHAR(50)
);

CREATE TABLE service_record(
    service_record_id SERIAL PRIMARY KEY,
    service_type varchar(100),
    part_id INTEGER,
    FOREIGN KEY(part_id) REFERENCES parts(part_id)
);

CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    amount NUMERIC(10,2),
    service_employee_id INTEGER,
    vin VARCHAR(15),
    service_record_id INTEGER,
    date TIMESTAMP,
    FOREIGN KEY(service_employee_id) REFERENCES service_employee(service_employee_id),
    FOREIGN KEY(vin) REFERENCES car(vin),
    FOREIGN KEY(service_record_id) REFERENCES service_record(service_record_id)
);

CREATE TABLE car(
    vin VARCHAR(15) PRIMARY KEY,
    year VARCHAR(4), 
    employee_id INTEGER,
    make VARCHAR(50),
    model VARCHAR(50),
    color VARCHAR(15),
    mileage NUMERIC(10,2),
    FOREIGN KEY(employee_id) REFERENCES salesperson(employee_id)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    amount NUMERIC(10,2),
    vin VARCHAR(15),
    service_ticket_id INTEGER,
    employee_id INTEGER,
    customer_id INTEGER,
    date TIMESTAMP,
    FOREIGN KEY(vin) REFERENCES car(vin),
    FOREIGN KEY(service_ticket_id) REFERENCES service_ticket(service_ticket_id),
    FOREIGN KEY(employee_id) REFERENCES salesperson(employee_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
