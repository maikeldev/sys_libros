-- Insertar editorial de prueba
INSERT INTO editorials (name, nationality, collection, url_logo, puntuacion, date_publication)
VALUES ('Planeta', 'España', 'Narrativa', 'https://logo.com/planeta.png', 5, '2000-01-01');

-- Insertar autor de prueba
INSERT INTO authors (firts_name, last_name, date_birth, date_death, nationality, biography, nickname, awards)
VALUES ('Gabriel', 'García Márquez', '1927-03-06', '2014-04-17', 'Colombiana', 'Escritor y periodista.', 'Gabo', 'Nobel');

-- Insertar libro de prueba
INSERT INTO books (title, isbn, date_edition, img_portada_url, page, date_publication, sypnosis, language, encuadernado, high, width, grueso, peso, likes, fk_editorial)
VALUES ('Cien años de soledad', 9788497592208, '2002-05-30', 'https://portadas.com/cienanos.jpg', 432, '1967-05-30', 'Cien años de soledad narra la historia de la familia Buendía.', 'Español', 'Tapa dura', 24, 16, 4, 600, 1000, 1);

-- Insertar género de prueba
INSERT INTO genres (name, description, fk_genre)
VALUES ('Realismo Mágico', 'Género literario que mezcla lo real con lo fantástico.', NULL);

-- Insertar relación libro-género
INSERT INTO books_genres (id_book, id_genre)
VALUES (1, 1);

-- Insertar relación libro-autor
INSERT INTO books_authors (id_book, id_author)
VALUES (1, 1);

-- Insertar relación autor-género
INSERT INTO authors_genres (id_genre, id_author)
VALUES (1, 1);