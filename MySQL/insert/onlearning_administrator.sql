create table administrator
(
    a_id       int auto_increment,
    a_name     varchar(60) not null,
    a_email    varchar(60) not null,
    a_password varchar(60) not null,
    constraint administrator_a_id_uindex
        unique (a_id)
);

alter table administrator
    add primary key (a_id);

INSERT INTO onlearning.administrator (a_id, a_name, a_email, a_password) VALUES (1, '小王', 'admin@qq.com', '123456');