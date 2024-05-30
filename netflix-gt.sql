
CREATE TABLE director (
                id_director INT AUTO_INCREMENT NOT NULL,
                nombre VARCHAR(25) NOT NULL,
                edad INT NOT NULL,
                nacionalidad VARCHAR(25) NOT NULL,
                PRIMARY KEY (id_director)
);


CREATE TABLE categoria (
                id_categoria INT AUTO_INCREMENT NOT NULL,
                nombre VARCHAR(25) NOT NULL,
                PRIMARY KEY (id_categoria)
);


CREATE TABLE actor (
                id_actor INT AUTO_INCREMENT NOT NULL,
                nombre VARCHAR(50) NOT NULL,
                edad INT NOT NULL,
                nacionalidad VARCHAR(25) NOT NULL,
                PRIMARY KEY (id_actor)
);


CREATE TABLE detalle_pelicula (
                id_detalle INT AUTO_INCREMENT NOT NULL,
                id_director INT NOT NULL,
                id_actor INT NOT NULL,
                sinopsis VARCHAR(350) NOT NULL,
                duracion VARCHAR(15) NOT NULL,
                fecha_salida DATE NOT NULL,
                PRIMARY KEY (id_detalle)
);


CREATE TABLE pelicula (
                id_pelicula INT AUTO_INCREMENT NOT NULL,
                id_categoria INT NOT NULL,
                id_detalle INT NOT NULL,
                nombre VARCHAR(30) NOT NULL,
                PRIMARY KEY (id_pelicula)
);


CREATE TABLE lista_reproduccion (
                id_lista INT AUTO_INCREMENT NOT NULL,
                id_pelicula INT NOT NULL,
                nombre VARCHAR(25) NOT NULL,
                PRIMARY KEY (id_lista)
);


ALTER TABLE detalle_pelicula ADD CONSTRAINT director_detalle_pelicula_fk
FOREIGN KEY (id_director)
REFERENCES director (id_director)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE pelicula ADD CONSTRAINT categoria_pelicula_fk
FOREIGN KEY (id_categoria)
REFERENCES categoria (id_categoria)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE detalle_pelicula ADD CONSTRAINT actor_detalle_pelicula_fk
FOREIGN KEY (id_actor)
REFERENCES actor (id_actor)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE pelicula ADD CONSTRAINT detalle_pelicula_pelicula_fk
FOREIGN KEY (id_detalle)
REFERENCES detalle_pelicula (id_detalle)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE lista_reproduccion ADD CONSTRAINT pelicula_lista_reproduccion_fk
FOREIGN KEY (id_pelicula)
REFERENCES pelicula (id_pelicula)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
