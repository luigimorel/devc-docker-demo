const express = require("express");
const path = require("path");
require("dotenv").config();

const app = express();
app.use(express.static(path.join(__dirname, "/public")));
app.use(express.static(path.join(__dirname, "/public/index.html")));
app.use(express.static(path.join(__dirname, "/public/styles/main.css")));


app.listen(process.env.PORT, () => {
    console.log("Server is now running.");
});