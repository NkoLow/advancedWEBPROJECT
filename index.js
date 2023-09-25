const express = require('express');
const app = express();
const port = process.env.PORT || 3000;


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

        app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
