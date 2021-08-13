import express from "express";

export const app = express();

app.all('/ping', (req:any, res:any) => {
  res.send("pong")
})

export default app