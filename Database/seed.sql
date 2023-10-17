-- adming related seeding
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


-- films related seeding

INSERT INTO directors (name) VALUES
('Chris Columbus'),  -- Director of Harry Potter 2
('James Wan'),       -- Director of Fast and Furious 7
('Steven Spielberg'), -- Director of Jurassic Park
('Francis Ford Coppola'), -- Director of The Godfather
('Sam Mendes'),      -- Director of James Bond film 1
('Martin Campbell'), -- Director of James Bond film 2
('Christopher McQuarrie'), -- Director of Mission Impossible
('James Cameron'),   -- Director of Titanic
('Gabriele Muccino'), -- Director of Seven Lives
('Barry Sonnenfeld'); -- Director of Men in Black

INSERT INTO actors (name) VALUES
('Daniel Radcliffe'),  -- Actor in Harry Potter 2
('Emma Watson'),       -- Actor in Harry Potter 2
('Rupert Grint'),      -- Actor in Harry Potter 2
('Vin Diesel'),        -- Actor in Fast and Furious 7
('Paul Walker'),       -- Actor in Fast and Furious 7
('Chris Pratt'),       -- Actor in Jurassic Park
('Marlon Brando'),     -- Actor in The Godfather
('Al Pacino'),         -- Actor in The Godfather
('Sean Connery'),      -- Actor in James Bond film 1
('Pierce Brosnan'),    -- Actor in James Bond film 2
('Tom Cruise'),        -- Actor in Mission Impossible
('Leonardo DiCaprio'), -- Actor in Titanic
('Kate Winslet'),       -- Actress in Titanic
('Will Smith'),        -- Actor in Seven Lives
('Tommy Lee Jones');    -- Actor in Men in Black

INSERT INTO genres (name) VALUES ('Adventure'), ('Action'), ('Crime'), ('Drama');

INSERT INTO films (title, release_year, genre_id, director_id) VALUES
('Harry Potter and the Chamber of Secrets', 2002, 1, 1),   -- Harry Potter 2
('Fast & Furious 7', 2015, 2, 2),                           -- Fast and Furious 7
('Jurassic Park', 1993, 1, 3),                               -- Jurassic Park
('The Godfather', 1972, 3, 4),                                -- The Godfather
('Skyfall', 2012, 3, 5),                                     -- James Bond film 1
('Casino Royale', 2006, 3, 6),                               -- James Bond film 2
('Mission: Impossible – Fallout', 2018, 2, 7),                -- Mission Impossible
('Titanic', 1997, 4, 8),                                     -- Titanic
('Seven Pounds', 2008, 3, 9),                                -- Seven Lives
('Men in Black', 1997, 2, 10);                               -- Men in Black

-- Seed film actors relationships (only main actors)
INSERT INTO film_actors (film_id, actor_id) VALUES
(1, 1), (1, 2), (1, 3),  -- Harry Potter 2
(2, 4), (2, 5),           -- Fast and Furious 7
(3, 6),                   -- Jurassic Park
(4, 7), (4, 8),           -- The Godfather
(5, 9), (5, 10),          -- James Bond film 1
(6, 9), (6, 10),          -- James Bond film 2
(7, 11),                  -- Mission Impossible
(8, 12), (8, 13),         -- Titanic
(9, 14);                  -- Seven Lives
