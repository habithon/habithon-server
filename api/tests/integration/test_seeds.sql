INSERT INTO user_account (username, password)
VALUES 
    ('ladybird', '$2a$12$5QAvn3Hp/949tnXHWg/zBuxmHkWaSUm0r9C6gooCUxdx4s9ZxTo1K'),
    ('lordbird', '$2a$12$5QAvn3Hp/949tnXHWg/zBuxmHkWaSUm0r9C6gooCUxdx4s9ZxTo1K');

INSERT INTO habit (user_id, image_url, habit, streak, frequency, last_completed)
VALUES
(1, 'images/goals-water.jpg','water', 10, 'weekly', '2022-08-15'),
(1, 'images/goals-exercise.jpg','exercise', 10, 'daily', '2022-08-15'),
(1, 'images/goals-reading.jpg','read', 10, 'daily', '2022-08-15'),
(2, 'images/goals-sleep.jpg','sleep', 10, 'daily', '2022-08-15'),
(2, 'images/goals-exercise.jpg','exercise', 10, 'daily', '2022-08-15');
