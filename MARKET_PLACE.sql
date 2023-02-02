DROP DATABASE IF EXISTS marketPlace;
CREATE DATABASE marketPlace;

use marketPlace;

create table users (
    id int,
    Username varchar(255) NOT NULL,
    Lastname varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    password varchar(255) NOT NULL
);

create table card (
    cardId int NOT NULL,
    bankName varchar(255) NOT NULL,
    secretCode varchar(255) NOT NULL,
    secretId tinyint(3) NOT NULL,
    expiration datetime NOT NULL,
);

create table productName (
    productId int NOT NULL,
    productName varchar(255) NOT NULL,
    price float NOT NULL
    nbrProduct int NOT NULL
)

create table paiement (
    users_id int,
    card_id int,
    productId int,

)
