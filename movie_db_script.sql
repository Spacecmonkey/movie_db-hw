-- I did export this from lucid 
CREATE TABLE movies (
  movie_id SERIAL PRIMARY KEY,
  movie_name VARCHAR(150)
);

CREATE TABLE tickets (
  upc SERIAL PRIMARY KEY,
  amount INTEGER,
  movie_id INTEGER REFERENCES movies(movie_id)
);

CREATE TABLE concessions (
  item_id SERIAL PRIMARY KEY,
  prod_name VARCHAR(150)
);

CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  address VARCHAR(150),
  billing_info VARCHAR(150),
  upc INTEGER REFERENCES tickets(upc),
  item_id INTEGER REFERENCES concessions(item_id)
);

-- Insert for movies table
insert into movies (
	movie_id, movie_name
) values (
	1,
	'John Wick'
);

-- Insert for tickets table 
insert into tickets (
	upc, amount, movie_id
) values (
	1,
	1,
	1
);

--Insert for concessions table
insert into concessions (
	item_id, prod_name
) values (
	1,
	'Popcorn'
);



--Insert for customers table 
insert into customers (
    customer_id, first_name, last_name, address, billing_info, upc, item_id
) values (
    1,
    'Brolin',
    'OConnell',
    '101 Wherever Land That One St USA',
    '4242-4242-4242-4242 623 05/24',
    1,
    1
);












