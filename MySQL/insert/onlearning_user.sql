create table user
(
    u_id       int auto_increment,
    u_name     varchar(60)                         not null,
    u_email    varchar(60)                         not null,
    u_password varchar(60)                         not null,
    u_age      varchar(10)                         null,
    u_date     timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    u_state    int       default 1                 null,
    constraint user_u_email_uindex
        unique (u_email),
    constraint user_u_id_uindex
        unique (u_id)
);

alter table user
    add primary key (u_id);

INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state) VALUES (12, '王定一', '854214642@qq.com', '123456', null, '2021-04-17 07:19:53', 1);
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state) VALUES (21, '小明', 'xiaoming@163.com', '123456', null, '2021-04-14 15:28:46', 1);
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state) VALUES (12334, '王定一', '123@qq.com', '123456', '18', '2021-04-16 22:09:39', 1);
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state) VALUES (12345678, '尹思冉', '925253647@qq.com', '123456', '18', '2021-02-20 15:29:10', 1);
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state) VALUES (12345679, '123@qq.com', '1234@QQ.com', '123456', null, '2021-04-16 22:09:33', 1);
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state) VALUES (12345681, 'iiiiiiii', '123478778@QQ.com', '123456', null, '2021-04-16 22:09:37', 1);
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state) VALUES (12345682, '石媛敏', 'shiyuanmin@163.com', '123456', null, '2021-04-14 15:32:15', 1);
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state) VALUES (12345683, '毕昕玥', 'bixinyue@163.com', '123456', null, '2021-04-14 15:32:20', 1);
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state) VALUES (12345684, '冯月', 'fengyue@163.com', '123456', null, '2021-03-14 15:32:22', 1);
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state) VALUES (12345685, '李辰缘', 'lichenyuan@163.com', '123456', null, '2021-04-14 15:32:26', 1);
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state) VALUES (12345686, '王储', 'wangchu@163.com', '123456', null, '2021-03-14 15:32:28', 1);
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state) VALUES (12345687, '王子昌', 'wangzichang@163.com', '123456', null, '2021-03-14 15:32:32', 1);