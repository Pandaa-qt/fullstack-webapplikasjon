CREATE TABLE Menu_category (
    category_id     SERIAL PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    description     TEXT
);
CREATE TABLE Menu_item (
    item_id         SERIAL PRIMARY KEY,
    category_id     INT REFERENCES Menu_category(category_id),
    name            VARCHAR(100) NOT NULL,
    description     TEXT,
    price           DECIMAL(10,2) NOT NULL,
    available       BOOLEAN DEFAULT TRUE
);
CREATE TABLE Customer (
    customer_id     SERIAL PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    phone           VARCHAR(20),
    email           VARCHAR(100)
);
CREATE TABLE Booking (
    booking_id      SERIAL PRIMARY KEY,
    customer_id     INT REFERENCES Customer(customer_id),
    booking_date    DATE NOT NULL,
    booking_time    TIME NOT NULL,
    num_people      INT NOT NULL,
    notes           TEXT,
    status          VARCHAR(50) DEFAULT 'pending'
);
CREATE TABLE Booking_action_log (
    action_id       SERIAL PRIMARY KEY,
    booking_id      INT REFERENCES Booking(booking_id),
    action          VARCHAR(50) NOT NULL,
    timestamp       TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO Menu_item (category_id, name, price) VALUES
(1, 'Biff med tilbehør', 249),
(1, 'Vegetar pasta', 179),
(2, 'Pizza Margherita', 159),
(2, 'Fiskesuppe', 149),
(3, 'Hamburger', 90),
(3, 'Pomesfrites', 40),
(4, 'Cola', 30),
(4, 'Cola zero', 30);
(5, 'Sprite', 30),
(5, 'fanta', 60);
(6, 'Kaffe', 25),
(6, 'Te', 20);
(7, 'vann', 50),
(7, 'Kake', 70);