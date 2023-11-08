const express = require('express');
const app = express();
const port = process.env.PORT || 3005;

// Serve static files from the 'public' directory
app.use(express.static('public'));

app.get('/', (req, res) => {
  res.sendFile(__dirname + '/views/hello.html');
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
