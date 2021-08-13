import express from "express";

export const app = express();

app.all('/ping', (req, res) => {
  res.send("pong")
})

export default app