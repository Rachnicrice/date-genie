DROP TABLE IF EXISTS locations;
CREATE TABLE locations (
  id SERIAL PRIMARY KEY,
  city VARCHAR (255),
  lat NUMERIC,
  long NUMERIC
);

INSERT INTO locations(city,lat,long)
VALUES('seattle', 47.6062, 122.3321);


DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR (255),
  password VARCHAR (255),
  kids VARCHAR(255),
  location INTEGER,
  todos VARCHAR,
  FOREIGN KEY (location) REFERENCES locations (id) ON DELETE CASCADE
);


INSERT INTO users (username, password, kids, location, todos)
VALUES('crummy', 'notCrumby', 'yes', 1, 'blahdiddy, blah doddy' );

DROP TABLE IF EXISTS saved_dates;
CREATE TABLE saved_dates (
  id SERIAL PRIMARY KEY,
  user_is INTEGER,
  restaurant VARCHAR (255),
  budget NUMERIC,
  link_url VARCHAR,
  img_url VARCHAR,
  description VARCHAR,
  rating NUMERIC,
  address VARCHAR,
  phone VARCHAR,
  FOREIGN KEY (user_is) REFERENCES users (id) ON DELETE CASCADE
);

INSERT INTO saved_dates(user_is, restaurant, budget, link_url, img_url, description, rating, address, phone)
VALUES(1, 'McDonalds', 60, 'https://www.mcdonalds.com', 'https://www.mcdonalds.com/is/image/content/dam/usa/nfl/assets/promo/HP_3Col_Nutrition_Calculator_760x508.jpg?$Publication_Three_Column_Desktop$', 'yummy, yummy in my tummy.', '10','123 easy street', '876-5309');
