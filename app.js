// app.js
const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send("Hello, World! This is a simple Node.js app running in Docker.");
});

app.listen(port, () => {
  console.log(`App is running at http://localhost:${port}`);
});
