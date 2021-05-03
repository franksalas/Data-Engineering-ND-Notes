-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-12-17 01:44:15.588

-- tables
-- Table: actor
CREATE TABLE actor (
    actor_id smallint NOT NULL AUTO_INCREMENT,
    first_name varchar(45) NOT NULL,
    last_name varchar(45) NOT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT actor_pk PRIMARY KEY (actor_id)
) ENGINE InnoDB CHARACTER SET utf8;

CREATE INDEX idx_actor_last_name ON actor (last_name);

-- Table: address
CREATE TABLE address (
    address_id smallint NOT NULL AUTO_INCREMENT,
    address varchar(50) NOT NULL,
    address2 varchar(50) NULL DEFAULT NULL,
    district varchar(20) NOT NULL,
    city_id smallint NOT NULL,
    postal_code varchar(10) NULL DEFAULT NULL,
    phone varchar(20) NOT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT address_pk PRIMARY KEY (address_id)
) ENGINE InnoDB CHARACTER SET utf8;

CREATE INDEX idx_fk_city_id ON address (city_id);

-- Table: category
CREATE TABLE category (
    category_id tinyint NOT NULL AUTO_INCREMENT,
    name varchar(25) NOT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT category_pk PRIMARY KEY (category_id)
) ENGINE InnoDB CHARACTER SET utf8;

-- Table: city
CREATE TABLE city (
    city_id smallint NOT NULL AUTO_INCREMENT,
    city varchar(50) NOT NULL,
    country_id smallint NOT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT city_pk PRIMARY KEY (city_id)
) ENGINE InnoDB CHARACTER SET utf8;

CREATE INDEX idx_fk_country_id ON city (country_id);

-- Table: country
CREATE TABLE country (
    country_id smallint NOT NULL AUTO_INCREMENT,
    country varchar(50) NOT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT country_pk PRIMARY KEY (country_id)
) ENGINE InnoDB CHARACTER SET utf8;

-- Table: customer
CREATE TABLE customer (
    customer_id smallint NOT NULL AUTO_INCREMENT,
    store_id tinyint NOT NULL,
    first_name varchar(45) NOT NULL,
    last_name varchar(45) NOT NULL,
    email varchar(50) NULL DEFAULT NULL,
    address_id smallint NOT NULL,
    active boolean NOT NULL DEFAULT TRUE,
    create_date datetime NOT NULL,
    last_update timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT customer_pk PRIMARY KEY (customer_id)
) ENGINE InnoDB CHARACTER SET utf8;

CREATE INDEX idx_fk_store_id ON customer (store_id);

CREATE INDEX idx_fk_address_id ON customer (address_id);

CREATE INDEX idx_last_name ON customer (last_name);

-- Table: film
CREATE TABLE film (
    film_id smallint NOT NULL AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    description text NULL DEFAULT NULL,
    release_year year NULL DEFAULT NULL,
    language_id tinyint NOT NULL,
    original_language_id tinyint NULL DEFAULT NULL,
    rental_duration tinyint NOT NULL DEFAULT 3,
    rental_rate decimal(4,2) NOT NULL DEFAULT 4.99,
    length smallint NULL DEFAULT NULL,
    replacement_cost decimal(5,2) NOT NULL DEFAULT 19.99,
    rating enum('g','pg','pg-13','r','nc-17') NULL DEFAULT 'G',
    special_features set('trailers','commentaries','deleted scenes','behind the scenes') NULL DEFAULT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT film_pk PRIMARY KEY (film_id)
) ENGINE InnoDB CHARACTER SET utf8;

CREATE INDEX idx_title ON film (title);

CREATE INDEX idx_fk_language_id ON film (language_id);

CREATE INDEX idx_fk_original_language_id ON film (original_language_id);

-- Table: film_actor
CREATE TABLE film_actor (
    actor_id smallint NOT NULL,
    film_id smallint NOT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT film_actor_pk PRIMARY KEY (actor_id,film_id)
) ENGINE InnoDB CHARACTER SET utf8;

CREATE INDEX idx_fk_film_id ON film_actor (film_id);

-- Table: film_category
CREATE TABLE film_category (
    film_id smallint NOT NULL,
    category_id tinyint NOT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT film_category_pk PRIMARY KEY (film_id,category_id)
) ENGINE InnoDB CHARACTER SET utf8;

-- Table: film_text
CREATE TABLE film_text (
    film_id smallint NOT NULL,
    title varchar(255) NOT NULL,
    description text NULL,
    CONSTRAINT film_text_pk PRIMARY KEY (film_id)
) ENGINE MyISAM CHARACTER SET utf8;

CREATE  FULLTEXT INDEX idx_title_description ON film_text (title,description);

-- Table: inventory
CREATE TABLE inventory (
    inventory_id mediumint NOT NULL AUTO_INCREMENT,
    film_id smallint NOT NULL,
    store_id tinyint NOT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT inventory_pk PRIMARY KEY (inventory_id)
) ENGINE InnoDB CHARACTER SET utf8;

CREATE INDEX idx_fk_film_id ON inventory (film_id);

CREATE INDEX idx_store_id_film_id ON inventory (store_id,film_id);

-- Table: language
CREATE TABLE language (
    language_id tinyint NOT NULL AUTO_INCREMENT,
    name char(20) NOT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT language_pk PRIMARY KEY (language_id)
) ENGINE InnoDB CHARACTER SET utf8;

-- Table: payment
CREATE TABLE payment (
    payment_id smallint NOT NULL AUTO_INCREMENT,
    customer_id smallint NOT NULL,
    staff_id tinyint NOT NULL,
    rental_id int NULL DEFAULT NULL,
    amount decimal(5,2) NOT NULL,
    payment_date datetime NOT NULL,
    last_update timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT payment_pk PRIMARY KEY (payment_id)
) ENGINE InnoDB CHARACTER SET utf8;

CREATE INDEX idx_fk_staff_id ON payment (staff_id);

CREATE INDEX idx_fk_customer_id ON payment (customer_id);

-- Table: rental
CREATE TABLE rental (
    rental_id int NOT NULL AUTO_INCREMENT,
    rental_date datetime NOT NULL,
    inventory_id mediumint NOT NULL,
    customer_id smallint NOT NULL,
    return_date datetime NULL DEFAULT NULL,
    staff_id tinyint NOT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE INDEX AK_0 (rental_date,inventory_id,customer_id),
    CONSTRAINT rental_pk PRIMARY KEY (rental_id)
) ENGINE InnoDB CHARACTER SET utf8;

CREATE INDEX idx_fk_inventory_id ON rental (inventory_id);

CREATE INDEX idx_fk_customer_id ON rental (customer_id);

CREATE INDEX idx_fk_staff_id ON rental (staff_id);

-- Table: staff
CREATE TABLE staff (
    staff_id tinyint NOT NULL AUTO_INCREMENT,
    first_name varchar(45) NOT NULL,
    last_name varchar(45) NOT NULL,
    address_id smallint NOT NULL,
    picture blob NULL DEFAULT NULL,
    email varchar(50) NULL DEFAULT NULL,
    store_id tinyint NOT NULL,
    active boolean NOT NULL DEFAULT TRUE,
    username varchar(16) NOT NULL,
    password varchar(40) NULL DEFAULT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT staff_pk PRIMARY KEY (staff_id)
) ENGINE InnoDB CHARACTER SET utf8;

CREATE INDEX idx_fk_store_id ON staff (store_id);

CREATE INDEX idx_fk_address_id ON staff (address_id);

-- Table: store
CREATE TABLE store (
    store_id tinyint NOT NULL AUTO_INCREMENT,
    manager_staff_id tinyint NOT NULL,
    address_id smallint NOT NULL,
    last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    UNIQUE INDEX idx_unique_manager (manager_staff_id),
    CONSTRAINT store_pk PRIMARY KEY (store_id)
) ENGINE InnoDB CHARACTER SET utf8;

CREATE INDEX idx_fk_address_id ON store (address_id);

-- Table: tmpCustomer
CREATE TABLE tmpCustomer (
    customer_id smallint NOT NULL,
    CONSTRAINT tmpCustomer_pk PRIMARY KEY (customer_id)
);

-- views
-- View: customer_list
CREATE VIEW customer_list AS
SELECT cu.customer_id AS ID, CONCAT(cu.first_name, _utf8' ', cu.last_name) AS name, a.address AS address, a.postal_code AS `zip code`,
 a.phone AS phone, city.city AS city, country.country AS country, IF(cu.active, _utf8'active',_utf8'') AS notes, cu.store_id AS SID FROM customer AS cu JOIN address AS a ON cu.address_id = a.address_id JOIN city ON a.city_id = city.city_id JOIN country ON city.country_id = country.country_id;

-- View: film_list
CREATE VIEW film_list AS
SELECT film.film_id AS FID, film.title AS title, film.description AS description, category.name AS category, film.rental_rate AS price, film.length AS length, film.rating AS rating, GROUP_CONCAT(CONCAT(actor.first_name, _utf8' ', actor.last_name) SEPARATOR ', ') AS actors
FROM category LEFT JOIN film_category ON category.category_id = film_category.category_id LEFT JOIN film ON film_category.film_id = film.film_id
        JOIN film_actor ON film.film_id = film_actor.film_id
 JOIN actor ON film_actor.actor_id = actor.actor_id
GROUP BY film.film_id, category.name;

--
-- View structure for view `nicer_but_slower_film_list`
--

CREATE VIEW nicer_but_slower_film_list
AS
SELECT film.film_id AS FID, film.title AS title, film.description AS description, category.name AS category, film.rental_rate AS price,
 film.length AS length, film.rating AS rating, GROUP_CONCAT(CONCAT(CONCAT(UCASE(SUBSTR(actor.first_name,1,1)),
 LCASE(SUBSTR(actor.first_name,2,LENGTH(actor.first_name))),_utf8' ',CONCAT(UCASE(SUBSTR(actor.last_name,1,1)),
 LCASE(SUBSTR(actor.last_name,2,LENGTH(actor.last_name)))))) SEPARATOR ', ') AS actors
FROM category LEFT JOIN film_category ON category.category_id = film_category.category_id LEFT JOIN film ON film_category.film_id = film.film_id
        JOIN film_actor ON film.film_id = film_actor.film_id
 JOIN actor ON film_actor.actor_id = actor.actor_id
GROUP BY film.film_id, category.name;

--
-- View structure for view `staff_list`
--

CREATE VIEW staff_list
AS
SELECT s.staff_id AS ID, CONCAT(s.first_name, _utf8' ', s.last_name) AS name, a.address AS address, a.postal_code AS `zip code`, a.phone AS phone,
 city.city AS city, country.country AS country, s.store_id AS SID
FROM staff AS s JOIN address AS a ON s.address_id = a.address_id JOIN city ON a.city_id = city.city_id
 JOIN country ON city.country_id = country.country_id;

--
-- View structure for view `sales_by_store`
--

CREATE VIEW sales_by_store
AS
SELECT
CONCAT(c.city, _utf8',', cy.country) AS store
, CONCAT(m.first_name, _utf8' ', m.last_name) AS manager
, SUM(p.amount) AS total_sales
FROM payment AS p
INNER JOIN rental AS r ON p.rental_id = r.rental_id
INNER JOIN inventory AS i ON r.inventory_id = i.inventory_id
INNER JOIN store AS s ON i.store_id = s.store_id
INNER JOIN address AS a ON s.address_id = a.address_id
INNER JOIN city AS c ON a.city_id = c.city_id
INNER JOIN country AS cy ON c.country_id = cy.country_id
INNER JOIN staff AS m ON s.manager_staff_id = m.staff_id
GROUP BY s.store_id
ORDER BY cy.country, c.city;

--
-- View structure for view `sales_by_film_category`
--
-- Note that total sales will add up to >100% because
-- some titles belong to more than 1 category
--

CREATE VIEW sales_by_film_category
AS
SELECT
c.name AS category
, SUM(p.amount) AS total_sales
FROM payment AS p
INNER JOIN rental AS r ON p.rental_id = r.rental_id
INNER JOIN inventory AS i ON r.inventory_id = i.inventory_id
INNER JOIN film AS f ON i.film_id = f.film_id
INNER JOIN film_category AS fc ON f.film_id = fc.film_id
INNER JOIN category AS c ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY total_sales DESC;

--
-- View structure for view `actor_info`
--

CREATE DEFINER=CURRENT_USER SQL SECURITY INVOKER VIEW actor_info
AS
SELECT
a.actor_id,
a.first_name,
a.last_name,
GROUP_CONCAT(DISTINCT CONCAT(c.name, ': ',
  (SELECT GROUP_CONCAT(f.title ORDER BY f.title SEPARATOR ', ')
                    FROM sakila.film f
                    INNER JOIN sakila.film_category fc
                      ON f.film_id = fc.film_id
                    INNER JOIN sakila.film_actor fa
                      ON f.film_id = fa.film_id
                    WHERE fc.category_id = c.category_id
                    AND fa.actor_id = a.actor_id
                 )
             )
             ORDER BY c.name SEPARATOR ';

-- foreign keys
-- Reference: fk_address_city (table: address)
ALTER TABLE address ADD CONSTRAINT fk_address_city FOREIGN KEY fk_address_city (city_id)
    REFERENCES city (city_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_city_country (table: city)
ALTER TABLE city ADD CONSTRAINT fk_city_country FOREIGN KEY fk_city_country (country_id)
    REFERENCES country (country_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_customer_address (table: customer)
ALTER TABLE customer ADD CONSTRAINT fk_customer_address FOREIGN KEY fk_customer_address (address_id)
    REFERENCES address (address_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_customer_store (table: customer)
ALTER TABLE customer ADD CONSTRAINT fk_customer_store FOREIGN KEY fk_customer_store (store_id)
    REFERENCES store (store_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_film_actor_actor (table: film_actor)
ALTER TABLE film_actor ADD CONSTRAINT fk_film_actor_actor FOREIGN KEY fk_film_actor_actor (actor_id)
    REFERENCES actor (actor_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_film_actor_film (table: film_actor)
ALTER TABLE film_actor ADD CONSTRAINT fk_film_actor_film FOREIGN KEY fk_film_actor_film (film_id)
    REFERENCES film (film_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_film_category_category (table: film_category)
ALTER TABLE film_category ADD CONSTRAINT fk_film_category_category FOREIGN KEY fk_film_category_category (category_id)
    REFERENCES category (category_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_film_category_film (table: film_category)
ALTER TABLE film_category ADD CONSTRAINT fk_film_category_film FOREIGN KEY fk_film_category_film (film_id)
    REFERENCES film (film_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_film_language (table: film)
ALTER TABLE film ADD CONSTRAINT fk_film_language FOREIGN KEY fk_film_language (language_id)
    REFERENCES language (language_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_film_language_original (table: film)
ALTER TABLE film ADD CONSTRAINT fk_film_language_original FOREIGN KEY fk_film_language_original (original_language_id)
    REFERENCES language (language_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_inventory_film (table: inventory)
ALTER TABLE inventory ADD CONSTRAINT fk_inventory_film FOREIGN KEY fk_inventory_film (film_id)
    REFERENCES film (film_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_inventory_store (table: inventory)
ALTER TABLE inventory ADD CONSTRAINT fk_inventory_store FOREIGN KEY fk_inventory_store (store_id)
    REFERENCES store (store_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_payment_customer (table: payment)
ALTER TABLE payment ADD CONSTRAINT fk_payment_customer FOREIGN KEY fk_payment_customer (customer_id)
    REFERENCES customer (customer_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_payment_rental (table: payment)
ALTER TABLE payment ADD CONSTRAINT fk_payment_rental FOREIGN KEY fk_payment_rental (rental_id)
    REFERENCES rental (rental_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE;

-- Reference: fk_payment_staff (table: payment)
ALTER TABLE payment ADD CONSTRAINT fk_payment_staff FOREIGN KEY fk_payment_staff (staff_id)
    REFERENCES staff (staff_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_rental_customer (table: rental)
ALTER TABLE rental ADD CONSTRAINT fk_rental_customer FOREIGN KEY fk_rental_customer (customer_id)
    REFERENCES customer (customer_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_rental_inventory (table: rental)
ALTER TABLE rental ADD CONSTRAINT fk_rental_inventory FOREIGN KEY fk_rental_inventory (inventory_id)
    REFERENCES inventory (inventory_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_rental_staff (table: rental)
ALTER TABLE rental ADD CONSTRAINT fk_rental_staff FOREIGN KEY fk_rental_staff (staff_id)
    REFERENCES staff (staff_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_staff_address (table: staff)
ALTER TABLE staff ADD CONSTRAINT fk_staff_address FOREIGN KEY fk_staff_address (address_id)
    REFERENCES address (address_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_staff_store (table: staff)
ALTER TABLE staff ADD CONSTRAINT fk_staff_store FOREIGN KEY fk_staff_store (store_id)
    REFERENCES store (store_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_store_address (table: store)
ALTER TABLE store ADD CONSTRAINT fk_store_address FOREIGN KEY fk_store_address (address_id)
    REFERENCES address (address_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: fk_store_staff (table: store)
ALTER TABLE store ADD CONSTRAINT fk_store_staff FOREIGN KEY fk_store_staff (manager_staff_id)
    REFERENCES staff (staff_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- End of file.

