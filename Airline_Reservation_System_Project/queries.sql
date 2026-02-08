
-- List all confirmed bookings
SELECT p.name, f.source, f.destination
FROM Bookings b
JOIN Passengers p ON b.passenger_id = p.passenger_id
JOIN Flights f ON b.flight_id = f.flight_id
WHERE b.status = 'CONFIRMED';
