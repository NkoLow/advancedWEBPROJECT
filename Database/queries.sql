SELECT username, email FROM users;

SELECT DISTINCT projects.project_name, users.username 
FROM projects 
JOIN users ON projects.user_id = users.id;


SELECT DISTINCT tasks.task_name, tasks.status, tasks.due_date 
FROM tasks 
JOIN projects ON tasks.project_id = projects.id 
WHERE projects.project_name = 'Website Redesign';


SELECT tasks.task_name, comments.comment_text 
FROM comments 
JOIN users ON comments.user_id = users.id 
JOIN tasks ON comments.task_id = tasks.id 
WHERE users.username = 'JohnDoe';