CREATE USER has_many_user;

CREATE DATABASE has_many_blogs WITH OWNER = has_many_user;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  ID SERIAL PRIMARY KEY NOT NULL,
  username character varying(90) NOT NULL,
  first_name character varying(90) DEFAULT NULL,
  last_name character varying(90) DEFAULT NULL,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now()
);

CREATE TABLE posts (
  ID SERIAL PRIMARY KEY NOT NULL,
  title character varying(180) DEFAULT NULL,
  url character varying(510) DEFAULT NULL,
  content text DEFAULT NULL, 
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now(), 
  user_id INT references users(ID)
);

CREATE TABLE comments (
  ID SERIAL PRIMARY KEY NOT NULL,
  body character varying(510) DEFAULT NULL,
  created_at timestamp with time zone DEFAULT now(),
  updated_at timestamp with time zone DEFAULT now(),
  posts_id INT references posts(id),
  user_id INT references users(ID)
);