DROP TABLE assignments;
DROP TABLE animals;
DROP TABLE enclosures;
DROP TABLE staff;


CREATE TABLE staff(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employmentNumber INT
);

INSERT INTO staff (name, employmentNumber) VALUES (
    'Shiro', 9876
);
INSERT INTO staff (name, employmentNumber) VALUES (
    'Lance', 8457
);
INSERT INTO staff (name, employmentNumber) VALUES (
    'Keith', 1543
);
INSERT INTO staff (name, employmentNumber) VALUES (
    'Hunk', 0674
);
INSERT INTO staff (name, employmentNumber) VALUES (
    'Pidge', 8354
);


CREATE TABLE enclosures(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintence BOOLEAN
);

INSERT INTO enclosures (name, capacity, closedForMaintence) VALUES(
    'BOB', 2, false
);
INSERT INTO enclosures (name, capacity, closedForMaintence) VALUES(
    'Bartholomew', 3, false
);
INSERT INTO enclosures (name, capacity, closedForMaintence) VALUES(
    'Beetle Juice', 1, true
);
INSERT INTO enclosures (name, capacity, closedForMaintence) VALUES(
    'Bakugou', 8, true
);
INSERT INTO enclosures (name, capacity, closedForMaintence) VALUES(
    'Beatrice', 2, false
);


CREATE TABLE animals(
    id SERIAL,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosures(id)
);

INSERT INTO animals(name, type, age, enclosure_id)VALUES(
    'Simon', 'Beetle', 1, 3
);
INSERT INTO animals(name, type, age, enclosure_id)VALUES(
    'Koumori', 'Bat', 7, 1
);
INSERT INTO animals(name, type, age, enclosure_id)VALUES(
    'Legoshi', 'Wolf', 16, 2
);
INSERT INTO animals(name, type, age, enclosure_id)VALUES(
    'Juno', 'Wolf', 14, 2
);
INSERT INTO animals(name, type, age, enclosure_id)VALUES(
    'Batman', 'Bat', 2, 1
);
INSERT INTO animals(name, type, age, enclosure_id)VALUES(
    'Kuro', 'Wolf', 6, 2
);
INSERT INTO animals(name, type, age, enclosure_id)VALUES(
    'Taiga', 'Tiger', 1, 5
);
INSERT INTO animals(name, type, age, enclosure_id)VALUES(
    'Barbara', 'Tiger', 8, 5
);


CREATE TABLE assignments(
    id SERIAL,
    employee_id INT REFERENCES staff(id),
    enclosure_id INT REFERENCES enclosures(id),
    day VARCHAR(255)
);

INSERT INTO assignments(employee_id, enclosure_id, day) VALUES(
    1, 2, 'Tuesday'
);
INSERT INTO assignments(employee_id, enclosure_id, day) VALUES(
    1, 1, 'Wednesday'
);
INSERT INTO assignments(employee_id, enclosure_id, day) VALUES(
    2, 1, 'Wednesday'
);
INSERT INTO assignments(employee_id, enclosure_id, day) VALUES(
    5, 5, 'Friday'
);
INSERT INTO assignments(employee_id, enclosure_id, day) VALUES(
    3, 5, 'Friday'
);
INSERT INTO assignments(employee_id, enclosure_id, day) VALUES(
    4, 3, 'Thursday'
);
INSERT INTO assignments(employee_id, enclosure_id, day) VALUES(
    4, 4, 'Saturday'
);