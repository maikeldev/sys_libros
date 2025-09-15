import detenv from "dotenv";
detenv.config();

const config = {
  app: {
    port: process.env.PORT || 3000,
  },
  db: {
    user: process.env.DB_USER,
    pass: process.env.DB_PASS,
    name: process.env.DB_NAME,
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
  },
};

export default config;
