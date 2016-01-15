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

-- SELECT posts.title, posts.content, users.username
-- From posts INNER JOIN users ON (users_id = users.id)
-- WHERE users.created_at > '2015-01-01';

-- SELECT comments.*, posts.title post_title
-- FROM comments INNER JOIN posts ON (posts_id = posts.id);

-- SELECT comments.*, posts.title posts_title, posts.url post_url, comments.body comment_body
-- FROM comments INNER JOIN posts ON (posts_id = posts.id);

-- SELECT posts.title AS "post title",
-- users.first_name, users.last_name, 
-- comments.body AS "comment body"
-- FROM comments 
-- INNER JOIN posts ON (comments.posts_id = posts.id)
-- INNER JOIN users on (comments.user_id = users.id)
-- WHERE comments.body LIKE '%matrix%';

-- SELECT users.first_name, users.last_name, comments.body AS "comment body"
-- From comments
-- INNER JOIN users ON (comments.user_id = users.id)
-- INNER JOIN posts ON (comments.user_id = posts.id)
-- WHERE comments.body LIKE '%SSL%' AND posts.content LIKE '%dolorum%';

-- SELECT users.first_name AS post_author_first_name, 
-- users.last_name AS post_author_last_name, 
-- posts.title AS post_title,
-- users.username AS comment_author,
-- comments.body AS comment_body
-- From comments 
-- INNER JOIN posts ON (comments.user_id = posts.id)
-- INNER JOIN users ON (comments.user_id = users.id)
-- WHERE (comments.body LIKE '%SSL%' OR comments.body LIKE '%firewall%') AND  posts.content LIKE '%nemo%';

SELECT users.id AS user_id, 
posts.title AS post_title, 
posts.id As post_id
FROM posts
INNER JOIN comments ON (posts.user_id = comments.id)
INNER JOIN users ON (posts.user_id = users.id)
WHERE posts.user_id = comments.user_id;
