SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Drop existing tables
-- ----------------------------
DROP TABLE IF EXISTS Booking_has_Airport;
DROP TABLE IF EXISTS Passengers_has_Ticket;
DROP TABLE IF EXISTS Class;
DROP TABLE IF EXISTS Ticket;
DROP TABLE IF EXISTS Booking;
DROP TABLE IF EXISTS Airport;
DROP TABLE IF EXISTS Airlines;
DROP TABLE IF EXISTS Passengers;

-- ----------------------------
-- Schema
-- ----------------------------
CREATE SCHEMA IF NOT EXISTS mydb;
USE mydb;

-- ----------------------------
-- Passengers
-- ----------------------------
CREATE TABLE Passengers (
  idPassenger INT NOT NULL,
  Passengers_name VARCHAR(45),
  PRIMARY KEY (idPassenger)
) ENGINE=InnoDB;

-- ----------------------------
-- Airlines
-- ----------------------------
CREATE TABLE Airlines (
  idAirlines INT NOT NULL,
  Airline_name VARCHAR(45),
  PRIMARY KEY (idAirlines)
) ENGINE=InnoDB;

-- ----------------------------
-- Airport
-- ----------------------------
CREATE TABLE Airport (
  idAirport INT NOT NULL,
  Airport_name VARCHAR(45),
  Airport_initials VARCHAR(45),
  PRIMARY KEY (idAirport)
) ENGINE=InnoDB;

-- ----------------------------
-- Booking
-- ----------------------------
CREATE TABLE Booking (
  idBooking INT NOT NULL,
  Flight_details VARCHAR(45),
  Airlines_idAirlines INT NOT NULL,
  PRIMARY KEY (idBooking),
  CONSTRAINT fk_Booking_Airlines
    FOREIGN KEY (Airlines_idAirlines)
    REFERENCES Airlines (idAirlines)
) ENGINE=InnoDB;

-- ----------------------------
-- Ticket
-- ----------------------------
CREATE TABLE Ticket (
  idTicket INT NOT NULL,
  Booking_idBooking INT NOT NULL,
  Ticket_number INT,
  Class_id INT,
  PRIMARY KEY (idTicket),
  CONSTRAINT fk_Ticket_Booking
    FOREIGN KEY (Booking_idBooking)
    REFERENCES Booking (idBooking)
) ENGINE=InnoDB;

-- ----------------------------
-- Class
-- ----------------------------
CREATE TABLE Class (
  idClass INT NOT NULL,
  Class_name VARCHAR(45),
  PRIMARY KEY (idClass)
) ENGINE=InnoDB;

-- ----------------------------
-- Passengers_has_Ticket
-- ----------------------------
CREATE TABLE Passengers_has_Ticket (
  Passengers_idPassenger INT NOT NULL,
  Ticket_idTicket INT NOT NULL,
  Ticket_purchase_date DATE,
  Ticket_purchase_price FLOAT,
  PRIMARY KEY (Passengers_idPassenger, Ticket_idTicket),
  CONSTRAINT fk_PHT_Passengers
    FOREIGN KEY (Passengers_idPassenger)
    REFERENCES Passengers (idPassenger),
  CONSTRAINT fk_PHT_Ticket
    FOREIGN KEY (Ticket_idTicket)
    REFERENCES Ticket (idTicket)
) ENGINE=InnoDB;

-- ----------------------------
-- Booking_has_Airport
-- ----------------------------
CREATE TABLE Booking_has_Airport (
  Booking_idBooking INT NOT NULL,
  Airport_idAirport INT NOT NULL,
  PRIMARY KEY (Booking_idBooking, Airport_idAirport),
  CONSTRAINT fk_BHA_Booking
    FOREIGN KEY (Booking_idBooking)
    REFERENCES Booking (idBooking),
  CONSTRAINT fk_BHA_Airport
    FOREIGN KEY (Airport_idAirport)
    REFERENCES Airport (idAirport)
) ENGINE=InnoDB;

SET FOREIGN_KEY_CHECKS = 1;
