DROP DATABASE IF EXISTS `SpotifyClone`;

CREATE DATABASE `SpotifyClone`;

USE `SpotifyClone`;

CREATE TABLE `users` (
    user_id INT(11) PRIMARY KEY AUTO_INCREMENT,
	user_name VARCHAR(50) NOT NULL,
    age INT(11) NOT NULL
    signature_id NOT NULL
    FOREIGN KEY(signature_id) REFERENCES premium(signature_id)
) ENGINE=InnoDB;

CREATE TABLE `artists` (
    artist_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL,
) ENGINE=InnoDB;

CREATE TABLE `albums`(
	album_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(50) NOT NULL,
    artist_id INT(11) NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) ENGINE=InnoDB;

CREATE TABLE `premium` (
	signature_id INT(11) PRIMARY KEY AUTO_INCREMENT,
	signature VARCHAR(50) NOT NULL,
    signature_price DECIMAL(5,2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE `songs` (
	song_id INT(11) PRIMARY_KEY AUTO_INCREMENT,
    song_name VARCHAR(50) NOT NULL,
    album_id NOT NULL,
    FOREIGN KEY(album_id) REFERENCES albums(album_id)
) ENGINE=InnoDB;

CREATE TABLE `reproduction_history` (
	user_id INT(11) NOT NULL,
    song_id INT(11) NOT NULL,
    PRIMARY KEY(user_id, song_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(song_id) REFERENCES songs(song_id)
) ENGINE=InnoDB;

CREATE TABLE `follows` (
	user_id INT(11) NOT NULL,
    artist_id INT(11) NOT NULL,
    PRIMARY KEY(user_id, artist_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(artist_id) REFERENCES artists(artist_id)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.`users` (user_name, age, signature_id)
VALUES
    ('Thati', 23, 1),
    ('Cintia', 35, 3),
    ('Bill', 20, 2),
    ('Roger', 45, 1);

INSERT INTO SpotifyClone.`artists`(artist_name)
VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');

INSERT INTO SpotifyClone.`albums`(album_name, artist_id)
VALUES
    ('Envious', 1),
    ('Exuberant', 1),
    ('Hallowed Steam', 2),
    ('Incandescent', 3),
    ('Temporary Culture', 4);

INSERT INTO SpotifyClone.`premium`(signature, signature_price)
VALUES
    ('gratuito', 0),
    ('universitário', 5,99),
    ('familiar', 7,99);

INSERT INTO SpotifyClone.`songs`(song_name, album_id)
VALUES
    ('Soul For Us', 1),
    ('Reflections Of Magic', 1),
    ('Dance With Her Own', 1),
    ('Troubles Of My Inner Fire', 2),
    ('Time Fireworks', 2),
    ('Magic Circus' 3),
    ('Honey, So Do I' 3),
    ('Sweetie, 'Let's Go Wild' 3),
    ('She Knows', 3),
    ('Fantasy For Me', 4),
    ('Celebration Of More', 4),
    ('Rock His Everything', 4),
    ('Home Forever', 4),
    ('Diamond Power', 4),
    ('Honey, 'Let's Be Silly', 4),
    ('Thang Of Thunder', 5),
    ('Words Of Her Life', 5),
    ('Without My Streets', 5);

INSERT INTO SpotifyClone.`reproduction_history`(user_id, song_id)
VALUES
    (1, 1),
    (1, 6),
    (1, 14),
    (1, 16),
    (2, 13)
    (2, 17),
    (2, 2),
    (2, 15),
    (3, 4),
    (3, 16),
    (3, 6),
    (4, 3),
    (4, 18),
    (4, 11);

INSERT INTO SpotifyClone.`follows`(user_id, artist_id)
VALUES
    (1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);


  -- Composit Primary Keys Sintaxe:
  -- https://qastack.com.br/programming/217945/can-i-have-multiple-primary-keys-in-a-single-table
  -- https://www.youtube.com/watch?v=SydCFe5eF4o

  -- single quote problem at song 'Sweetie, Let's Go Wild'
  -- https://qastack.com.br/programming/1912095/how-to-insert-a-value-that-contains-an-apostrophe-single-quote