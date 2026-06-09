import express from 'express';

const app = express();
const port = process.env.PING_LISTEN_PORT || 8080;

app.get('/ping', (req, res) => {
    res.json(req.headers);
});

app.use((req, res) => {
    res.status(404).send();
});

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});