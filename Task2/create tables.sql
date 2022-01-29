create table if not exists skillbox_test.categories
(
    id     int auto_increment primary key,
    name   varchar(200) null,
    parent int          null
);

create table if not exists skillbox_test.colors
(
    id   int auto_increment primary key,
    name varchar(200) null
);

create table if not exists skillbox_test.companies
(
    id   int auto_increment primary key,
    name varchar(200) null
);

create table if not exists skillbox_test.goods
(
    id   int auto_increment primary key,
    name varchar(200) null
);

create table if not exists skillbox_test.companies_goods
(
    id         int auto_increment primary key,
    company_id int not null,
    good_id    int not null
);

create table if not exists skillbox_test.goods_categories
(
    id          int auto_increment primary key,
    category_id int not null,
    good_id     int not null
);

create table if not exists skillbox_test.goods_colors
(
    id       int auto_increment primary key,
    good_id  int not null,
    color_id int not null
);

