import {pool} from "../../../../infrastructure/database/mysqlConfig.js";

export const getBooks = async (req, res) => {
  const [rows] = await pool.query(" SELECT * FROM books ");
  res.json(rows);
};

export const getProduct = async (req, res) => {
  const [rows] = await pool.query(" SELECT * FROM books WHERE id_book = ? ", [
    req.params.id,
  ]);
  if (rows.length <= 0)
    return res.status(400).json({
      message: "Product Not found",
    });
  res.json(rows);
};

export const createPorducts = (req, res) => {
  const {
    isbn,
    title,
    presentation,
    img_url,
    pages,
    date_publication,
    fk_gender,
    fk_editorial,
  } = req.body;
  console.log(req.body);
  pool.query(
    " INSERT INTO books ( isbn, title, presentation, img_url, pages, date_publication, fk_gender, fk_editorial ) VALUES ( ?, ?, ?, ?, ?, ?, ?, ? ) ",
    [
      isbn,
      title,
      presentation,
      img_url,
      pages,
      date_publication,
      fk_gender,
      fk_editorial,
    ],
  );
  res.end("ok");
};

export const putProducts = (req, res) => {
  products = products.map((p) =>
    p.id == req.params.id ? { ...p, ...req.body } : p,
  );
  res.send(products);
};

export const deleteProducts = (req, res) => {
  products = products.filter((p) => p.id !== parseInt(req.params.id));
  res.json(products);
};
