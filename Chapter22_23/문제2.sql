create database pethotel;
use pethotel;

create table PetOwners(
	ownerID int AUTO_INCREMENT Primary Key	NOT NULL,
	name varchar(100) ,
	contact	int	
);

create table pets(
	petID	int AUTO_INCREMENT Primary Key	NOT NULL,
	name	varchar(100),
	species	varchar(100),
	breed	varchar(100),
	ownerID	int,
    foreign key (ownerID) references  PetOwners(ownerID)
);

create table reservations(
	reservationID	int AUTO_INCREMENT Primary Key	NOT NULL,
	roomID	int,
	startDate	date,
	endDate	date,
	petID int,
	foreign key (petID) references  pets(petID)

);

create table rooms(
	roomID	int AUTO_INCREMENT Primary Key	NOT NULL,
	roomNumber	int,
	roomType	varchar(100),
	pricePerNight	int,
	reservationID	int,
    foreign key (reservationID) references  reservations(reservationID)
);

create table service(
	serviceID int AUTO_INCREMENT Primary Key	NOT NULL,
	serviceName	varchar(100),
	servicePrice int,
	reservationID int,
    foreign key (reservationID) references  reservations(reservationID)
);