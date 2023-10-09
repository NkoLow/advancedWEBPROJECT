const express = require('express');
const app = express();
const port = process.env.PORT || 3500;


const knexfile = require('./knexfile');
const knex = require('knex')(knexfile.development);


app.locals.knex = knex;
app.use(express.json());

app.use(express.static('public'));

app.post('/users', async (req, res) => {
    try {
      const {
        username,
        email,
        created_at,
      } = req.body;
  
      const newusers = await knex('users').insert({
        username,
        email,
        created_at,
      }).returning('*');
  
      res.json(newusers);
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'Failed to create a new films record.' });
    }
  });

  app.get('/users', async (req, res) => {
    try {
      const { username } = req.query; 
  
    
      const films = await knex('users').where('username', username);
  
      
      res.json(users);
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'Failed to retrieve films.' });
    }
  });

  app.put('/users/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const {
            tusername,
            email,
            created_at,
        } = req.body;
  
      
        const updatedusers = await knex('users')
            .where('id', id)
            .update({
                username,
                email,
                created_at,
            })
            .returning('*'); 
  
        if (updatedusers.length > 0) {
            res.json(updatedusers[0]); 
        } else {
            res.status(404).json({ error: 'users not found.' });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Failed to update the film.' });
    }
  });
  app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
  });
  
  app.delete('/users/:id', async (req, res) => {
    try {
        const { id } = req.params;
  
        
        const deletedusers = await knex('users')
            .where('id', id)
            .del()
            .returning('*'); // 
  
        if (deletedusers.length > 0) {
            res.json({ success: true });
        } else {
            res.status(404).json({ error: 'Film not found.' });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Failed to delete the film.' });
    }
  });