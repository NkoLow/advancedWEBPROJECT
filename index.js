const express = require('express');
const app = express();
const port = process.env.PORT || 3000;
const knexfile = require('.db/knexfile.js');
const knex = require('knex')(knexfile.development);
app.locals.knex = knex;

app.use(express.static('public'));


app.get('/api/data/:arg', (req, res) => {
    const arg = req.params.arg;
   
    const result = generateResponse(arg);
    res.json(result);
});


function generateResponse(arg) {
    
    return { message: `This is the button ${arg}` };
}
app.all('*',(req, res)=>
    res.status(404)
        .send('<hi>ERROR 404 ! Page not found!</h1>'))

        app.post('/users', async (req, res) => {
            try {
              const{
                    id,
                    username,
                    email,
                    created_at,
              }=req.body
            
            const newusers = await knex('patients').insert({
                    id,
                    username,
                    email,
                    created_at,
                }).returning('*');
                res.json(newPatient);
            } catch (error) {
              console.error(error);
              res.status(500).json({ error: 'Failed to create a new patient record.' });
            }
          });

        app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
