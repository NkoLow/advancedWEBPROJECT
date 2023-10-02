INSERT INTO users (username, email) VALUES
('JohnDoe', 'johndoe@example.com'),
('JulienA', 'JulienA@example.com');


INSERT INTO projects (user_id, project_name, description) VALUES
(1, 'Website Redesign', 'Redesigning the company website'),
(2, 'App Development', 'Developing a new mobile app');


INSERT INTO tasks (project_id, task_name, due_date, status) VALUES
(1, 'Design Homepage', '2023-10-10', 'in progress'),
(1, 'Develop Backend', '2023-10-20', 'pending'),
(2, 'Design App UI', '2023-11-01', 'in progress'),
(2, 'Test App', '2023-11-15', 'pending');


INSERT INTO comments (task_id, user_id, comment_text) VALUES
(1, 1, 'The Matrix had mind-blowing action scenes, man!'),
(2, 2, 'Jurassic Park s dinosaurs were so lifelike.'),
(3, 2, 'Pulp Fiction s nonlinear storytelling rocks..'),
(4, 1, 'Terminator 2: Judgment Day is a sci-fi classic.');