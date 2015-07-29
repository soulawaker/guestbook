--name:save-message!
-- creates a new message
INSERT INTO guestbook
(name, message, timestamp)
VALUES (:name, :message, :timestamp)

--name:get-messages
-- selects all available messages
SELECT * from guestbook

--name:delete-message!
-- delete messages
DELETE from guestbook
WHERE id = :id;

--name:get-message
-- select message
SELECT * from guestbook
WHERE id = :id

--name:update-message!
-- update message
UPDATE guestbook
SET message = :message
WHERE id = :id;

--name:save-user!
-- creates a new user
INSERT INTO users (name, password, timestamp) VALUES (:name, :password, :timestamp)

--name:check-user-exists
SELECT * from users
WHERE name = :name

--name:signin-user
-- select user with name and password
SELECT * from users
WHERE name = :name AND password = :password

--name:get-names
-- select user names
SELECT name from users