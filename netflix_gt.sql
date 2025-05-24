CREATE DATABASE netflix_gt;
USE netflix_gt;

CREATE TABLE enc_pelicula (
    id_enc_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(30) NOT NULL,
    genero VARCHAR(15) NOT NULL,
    lanzamiento DATE NOT NULL,
    clasificacion VARCHAR(10) NOT NULL,
    duracion TIME NOT NULL,
    imagen VARCHAR(30) NOT NULL
);

CREATE TABLE detalle_pelicula (
    id_detalle_pelicula INT AUTO_INCREMENT PRIMARY KEY,
    id_enc_pelicula INT NOT NULL,
    sinopsis VARCHAR(255) NOT NULL,
    director VARCHAR(30) NOT NULL,
    escritores VARCHAR(30) NOT NULL,
    CONSTRAINT fk_detalle_pelicula FOREIGN KEY (id_enc_pelicula) REFERENCES enc_pelicula(id_enc_pelicula)
);