
# Create a migration script for two tables, users, and ads.
  # They should have the following structure
# +----------+             +-------------+
# |  users   |             |    ads      |
# +----------+             +-------------+
# | id       |<------,     | id          |
# | username |       `-----| user_id     | <-- foreign key to users table
# | email    |             | title       |
# | password |             | description |
# +----------+             +-------------+
#
Create database if not exists adlister_db;
USE adlister_db;
Drop table if exists ads;
Drop table if exists users;


CREATE TABLE users(
 id INT UNSIGNED NOT  NULL AUTO_INCREMENT  PRIMARY KEY ,
 username VARCHAR(255) NOT NULL ,
 email VARCHAR(255) NOT NULL,
 password VARCHAR(255)  NOT NULL
);

CREATE TABLE  ads(
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED  not  NULL,
  title VARCHAR(255) NOT NULL,
  description text not null,
  FOREIGN KEY(user_id) REFERENCES users(ID) on delete cascade
);





# CREATE TABLE owners (
#   id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
#   name VARCHAR(30) NOT NULL,
#   address VARCHAR(255) DEFAULT 'Undisclosed'
# );
#
# CREATE TABLE pets (
#   id INT UNSIGNED AUTO_INCREMENT,
#   name VARCHAR(30) NOT NULL,
#   owner_id INT UNSIGNED DEFAULT NULL,
#   age INT,
#   PRIMARY KEY (id),
#   FOREIGN KEY (owner_id) REFERENCES owners(id)
# );
#
# CREATE TABLE toys (
#   id INT UNSIGNED AUTO_INCREMENT,
#   type VARCHAR(30) NOT NULL,
#   PRIMARY KEY (id)
# );
#
# CREATE TABLE pets_toys (
#   pet_id INT UNSIGNED,
#   toy_id INT UNSIGNED,
#   FOREIGN KEY (pet_id) REFERENCES pets(id),
#   FOREIGN KEY (toy_id) REFERENCES toys(id)
# );
#
# INSERT INTO owners (name, address)
# VALUES
# ('Darth Smith', '1138 Death Star Rd.'),
# ('Padme Smith', '1138 Death Star Rd.'),
# ('Luke Douglas', '18 Tatooine Ln.'),
# ('Lando Johnson', '777 Bespin Street');
#
# INSERT INTO pets (name, owner_id, age)
# VALUES
# ('Spot', 1, 2),
# ('Puddle', 1, 2),
# ('Elrond', 1, 5),
# ('Mr. Pig', 2, 10),
# ('Mack', 2, 7),
# ('Bud', 3, 2),
# ('Bubbles', 4, 1);
#
# INSERT INTO toys (type)
# VALUES
# ('ball'),
# ('bone'),
# ('squeaky toy'),
# ('rope');
#
# INSERT INTO pets_toys (pet_id, toy_id)
# VALUES
# (1, 1),
# (1, 2),
# (2, 1),
# (3, 3),
# (4, 2),
# (4, 4);