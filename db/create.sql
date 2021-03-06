--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  merk_id INTEGER,
  ratings_id INTEGER,
  review_id INTEGER,
  kleurenschoen_id INTEGER
);

DROP TABLE IF EXISTS merk;
CREATE TABLE merk(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25)
);

DROP TABLE IF EXISTS ratings; 
CREATE TABLE ratings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  rating NUMERIC(10, 1)
);

DROP TABLE IF EXISTS review; 
CREATE TABLE review (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  review TEXT
);

DROP TABLE IF EXISTS kleuren; 
CREATE TABLE kleuren(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur TEXT
 
);

DROP TABLE IF EXISTS kleurenschoen; 
CREATE TABLE kleurenschoen(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  schoen_id INTEGER,
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

insert into products (name, description, code, price, merk_id, ratings_id, review_id, kleurenschoen_id) values ('Nike air force 1', 'Nike air force 1 zijn een van de populairste schoenen van de afgelopen jaren. Ze zijn een goede basic die bij elke outfit past.', '816905633-0', 100.00, 1, 1, 1, 1);
insert into products (name, description, code, price, merk_id, ratings_id, review_id, kleurenschoen_id) values ('Nike jordans 1', 'Deze collectie van Nike is gemaakt met Micheal Jorden, een van de bekendste basketballers ter wereld.', '077030122-3', 120.00, 2, 2, 2, 2);
insert into products (name, description, code, price, merk_id, ratings_id, review_id, kleurenschoen_id) values ('New Balance 550', 'Deze New Balance schoenen werden voor het eerst uitgebracht in 1989, maar heb een nu een kompleet nieuwe look gekregen.', '445924201-X', 220.00, 3, 3, 3, 3);
insert into products (name, description, code, price, merk_id, ratings_id, review_id, kleurenschoen_id) values ('Converse: All Stars', 'De All Starts bestaan al lang, het is een basic en veel gedragen omdat het bij elke outfit past.', '693155505-7', 90.00, 4, 4, 4, 4);
insert into products (name, description, code, price, merk_id, ratings_id, review_id, kleurenschoen_id) values ('Nubikk', 'Deze Nubikks zijn mooie en simpele schoenen.', '686928463-6', 250.00, 5, 5, 5, 5);
insert into products (name, description, code, price, merk_id, ratings_id, review_id, kleurenschoen_id) values ('Timberlands', 'Timberlands zitten heel lekker en zijn perfect voor de wintermaanden.', '492662523-7', 150.00, 6, 6, 6, 6);
insert into products (name, description, code, price, merk_id, ratings_id, review_id, kleurenschoen_id) values ('Vans', 'Vans staan bekend als skate schoenen maar je kan ze ook makkelijk voor dagelijk gebruik gebruiken.', '392672673-2', 100.00, 7, 7, 7, 7);
insert into products (name, description, code, price, merk_id, ratings_id, review_id, kleurenschoen_id) values ('Tommy Hilfiger', 'Tommy Hilfiger staat bekend om hun kleding maar ze verkopen ook goede en mooie schoenen', '970352673-6', 200.00, 8, 8, 8, 8);
insert into products (name, description, code, price, merk_id, ratings_id, review_id, kleurenschoen_id) values ('Puma', 'Deze puma schoenen zijn erg comfortabel en hebben een retrolook.', '640352233-8', 100.00, 9, 9, 9, 9);
insert into products (name, description, code, price, merk_id, ratings_id, review_id, kleurenschoen_id) values ('Adidas Forum', 'Deze schoenen zijn weer helemaal in een zijn een oud model met een nieuwe look.', '910367233-3', 120.00, 10, 10, 10, 10);

insert into ratings (rating) values (4.0); 
insert into ratings (rating) values (4.2);
insert into ratings (rating) values (4.9);
insert into ratings (rating) values (4.7);
insert into ratings (rating) values (4.1);
insert into ratings (rating) values (3.5);
insert into ratings (rating) values (3.4);
insert into ratings (rating) values (4.1);
insert into ratings (rating) values (3.2);
insert into ratings (rating) values (4.4);

insert into review (review) values ('Helemaal top! De prijs is wel wat duur, maar ze gaan lang mee');
insert into review (review) values ('Een tijdloze, comfortabele schoen.');
insert into review (review) values ('Mooie schoen, zit zeer gemakkelijk');
insert into review (review) values ('Een leuke unieke schoen die je in veel kleuren kan vinden');
insert into review (review) values ('Makkelijk te combineren en lopen fijn.');
insert into review (review) values ('Schoenen waren snel versleten, niet waard voor de prijs');
insert into review (review) values ('Hele slechte kwaliteit.');
insert into review (review) values ('Ze zitten perfect en zijn mooi! Sportief en comfortabel.');
insert into review (review) values ('Erg fijne en comfortabele schoenen die lang mee gaan.');
insert into review (review) values ('Schoenen zitten lekker en passen bij elke outfit.');

insert into merk (name) values ('Nike specials');
insert into merk (name) values ('Nike');
insert into merk (name) values ('New balance');
insert into merk (name) values ('Converse');
insert into merk (name) values ('Nubikk');
insert into merk (name) values ('Timberlands');
insert into merk (name) values ('Vans');
insert into merk (name) values ('Tommy Hilfiger');
insert into merk (name) values ('Puma');
insert into merk (name) values ('Adidas');

insert into kleuren (kleur) values ('Wit');
insert into kleuren (kleur) values ('Rood');
insert into kleuren (kleur) values ('Bruin');
insert into kleuren (kleur) values ('Zwart');
insert into kleuren (kleur) values ('Groen');
insert into kleuren (kleur) values ('Grijs');
insert into kleuren (kleur) values ('Goud');

insert into kleurenschoen (schoen_id, kleur_id) values (1, 1);
insert into kleurenschoen (schoen_id, kleur_id) values (1, 5);

insert into kleurenschoen (schoen_id, kleur_id) values (2, 1);
insert into kleurenschoen (schoen_id, kleur_id) values (2, 2);

insert into kleurenschoen (schoen_id, kleur_id) values (3, 1);
insert into kleurenschoen (schoen_id, kleur_id) values (3, 5);

insert into kleurenschoen (schoen_id, kleur_id) values (4, 1);

insert into kleurenschoen (schoen_id, kleur_id) values (5, 1);
insert into kleurenschoen (schoen_id, kleur_id) values (5, 2);
insert into kleurenschoen (schoen_id, kleur_id) values (5, 4);

insert into kleurenschoen (schoen_id, kleur_id) values (6, 1);
insert into kleurenschoen (schoen_id, kleur_id) values (6, 7);

insert into kleurenschoen (schoen_id, kleur_id) values (7, 1);
insert into kleurenschoen (schoen_id, kleur_id) values (7, 6);

insert into kleurenschoen (schoen_id, kleur_id) values (8, 3);
insert into kleurenschoen (schoen_id, kleur_id) values (8, 4);

insert into kleurenschoen (schoen_id, kleur_id) values (9, 1);
insert into kleurenschoen (schoen_id, kleur_id) values (9, 2);
insert into kleurenschoen (schoen_id, kleur_id) values (9, 4);

insert into kleurenschoen (schoen_id, kleur_id) values (10, 1);
insert into kleurenschoen (schoen_id, kleur_id) values (10, 4);

