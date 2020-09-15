--Write a transaction to:
--Add a new role for employees called Automotive Mechanic
--Add five new mechanics, their data is up to you
--Each new mechanic will be working at all three of these dealerships: Sollowaye Autos of New York, Hrishchenko Autos of New York and Cadreman Autos of New York

SELECT * FROM employeetypes

INSERT INTO public.employeetypes(name)
VALUES('Automotive Mechanic')

INSERT INTO employees(first_name, last_name, email_address, phone, employee_type_id)
VALUES
('Shady', 'Grant', 'shadygrant@gmail.com', '615-676-5123', 8),
('Fady', 'Grant', 'fadygrant@gmail.com', '615-555-5123', 8),
('Mohsen', 'Khair', 'mohsenkhair@gmail.com', '615-676-5523', 8),
('John', 'Smith', 'johnsmith@gmail.com', '615-676-5145', 8),
('Leo', 'Messi', 'leomessi@gmail.com', '615-987-5123', 8)

SELECT * FROM employees ORDER BY employee_id DESC;

SELECT * FROM dealerships
WHERE business_name LIKE 'Sollowaye%' OR business_name LIKE 'Hrishchenko%' OR business_name LIKE 'Cadreman%'

SELECT * FROM dealershipemployees

INSERT INTO dealershipemployees(dealership_id, employee_id)
VALUES
(50,1001),
(128,1001),
(322,1001),
(50,1002),
(128,1002),
(322,1002),
(50,1003),
(128,1003),
(322,1003),
(50,1004),
(128,1004),
(322,1004),
(50,1005),
(128,1005),
(322,1005)
 
 COMMIT;

--Create a transaction for:
--Creating a new dealership in Washington, D.C. called Felphun Automotive
--Hire 3 new employees for the new dealership: Sales Manager, General Manager and Customer Service.
--All employees that currently work at Scrogges Autos of District of Columbia will now start working at Felphun Automotive instead.

SELECT * FROM dealerships ORDER BY dealership_id DESC;

INSERT INTO dealerships(business_name, phone, city, state, website, tax_id)
VALUES
('Felphun Automotive', '655-463-1234', 'Seattle', 'Washington', 'http://www.felphunautomative.com', 'gh-677-ia-08gb')

SELECT * FROM employees
SELECT * FROM employeetypes

INSERT INTO employees(first_name, last_name, email_address, phone, employee_type_id)
VALUES
('Luis', 'Suarez', 'luissuarez@gmail.com', '615-372-5123', 3),
('Cristiano', 'Ronaldo', 'cristianoronaldo@gmail.com', '615-090-5123', 4),
('Gerrard', 'Pique', 'gerradpique@gmail.com', '123-372-5123', 6)

SELECT * FROM dealerships
WHERE business_name LIKE 'Felphun%'

SELECT * FROM dealershipemployees 
WHERE dealership_id =129;

UPDATE dealershipemployees
SET dealership_id = '1001'
WHERE dealership_id = 129
