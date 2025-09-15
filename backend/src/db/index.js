import config from "../config/index.js";
import { createPool } from "mysql2/promise";

export const pool = createPool({
  host: config.db.host,
  port: config.db.port,
  database: config.db.name,
  user: config.db.user,
  password: config.db.pass,
});
