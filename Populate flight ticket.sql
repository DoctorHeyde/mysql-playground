-- ----------------------------
-- Airlines
-- ----------------------------
INSERT INTO Airlines (idAirlines, Airline_name) VALUES
(1, 'SkyWays'),
(2, 'BlueJet'),
(3, 'AeroStar');

-- ----------------------------
-- Airport
-- ----------------------------
INSERT INTO Airport (idAirport, Airport_name, Airport_initials) VALUES
(1, 'John F Kennedy International', 'JFK'),
(2, 'Los Angeles International', 'LAX'),
(3, 'Chicago O’Hare International', 'ORD');

-- ----------------------------
-- Passengers
-- ----------------------------
INSERT INTO Passengers (idPassenger, Passengers_name) VALUES
(1, 'Alice Johnson'),
(2, 'Bob Smith'),
(3, 'Carlos Rivera'),
(4, 'Diana Lee');

-- ----------------------------
-- Booking
-- ----------------------------
INSERT INTO Booking (idBooking, Flight_details, Airlines_idAirlines) VALUES
(1, 'NYC to LAX - Morning', 1),
(2, 'LAX to ORD - Evening', 2),
(3, 'ORD to NYC - Afternoon', 3);

-- ----------------------------
-- Ticket
-- ----------------------------
INSERT INTO Ticket (idTicket, Booking_idBooking, Ticket_number, Class_id) VALUES
(1, 1, 100001, 1),
(2, 1, 100002, 2),
(3, 2, 100003, 1),
(4, 3, 100004, 3);

-- ----------------------------
-- Class
-- ----------------------------
INSERT INTO Class (idClass, Class_name) VALUES
(1, 'Economy'),
(2, 'Business'),
(3, 'First Class');

-- ----------------------------
-- Passengers_has_Ticket
-- ----------------------------
INSERT INTO Passengers_has_Ticket
(Passengers_idPassenger, Ticket_idTicket, Ticket_purchase_date, Ticket_purchase_price)
VALUES
(1, 1, '2026-01-10', 350.00),
(2, 2, '2026-01-11', 550.00),
(3, 3, '2026-01-12', 400.00),
(4, 4, '2026-01-13', 900.00);

-- ----------------------------
-- Booking_has_Airport
-- ----------------------------
INSERT INTO Booking_has_Airport (Booking_idBooking, Airport_idAirport) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 3),
(3, 1);
