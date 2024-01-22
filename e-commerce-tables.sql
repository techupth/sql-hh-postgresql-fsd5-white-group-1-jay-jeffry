create table users (
	user_id int primary key generated always as identity,
	username varchar (255) unique not null,
	email varchar (255) unique not null,
	password varchar (255) not null,
	created_at timestamptz not null
);

create table products (
	product_id int primary key generated always as identity,
	name varchar (255) not null,
	description text,
	price numeric(10,2) not null,
	created_at timestamptz not null
);

create table categories (
	category_id int primary key generated always as identity,
	name varchar (255) unique not null,
	created_at timestamptz not null
);

create table product_categories (
	product_category_id int primary key generated always as identity,
	product_id int references products(product_id) on delete cascade not null,
	category_id int references categories(category_id) on delete cascade not null
);
