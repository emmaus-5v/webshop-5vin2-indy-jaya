--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);

DROP TABLE IF EXISTS ratings; 
CREATE TABLE ratings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  rating VARCHAR(10)
);

DROP TABLE IF EXISTS reviews; 
CREATE TABLE reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  review TEXT
);

DROP TABLE IF EXISTS kleuren; 
CREATE TABLE kleuren(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur TEXT
);

DROP TABLE IF EXISTS kleuren; 
CREATE TABLE kleuren(
  schoen_id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur_id INTEGER
);
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Nike air force 1', 'Nike air force 1 zijn een van de populairste schoenen van de afgelopen jaren. Ze zijn een goede basic die bij elke outfit past.', '816905633-0', 100.00);
insert into products (name, description, code, price) values ('Nike jordans 1', 'Deze collectie van Nike is gemaakt met Micheal Jorden, een van de bekendste basketballers ter wereld.', '077030122-3', 120.00);
insert into products (name, description, code, price) values ('New Balance 550', 'Deze New Balance schoenen werden voor het eerst uitgebracht in 1989, maar heb een nu een kompleet nieuwe look gekregen.', '445924201-X', 220.00);
insert into products (name, description, code, price) values ('Converse: All Stars', 'De All Starts bestaan al lang, het is een basic en veel gedragen omdat het bij elke outfit past.', '693155505-7', 90.00);
insert into products (name, description, code, price) values ('Nubikk', 'Deze Nubikks zijn mooie en simpele schoenen.', '686928463-6', 250.00);
insert into products (name, description, code, price) values ('Timberlands', 'Timberlands zitten heel lekker en zijn perfect voor de wintermaanden.', '492662523-7', 150.00);
insert into products (name, description, code, price) values ('Vans', 'Vans staan bekend als skate schoenen maar je kan ze ook makkelijk voor dagelijk gebruik gebruiken.', '392672673-2', 100.00);
insert into products (name, description, code, price) values ('Tommy Hilfiger', 'Tommy Hilfiger staat bekend om hun kleding maar ze verkopen ook goede en mooie schoenen', '970352673-6', 200.00);

