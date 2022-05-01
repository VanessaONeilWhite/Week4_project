INSERT INTO customer (first_name, last_name, phone, email, address) VALUES 
('Vanessa', 'Ludwig', '1234567890', 'grumpygrape08@aol.com', 'Buffalo, NY'),
('William', 'James', '2345678901', 'williamj@gmail.com', 'Silver Springs, MD'),
('Sunny', 'Dog', '3456789012', 'sunny@iamdog.com', 'The Streets, NY'),
('Luna', 'Dog', '4567890123', 'luna@iamdog.com', 'Treat Street, NY'),
('Frankie', 'OW', '5678901234', 'dontemailme@icantread.com', 'Baby, NY');

INSERT INTO salesperson (first_name, last_name, phone, email, address) VALUES
('Amy', 'Poehler', '6789012345', 'yesplease@gmail.com', 'New York, NY'),
('Javier', 'Marias', '7890123456', 'heartsowhite@gmail.com', 'Barcelona, Spain'),
('Suzanne', 'Collins', '8901234567', 'hungergames@gmail.com', 'District, 9'),
('George', 'R R Martin', '9012345678', 'dancewithdragons@gmail.com', '123 Winterfell'),
('Brandon', 'Sanderson', '0123456789', 'rhythmofwar@gmail.com', '123 Literature');

INSERT INTO service_employee (first_name, last_name, phone, email, address) VALUES
('Harvey', 'Daniels', '2573984930', 'upstanders@gmail.com', 'Oklahoma City, OK'),
('F Scott', 'Fitzgerald', '9075783843', 'greatgatsby@gmail.com', 'Greenlight, NY'),
('John', 'Green', '1245694345', 'faultinourstars@gmail.com', 'Suburbia Town, Suburbia'),
('Douglas', 'Adams', '2124839253', 'hitchikersguide@gmail.com', 'Blackhole, Space'),
('Tara', 'Westover', '4356734567', 'educated@gmail.com', 'Mormonsville, Iowa');

INSERT INTO parts (part_name) VALUES
('engine'),
('windshield_wipers'),
('exhaust_pipe'),
('breakpads'),
('airbags');

INSERT INTO service_record(service_type) VALUES
('oil change'),
('detailed'),
('tires_rotated'),
('carborater replaced'),
('replaced filters'); 

INSERT INTO car(vin, year, make, model, color, mileage) VALUES
('123','2008', 'Volkswagon', 'Beetle', 'Blue', '1600'),
('234','2009', 'Nissan', 'Altima', 'Tan', '2000'),
('345','2013', 'Mazda', '3', 'grey', '1300'),
('456', '2018', 'Subaru', 'Impreza', 'black', '0'),
('678','2021', 'Subaru', 'Forester', 'black', '0');

INSERT INTO invoice(amount, vin, employee_id, customer_id) VALUES
('2700', '123', 1, 1),
('4566', '234', 2, 3),
('57645', '345', 3, 4),
('12343', '456', 4, 2),
('12355', '678', 5, 5); 

INSERT INTO service_ticket(amount, service_employee_id, vin, service_record_id) VALUES
(34.99, 1, 123, 1),
(206.80, 2, 234, 2),
(4562.00, 1, 123, 3),
(452.45, 4, 678, 4),
(234.42, 5, 345, 5);
