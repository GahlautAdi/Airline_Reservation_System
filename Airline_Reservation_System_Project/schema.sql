
-- Airline Reservation Database Schema

CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    source VARCHAR(50),
    destination VARCHAR(50),
    departure_time DATETIME
);

CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    flight_id INT,
    passenger_id INT,
    status VARCHAR(30),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);
