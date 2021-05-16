create table people (
	id SERIAL PRIMARY KEY,
    name varchar(200),
	age smallint,
	street varchar(200),
	city varchar(200),
	state varchar(200),
	zip varchar(10),
	lng double precision,
	lat double precision,
	imported bool
);
/