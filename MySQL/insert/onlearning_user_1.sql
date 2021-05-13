create table user
(
    u_id            int auto_increment,
    u_name          varchar(60)                         not null,
    u_email         varchar(60)                         not null,
    u_password      varchar(300)                        not null,
    u_age           varchar(10)                         null,
    u_date          timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    u_state         int       default 1                 null,
    u_password_salt varchar(300)                        null,
    constraint user_u_email_uindex
        unique (u_email),
    constraint user_u_id_uindex
        unique (u_id)
);

alter table user
    add primary key (u_id);

INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (12, '王定一', '854214642@qq.com', '0d37cc57d8e62dc67928f792cfdc5fd66ff8b70a4d37fd3d8ebd66e7d114305d', null, '2021-05-09 10:56:46', 1, '1254574563');
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (21, '小明', 'xiaoming@163.com', '023d166a80a814f464b2c819bb696941f76f6ae96d0c78a82f6f40a82a5c4f4f', null, '2021-05-09 10:56:46', 1, '1251346456');
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (12334, '王定一', '123@qq.com', '1b287a147c022af565b170c9d13cd863d3333e0ee12a95bde68385ff4be60c3f', '18', '2021-05-09 10:56:46', 1, '1251246134');
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (12345678, '尹思冉', '925253647@qq.com', '674ad288c123a0880c18e5b942455166130ecd6210f25c15c8f36bbe5e0c7017', '18', '2021-05-09 10:56:46', 1, '3462345724');
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (12345679, '123@qq.com', '1234@QQ.com', '9015c94d8078deae5951b369abe21f35594fd36323b963c1b49acb0c3981b201', null, '2021-05-09 10:56:46', 1, '2351251353');
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (12345681, 'iiiiiiii', '123478778@QQ.com', 'd9207cff01484ed2958f925664869503a258c84232134a34a86613104d54864b', null, '2021-05-09 10:56:46', 1, '4567234562');
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (12345682, '石媛敏', 'shiyuanmin@163.com', 'f467ae60b268e8a43af6f21326936cbbc18938362adf6e86db0c4786385dec02', null, '2021-05-09 10:56:46', 1, '1241235125');
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (12345683, '毕昕玥', 'bixinyue@163.com', '0c78c04044d684c82457815aee7a0ff4602d9b3bb9fc4e9185889a6ce84e3ba2', null, '2021-05-09 10:56:46', 1, '1251234512');
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (12345684, '冯月', 'fengyue@163.com', '817a41acc77d4368c86f5f53330e596000c49c7559a383ec488b85ce98e63b53', null, '2021-05-09 10:56:46', 1, '2451251253');
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (12345685, '李辰缘', 'lichenyuan@163.com', 'cfc2c0960bc6b59447f26e1cac3af1f707befb5d3f42fe4bee636e0dcd9556d4', null, '2021-05-09 10:56:46', 1, '1241234125');
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (12345686, '王储', 'wangchu@163.com', 'bffb382e051fc6501463be730bcf61fd0e1a54b29fe4f93f4e286ac4cedca135', null, '2021-05-09 10:56:46', 1, '2451512452');
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (12345687, '王子昌', 'wangzichang@163.com', '93b8b7e2af849b3700007a326d251d2553c64f8f196504ffd600a40cd37ac01a', null, '2021-05-09 10:56:46', 1, '2346123623');
INSERT INTO onlearning.user (u_id, u_name, u_email, u_password, u_age, u_date, u_state, u_password_salt) VALUES (12345688, '加密账号', '99999@126.com', 'e7d731261da122c6f22960ec6f17a26d9b1f56f274c6da29bdb0d4a50000e430', null, '2021-05-09 10:52:29', 1, '1707986807');