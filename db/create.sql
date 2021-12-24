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
  merk_id INTEGER
);

DROP TABLE IF EXISTS merk;
CREATE TABLE merk(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25)
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

insert into products (name, description, code, price, merk_id) values ('Nike air force 1', 'Nike air force 1 zijn een van de populairste schoenen van de afgelopen jaren. Ze zijn een goede basic die bij elke outfit past.', '816905633-0', 100.00, 1);
insert into products (name, description, code, price, merk_id) values ('Nike jordans 1', 'Deze collectie van Nike is gemaakt met Micheal Jorden, een van de bekendste basketballers ter wereld.', '077030122-3', 120.00, 2);
insert into products (name, description, code, price, merk_id) values ('New Balance 550', 'Deze New Balance schoenen werden voor het eerst uitgebracht in 1989, maar heb een nu een kompleet nieuwe look gekregen.', '445924201-X', 220.00, 3);
insert into products (name, description, code, price, merk_id) values ('Converse: All Stars', 'De All Starts bestaan al lang, het is een basic en veel gedragen omdat het bij elke outfit past.', '693155505-7', 90.00), 4;
insert into products (name, description, code, price, merk_id) values ('Nubikk', 'Deze Nubikks zijn mooie en simpele schoenen.', '686928463-6', 250.00, 5);
insert into products (name, description, code, price, merk_id) values ('Timberlands', 'Timberlands zitten heel lekker en zijn perfect voor de wintermaanden.', '492662523-7', 150.00, 6);
insert into products (name, description, code, price, merk_id) values ('Vans', 'Vans staan bekend als skate schoenen maar je kan ze ook makkelijk voor dagelijk gebruik gebruiken.', '392672673-2', 100.00, 7);
insert into products (name, description, code, price, merk_id) values ('Tommy Hilfiger', 'Tommy Hilfiger staat bekend om hun kleding maar ze verkopen ook goede en mooie schoenen', '970352673-6', 200.00, 8);

insert into ratings (rating) values ('4,0'); 
insert into ratings (rating) values ('4,2');
insert into ratings (rating) values ('4,9');
insert into ratings (rating) values ('4,7');
insert into ratings (rating) values ('4,1');
insert into ratings (rating) values ('3,5');
insert into ratings (rating) values ('3,4');
insert into ratings (rating) values ('4,1');

insert into reviews (review) values ('Helemaal top! De prijs is wel wat duur, maar ik heb ze eerder gehad en ze gingen uiteindelijk 4 jaar mee.');
insert into reviews (review) values ('Een tijdloze, comfortabele schoen waar je dol op bent voor je voeten.');
insert into reviews (review) values ('Mooie schoen, zit zeer gemakkelijk');
insert into reviews (review) values ('Een leuke unieke schoen die je in veel kleuren kan vinden, en gaat lang mee');
insert into reviews (review) values ('Ze zijn natuurlijk super makkelijk te combineren (ze passen op jurkjes na echt bij alles) maar ook lopen ze enorm fijn.');
insert into reviews (review) values ('9 maanden geleden lederen Timberland wandelschoenen gekocht waarvan beide zolen volledig doorgesleten zijn.');
insert into reviews (review) values ('Heb 3 paar tommys gehad in mijn leven gehad en elke keer kwaliteit om van te huilen.');
insert into reviews (review) values ('Mooi en passen precies. Staat goed bij alle kleding. De schoenen zitten perfect en zijn heel mooi! Sportief en comfortabel.');

insert into merk (name) values ('nike');
insert into merk (name) values ('nike');
insert into merk (name) values ('new balance');
insert into merk (name) values ('converse');
insert into merk (name) values ('nubikk');
insert into merk (name) values ('timberlands');
insert into merk (name) values ('vans');
insert into merk (name) values ('tommy hilfiger');

