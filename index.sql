-- Table 1: Menu_category
CREATE TABLE Menu_category (
    category_id     SERIAL PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    description     TEXT
);

-- Table 2: Menu_item
CREATE TABLE Menu_item (
    item_id         SERIAL PRIMARY KEY,
    category_id     INT REFERENCES Menu_category(category_id),
    name            VARCHAR(100) NOT NULL,
    description     TEXT,
    price           DECIMAL(10,2) NOT NULL,
    available       BOOLEAN DEFAULT TRUE
);

-- Table 3: Customer
CREATE TABLE Customer (
    customer_id     SERIAL PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    phone           VARCHAR(20),
    email           VARCHAR(100)
);

-- Table 4: Booking
CREATE TABLE Booking (
    booking_id      SERIAL PRIMARY KEY,
    customer_id     INT REFERENCES Customer(customer_id),
    booking_date    DATE NOT NULL,
    booking_time    TIME NOT NULL,
    num_people      INT NOT NULL,
    notes           TEXT,
    status          VARCHAR(50) DEFAULT 'pending'
);

-- Table 5: Employee
CREATE TABLE Employee (
    employee_id     SERIAL PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    email           VARCHAR(100),
    role            VARCHAR(50)
);

-- Table 6: Booking_action_log
CREATE TABLE Booking_action_log (
    action_id       SERIAL PRIMARY KEY,
    booking_id      INT REFERENCES Booking(booking_id),
    employee_id     INT REFERENCES Employee(employee_id),
    action          VARCHAR(50) NOT NULL,
    timestamp       TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
