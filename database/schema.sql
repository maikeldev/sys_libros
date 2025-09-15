
CREATE TABLE editorials(
	id_editorial int primary key auto_increment,
	name varchar(20) NOT NULL,
	nationality varchar(20) NOT NULL,
	collection varchar(40),
	url_logo varchar(50),
	puntuacion int,
	date_publication DATE
);

DROP TABLE editorials;

 
CREATE TABLE authors(
	id_author INT PRIMARY KEY AUTO_INCREMENT,
	firts_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40),
	date_birth DATE,
	date_death DATE,
	nationality VARCHAR(20),
	biography TEXT,
	nickname varchar(20),
	awards VARCHAR(20)
);

DROP TABLE authors;


CREATE TABLE books(
	id_book int primary key auto_increment,
	isbn int,
	date_edition date,
	img_portada_url varchar(40),
	page int,
	date_publication date,
	sypnosis text,
	language varchar(20),
	encuadernado varchar(10),
	high int,
	width int,
	grueso int,
	peso int,
	likes int,
	fk_editorial int,
	foreign key (fk_editorial) references editorials (id_editorial)
);

DROP TABLE books;

CREATE TABLE genres(
	id_genre INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20),
	description TEXT,
	fk_genre INT,
	FOREIGN KEY (fk_genre) REFERENCES genres (id_genre)
);

DROP TABLE genres;

CREATE TABLE books_genres(
	id_book INT NOT NULL,
	id_genre INT NOT NULL,
	FOREIGN KEY (id_book) REFERENCES books(id_book)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (id_genre) REFERENCES genres(id_genre)
		ON DELETE CASCADE 
		ON UPDATE CASCADE
);

DROP TABLE books_genres;


CREATE TABLE books_authors(
	id_book INT NOT NULL,
	id_author INT NOT NULL,
	FOREIGN KEY (id_book) REFERENCES books(id_book)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (id_author) REFERENCES authors(id_author)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

DROP TABLE books_authors;

CREATE TABLE authors_genres(
	id_genre INT NOT NULL,
	id_author INT NOT NULL,
	FOREIGN KEY (id_genre) REFERENCES genres(id_genre)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (id_author) REFERENCES authors(id_author)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

DROP TABLE authors_genres;