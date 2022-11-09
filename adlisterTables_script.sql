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
    id          INT UNSIGNED NOT NULL,
    user_id     int  UNSIGNED NOT NULL,
    title       VARCHAR(100) NOT NULL,
    description TEXT         NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users (id)

);
