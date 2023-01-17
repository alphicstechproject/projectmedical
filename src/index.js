const express = require("express");
const app = express();
const route = require("./routers/route");
const mongoose = require("mongoose");
const cors = require('cors');

require("dotenv").config();

app.use(express.json());
app.use(cors());

const port = process.env.PORT || 3000;
const db_url = process.env.DATABASE_URL;

mongoose.connect(db_url, { useNewUrlParser: true })
    .then(() => console.log("Successfully connected to MongoDB !!!"))
    .catch((err) => console.log(err))

app.use('/', route);

app.listen(port, () => console.log(`Server is running on port ${port} !!!`));