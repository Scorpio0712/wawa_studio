const express = require("express");

//app configuration
const app = express();

const port = 3000;

//middleware configuration

//api routes
app.get("/api/data", (req, res) => {
  res.json({
    success: true,
    message: "Hello",
  });
});

//listners
app.listen(port, () => {
  console.log("Listening on port ${port}");
});
