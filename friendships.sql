-- INSERT INTO friendships(created_at, updated_at, user_id, friend_id)
-- VALUES (NOW(), NOW(), 4, 1);
-- -- 
-- SELECT * FROM users
-- SELECT * FROM friendships

SELECT users.first_name, users.last_name, users2.first_name as friend_first_name, users2.last_name as friend_last_name FROM users
LEFT JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as users2 ON users2.id = friendships.friend_id
ORDER BY users2.last_name