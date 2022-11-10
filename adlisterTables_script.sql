USE
    adlister_db;
CREATE TABLE if not exists users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) DEFAULT 'NONE',
    email    VARCHAR(100) NOT NULL,
    password VARCHAR(40)  NOT NULL,

    PRIMARY KEY (id)

);


CREATE TABLE if not exists ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id     INT UNSIGNED NOT NULL,
    title       VARCHAR(100) NOT NULL,
    description TEXT         NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE

);



insert into users( username, email, password)
value ('admin','admin@emil.com','password')


