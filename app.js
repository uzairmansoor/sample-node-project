// // app.js
// const express = require("express");
// const app = express();
// const port = 3000;

// app.get("/", (req, res) => {
//   res.send("Hello, World! New Docker Image.");
// });

// app.listen(port, () => {
//   console.log(`App is running at http://localhost:${port}`);
// });

const express = require("express");
const app = express();

// Use environment variables or set defaults
const version = process.env.APP_ID;

app.get("/", (req, res) => {
  res.send(`
    <p>App Version: ${version}</p>
  `);
});

const port = 3000;
app.listen(port, () => {
  console.log(`App is running at http://localhost:${port}`);
});
