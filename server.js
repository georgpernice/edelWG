const express = require('express');
const app = express();
const PORT = 8000;

app.use(express.static('public'));

app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.listen(PORT, () => console.log(`Server listening on port: 127.0.0.1:${PORT} \n Open at localhost:${PORT}/index.html`));