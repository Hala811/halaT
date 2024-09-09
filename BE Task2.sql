CREATE TABLE cars (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   name VARCHAR(255) NOT NULL,
   model VARCHAR(255) NOT NULL,
   year INT NOT NULL,
   price FLOAT NOT NULL
);

INSERT INTO cars (name, model, year, price) VALUES
('Toyota', 'Camry', 2020, 25000),
('Honda', 'Civic', 2019, 22000),
('Ford', 'Mustang', 2018, 27000),
('Chevrolet', 'Malibu', 2017, 23000),
('BMW', '3 Series', 2021, 35000),
('Audi', 'A4', 2019, 33000),
('Mercedes', 'C-Class', 2018, 34000),
('Hyundai', 'Elantra', 2022, 20000),
('Kia', 'Optima', 2021, 21000),
('Nissan', 'Altima', 2016, 18000),
('Subaru', 'Impreza', 2020, 24000),
('Volkswagen', 'Jetta', 2017, 22000),
('Mazda', 'Mazda3', 2019, 23000),
('Lexus', 'IS', 2020, 31000),
('Jaguar', 'XE', 2018, 35000),
('Land Rover', 'Discovery', 2022, 55000),
('Porsche', 'Macan', 2021, 50000),
('Chrysler', '300', 2017, 26000),
('Buick', 'Regal', 2019, 24000),
('Jeep', 'Cherokee', 2020, 27000),
('GMC', 'Terrain', 2021, 28000);

SELECT * FROM cars;

SELECT * FROM cars WHERE year = 2018;

SELECT * FROM cars WHERE price > 20000;

SELECT name, COUNT(*) AS car_count FROM cars GROUP BY name;

SELECT year, AVG(price) AS average_price FROM cars GROUP BY year;

SELECT * FROM cars ORDER BY price DESC LIMIT 1;

SELECT * FROM cars WHERE price BETWEEN 15000 AND 30000;

UPDATE cars SET price = price * 1.10 WHERE YEAR < 2015;

INSERT INTO cars (name, model, year, price) VALUES ('Dodge', 'srs', 2014, 20000);

SELECT * FROM cars;

UPDATE cars SET price = price * 1.10 WHERE YEAR < 2015;

SELECT * FROM cars;

INSERT INTO cars (name, model, year, price) VALUES ('Dodge', 'srs', 2024, 40000);

INSERT INTO cars (name, model, year, price) VALUES ('Dodge', 'srs', 2010, 2000);

SELECT year, name, model, MAX(price) AS highest_price FROM cars  GROUP BY year;

SELECT name, AVG(price) AS average_price FROM cars GROUP BY "year" HAVING COUNT( * ) > 3;

DELETE FROM cars WHERE year < strftime('%Y', 'now') - 10;

SELECT * FROM cars ;




