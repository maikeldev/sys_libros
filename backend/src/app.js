import config from "./config/index.js";
import { pool } from "./db/index.js";
import express from "express";

const app = express();

app.use(express.json());

// Probar conexión a la BD al iniciar
(async () => {
  try {
    const connection = await pool.getConnection();
    console.log("✅ Conexión a MySQL establecida");
    connection.release();
    app.listen(config.app.port, () => {
      console.log(`Server running on port ${config.app.port}`);
    });
  } catch (err) {
    console.error("❌ Error al conectar a MySQL:", err.message);
  }
})();
