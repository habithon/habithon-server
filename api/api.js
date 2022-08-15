const express = require("express");
const cors = require("cors");

const userRouter = require("./routers/user");

const api = express();

api.use(cors());
api.use(express.json());

api.use("/user", userRouter);

module.exports = api;
