-- SELECT * 
-- FROM users;

-- SELECT *
-- FROM posts
-- WHERE users_id = 100;

-- SELECT *
-- FROM posts INNER JOIN users ON (users_id = users.id)
-- WHERE users_id = 200;

-- SELECT posts.*, users.username
-- FROM posts INNER JOIN users ON (users_id = users.id)
-- Where users.first_name = 'Norene' and users.last_name = 'Schmitt';

-- SELECT users.username
-- FROM users INNER JOIN posts ON (posts.users_id = users.id)
-- WHERE posts.created_at > '2015-01-01';

SELECT posts.title, posts.content, users.username
From posts INNER JOIN users ON (users_id = users.id)
WHERE users.created_at > '2015-01-01';