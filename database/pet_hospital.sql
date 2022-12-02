CREATE SCHEMA `pet_hospital_db`;

use `pet_hospital_db`;

create table users
(
    id           bigint primary key auto_increment,
    username     varchar(100),
    password     varchar(8),
    phone_number varchar(100),
    email        varchar(100),
    address      longtext,
    role         tinyint(1)
);

-- Chủng loại
create table species
(
    id   bigint primary key auto_increment,
    name varchar(100)
);

-- Bảng pet shop
create table pets
(
    id          bigint primary key auto_increment,
    name        varchar(100),
    age         int,
    price       double,
    description varchar(100),
    quantity    int,
    img         longtext,
    species_id  bigint,
    foreign key (species_id) references species (id)
);

-- Chi tiết đơn hàng
create table pet_cart_detail
(
    user_id       bigint,
    pet_id        bigint,
    bill_quantity int,
    foreign key (user_id) references users (id),
    foreign key (pet_id) references pets (id)
);


create table user_pet
(
    id         bigint primary key auto_increment,
    name       varchar(100),
    age        int,
    hobbit     varchar(100),
    species_id bigint,
    user_id    bigint,
    foreign key (species_id) references species (id),
    foreign key (user_id) references users (id)
);

create table service_category
(
    id   bigint primary key auto_increment,
    name varchar(100)
);

create table service
(
    id          bigint primary key auto_increment,
    name        varchar(100),
    price       double,
    time_box    int,
    category_id bigint,
    foreign key (category_id) references service_category (id)
);

create table pet_service
(
    service_id  bigint,
    user_pet_id bigint,
    foreign key (service_id) references service (id),
    foreign key (user_pet_id) references user_pet (id)
);

