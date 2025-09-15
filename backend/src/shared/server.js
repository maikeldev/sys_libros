import express from "express";
import morgan from "morgan";
import booksRouter from "../features/book/adapters/routers/booksRouters.js";
import gendersRouter from "../features/genders/adapters/routers/gendersRouters.js";

const app = express();

// Middlewares
app.use(express.json());
app.use(morgan("dev"));

// Routes
app.use("/books", booksRouter);
app.use("/genders", gendersRouter);

export default app;
