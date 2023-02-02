DROP DATABASE IF EXISTS marketPlace;
CREATE DATABASE marketPlace;

use marketPlace;

DROP TABLE IF EXISTS users;

create table users (
    usersId int NOT NULL,
    Username varchar(255) NOT NULL,
    Lastname varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    PRIMARY KEY (usersId)
);

DROP TABLE IF EXISTS bankCard;

create table bankCard (
    cardId int NOT NULL,
    bankName varchar(255) NOT NULL,
    secretCode varchar(255) NOT NULL,
    secretId tinyint(3) NOT NULL,
    expiration datetime NOT NULL,
    PRIMARY KEY (cardId)
);

DROP TABLE IF EXISTS product;

create table product (
    productId int NOT NULL,
    productName varchar(255) NOT NULL,
    price float NOT NULL,
    nbrProduct int NOT NULL,
    PRIMARY KEY (productId)
);

DROP TABLE IF EXISTS payment;

create table payment (
    payementId int,
    usersId int,
    cardId int,
    productId int,
    PRIMARY KEY (payementId),
    FOREIGN KEY (usersId) REFERENCES users(usersId),
    FOREIGN KEY (cardId) REFERENCES bankCard(cardId),
    FOREIGN KEY (productId) REFERENCES product(productId)
);
