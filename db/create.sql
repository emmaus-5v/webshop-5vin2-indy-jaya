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


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Nike air force 1', 'Nike air force 1 zijn een van de populairste schoenen van de afgelopen jaren. Ze zijn een goede basic die bij elke outfit past.', '816905633-0', 100,00);
insert into products (name, description, code, price) values ('Nike jordans 1', 'Deze collectie van Nike is gemaakt met Micheal Jorden, een van de bekendste basketballers ter wereld.', '077030122-3', 120,00);
insert into products (name, description, code, price) values ('New Balance 550', 'Deze New Balance schoenen werden voor het eerst uitgebracht in 1989, maar heb een nu een kompleet nieuwe look gekregen.', '445924201-X', 220,00);
insert into products (name, description, code, price) values ('Converse: All Stars', 'De All Starts bestaan al lang, het is een basic en veel gedragen omdat het bij elke outfit past.', '693155505-7', 90,00);
insert into products (name, description, code, price) values ('Nubikk', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 250,00);
insert into products (name, description, code, price) values ('Timberlands', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 150,00);
insert into products (name, description, code, price) values ('Vans', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '392672673-2', 100,00);
insert into products (name, description, code, price) values ('Tommy Hilfiger', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '970352673-6', 200,00);

