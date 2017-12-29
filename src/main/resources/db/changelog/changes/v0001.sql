CREATE TABLE users (
	id serial NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE items (
	id serial NOT NULL,
	name VARCHAR(255) NOT NULL,
	user_id integer NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_items_users FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE offers (
	id serial NOT NULL,
	item_id integer NOT NULL,
	start_date TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
	end_date TIMESTAMP WITH TIME ZONE DEFAULT now() NOT NULL,
	description VARCHAR,
	available_from TIMESTAMP WITH TIME ZONE,
	available_to TIMESTAMP WITH TIME ZONE,
	PRIMARY KEY (id),
	CONSTRAINT fk_offers_items FOREIGN KEY (item_id) REFERENCES items(id) ON UPDATE CASCADE ON DELETE CASCADE
);
