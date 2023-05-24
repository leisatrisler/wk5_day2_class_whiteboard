--create table for customer
create table if not exists customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(25),
	last_name VARCHAR(50),
	email VARCHAR(50)
);

create table if not exists tickets(
	ticket_id SERIAL primary key,
	title VARCHAR(50),
	description VARCHAR(255),
	customer_id INTEGER
);

create table if not exists movie(
	movie_id SERIAL primary key,
	ticket_id INTEGER,
	title VARCHAR(50),
	description VARCHAR(255),
	movie_time VARCHAR(25),
	customer_id INTEGER
);

create table if not exists theaters(
	ticket_id SERIAL primary key,
	foreign key(ticket_id) references tickets(ticket_id),
	theater_id INTEGER not null,
	movie_id INTEGER not null,
	foreign key(movie_id) references movie(movie_id)
);

create table if not exists ticket_purchase(
	movie_id SERIAL primary key,
	ticket_id INTEGER not null,
	title VARCHAR(50),
	description VARCHAR(255),
	movie_time VARCHAR(25),
	customer_id INTEGER
);


	

