CREATE TABLE region (
  id SERIAL NOT NULL PRIMARY KEY,

  name VARCHAR(255) NOT NULL
);

CREATE TABLE data (
  id SERIAL NOT NULL PRIMARY KEY,
  region_id INTEGER NOT NULL REFERENCES region(id),

  latitude NUMERIC NOT NULL,
  longitude NUMERIC NOT NULL,
  pgad NUMERIC NOT NULL,
  s1d NUMERIC NOT NULL,
  ssd NUMERIC NOT NULL
);

CREATE TABLE document (
  id SERIAL NOT NULL PRIMARY KEY,
  region_id INTEGER NOT NULL REFERENCES region(id),

  name VARCHAR(255) NOT NULL
);
