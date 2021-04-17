create table video
(
    v_id    int auto_increment
        primary key,
    v_video varchar(200)  null,
    v_fid   int           null,
    v_fname varchar(200)  null,
    v_cid   int           null,
    v_cname varchar(200)  null,
    v_view  int default 0 null
);

INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (0, null, null, null, null, null, 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (3, '1', 1, 'HTML教程', 1, '浏览器和服务器', 5);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (4, '2', 1, 'HTML教程', 2, '浏览器访问网页原理', 2);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (5, '3', 1, 'HTML教程', 3, '浏览器请求数据的过程', 84);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (6, '4', 1, 'HTML教程', 4, '什么是URL', 2);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (7, '5', 1, 'HTML教程', 5, 'HTTP协议', 4);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (8, '6', 1, 'HTML教程', 6, '其它知识补充', 8);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (9, '7', 1, 'HTML教程', 7, 'HTML作用', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (10, '8', 1, 'HTML教程', 8, 'HTML发展史', 2);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (11, '9', 1, 'HTML教程', 9, '第一个HTML网页', 2);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (12, '10', 1, 'HTML教程', 10, 'HTML基本结构详解', 4);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (13, '11', 1, 'HTML教程', 11, '字符集问题', 2);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (14, '12', 2, 'Python教程', 1, 'Python的自述', 4);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (15, '13', 2, 'Python教程', 2, 'Python简介', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (16, '14', 2, 'Python教程', 3, 'Python开发环境的安装', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (17, '15', 2, 'Python教程', 4, '集成开发环境Pycharm的安装', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (18, '16', 2, 'Python教程', 5, '输出函数', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (19, '17', 2, 'Python教程', 6, '转义字符与原字符', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (20, '18', 2, 'Python教程', 7, '二进制与字符编码', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (21, '19', 2, 'Python教程', 8, 'Python中的标识符', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (22, '20', 2, 'Python教程', 9, '变量的定义和使用', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (23, '21', 2, 'Python教程', 10, '变量的多次赋值', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (24, '22', 2, 'Python教程', 11, 'Python中常见的数据类型', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (25, '23', 3, 'Docker教程', 1, 'docker的引言', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (26, '24', 3, 'Docker教程', 2, 'docker与传统虚拟机对比', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (27, '25', 3, 'Docker教程', 3, 'docker的安装', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (28, '26', 3, 'Docker教程', 4, 'docker的核心概念和核心架构', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (29, '27', 3, 'Docker教程', 5, 'docker配置镜像加速服务', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (30, '28', 3, 'Docker教程', 6, 'docker的helloworld', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (31, '29', 3, 'Docker教程', 7, 'docker中镜像相关操作', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (32, '30', 3, 'Docker教程', 8, '容器的基本操作(一)', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (33, '31', 3, 'Docker教程', 9, '容器的基本操作(二)', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (34, '32', 3, 'Docker教程', 10, '容器的基本操作(三)', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (35, '33', 4, 'MySQL教程', 1, '数据库基本概念', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (36, '34', 4, 'MySQL教程', 2, '数据库类型', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (37, '35', 4, 'MySQL教程', 3, 'MySQL介绍', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (38, '36', 4, 'MySQL教程', 4, 'MySQL8的安装', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (39, '37', 4, 'MySQL教程', 5, '查看MySQL的安装结果', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (40, '38', 4, 'MySQL教程', 6, 'MySQL登录', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (41, '39', 4, 'MySQL教程', 7, '数据库的卸载', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (42, '40', 4, 'MySQL教程', 8, '使用图形客户端navicat12连接MySQL', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (43, '41', 4, 'MySQL教程', 9, 'SQL语言入门', 0);
INSERT INTO onlearning.video (v_id, v_video, v_fid, v_fname, v_cid, v_cname, v_view) VALUES (44, '42', 4, 'MySQL教程', 10, '数据库表列类型', 0);