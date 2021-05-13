create table administrator
(
    a_id            int auto_increment,
    a_name          varchar(60)  not null,
    a_email         varchar(60)  not null,
    a_password      varchar(300) not null,
    a_password_salt varchar(300) null,
    constraint administrator_a_id_uindex
        unique (a_id)
);

alter table administrator
    add primary key (a_id);

INSERT INTO onlearning.administrator (a_id, a_name, a_email, a_password, a_password_salt) VALUES (1, '小王', 'admin@qq.com', '51501a7921e6d5e7eb245c41e681b6556d79f20722e844f331a520c428c4bbeb', '2346127642');