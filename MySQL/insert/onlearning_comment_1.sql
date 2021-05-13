create table comment
(
    c_id   int auto_increment,
    c_text varchar(512)  null,
    u_id   int           not null,
    t_id   int default 0 not null,
    c_time timestamp     null,
    v_id   int default 0 null,
    constraint comment_c_id_uindex
        unique (c_id),
    constraint comment_article_t_id_fk
        foreign key (t_id) references article (t_id),
    constraint comment_user_u_id_fk
        foreign key (u_id) references user (u_id)
);

alter table comment
    add primary key (c_id);

INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (2, '266234', 12, 8, '2021-04-06 17:14:35', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (3, '真是一篇好文章', 12, 8, '2021-04-07 21:02:07', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (4, '作者加油', 12345678, 8, '2021-04-07 21:02:34', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (5, '加油加油', 12345678, 8, '2021-04-07 21:03:09', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (6, 'klasjgioawjgiwejigjaweig', 12, 8, '2021-04-07 21:03:20', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (7, '32456234623', 12, 8, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (8, '342634', 12345678, 8, '2021-04-07 21:03:40', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (9, '245672457', 12345678, 8, '2021-04-07 21:22:15', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (10, '2152513', 12, 8, '2021-04-07 21:22:17', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (11, 'sdkjf89weg78as9dg768w', 12, 8, '2021-04-07 21:22:18', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (12, 'ggggg', 12334, 8, '2021-04-08 17:41:38', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (13, '23643562', 12334, 8, '2021-04-08 22:29:58', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (14, '1', 12334, 0, '2021-04-12 19:29:52', 5);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (15, '你好你好', 12334, 0, '2021-04-12 19:30:01', 5);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (16, '测试测试', 12334, 0, '2021-04-12 19:30:10', 5);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (18, '站长加油', 12334, 0, '2021-04-12 19:30:33', 5);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (19, '测试评论内容', 12334, 0, '2021-04-12 19:30:41', 5);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (20, '测试评论滚动', 12334, 0, '2021-04-12 19:30:48', 5);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (21, '测试评论滚动', 12334, 0, '2021-04-12 19:31:04', 5);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (24, '文章', 12334, 0, '2021-04-12 19:43:08', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (25, '1', 12334, 50, '2021-04-12 20:19:27', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (26, '这真是一篇好文章', 12345678, 8, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (27, '作者加油，加油', 12345682, 12, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (28, '在分享中成长', 12345683, 41, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (29, '笔者深入产出', 12345684, 50, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (30, '学到了学到了', 12345685, 5, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (31, '这方面一直没明白', 12345686, 48, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (32, '实在是太有用了', 12345687, 31, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (33, '收藏从未停止，实践从未开始', 12345678, 78, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (34, '写的很好，一起加油啊！', 12345682, 7, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (35, '一起去收藏夹吃灰吧！', 12345683, 14, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (36, '总结相当到位了', 12345684, 74, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (37, '这才是大家需要的帖子', 12345685, 73, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (38, '赞了，适合我这种', 12345686, 71, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (39, '这个不错', 12345687, 56, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (40, '谢谢博主，学到了', 12345678, 36, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (41, '感觉博主整合 拉进收藏了', 12345682, 39, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (42, '学习了', 12345683, 40, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (43, '真不错', 12345684, 35, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (44, '一用就废', 12345685, 42, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (45, '哈哈，再学不累', 12345686, 12, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (46, '有水平的技术帖', 12345687, 41, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (47, '感谢分享，学习了', 12345678, 50, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (48, '说不定有收获哦~', 12345682, 5, '2021-03-17 15:41:39', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (49, '欢迎来了解区块链技术哦', 12345683, 48, '2021-03-17 15:41:39', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (50, '赞了，适合我这种', 12345684, 31, '2021-03-17 15:41:39', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (51, '这个不错', 12345685, 78, '2021-03-17 15:41:39', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (52, '谢谢博主，学到了', 12345686, 7, '2021-03-17 15:41:39', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (53, '感觉博主整合 拉进收藏了', 12345687, 14, '2021-03-17 15:41:39', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (54, '作者加油，加油', 12345678, 72, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (55, '在分享中成长', 12345682, 44, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (56, '笔者深入产出', 12345683, 31, '2021-04-09 15:45:19', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (57, '学到了学到了', 12345684, 45, '2021-04-09 15:45:19', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (58, '这方面一直没明白', 12345685, 30, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (59, '实在是太有用了', 12345686, 73, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (60, '收藏从未停止，实践从未开始', 12345687, 74, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (61, '写的很好，一起加油啊！', 12345678, 46, '2021-03-17 15:41:39', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (62, '一起去收藏夹吃灰吧！', 12345682, 29, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (63, '总结相当到位了', 12345683, 47, '2021-03-11 15:45:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (64, '这才是大家需要的帖子', 12345684, 28, '2021-04-09 15:45:19', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (65, '赞了，适合我这种', 12345685, 75, '2021-03-11 15:45:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (66, '这个不错', 12345686, 76, '2021-04-09 15:45:19', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (67, '谢谢博主，学到了', 12345687, 27, '2021-04-09 15:45:19', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (68, '感觉博主整合 拉进收藏了', 12345678, 48, '2021-03-11 15:45:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (69, '学习了', 12345682, 26, '2021-03-11 15:45:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (70, '真不错', 12345683, 49, '2021-03-11 15:45:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (71, '一用就废', 12345684, 77, '2021-03-11 15:45:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (72, '哈哈，再学不累', 12345685, 78, '2021-04-09 15:45:19', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (73, '有水平的技术帖', 12345686, 30, '2021-04-09 15:45:19', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (74, '感谢分享，学习了', 12345687, 73, '2021-03-11 15:45:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (75, '说不定有收获哦~', 12345678, 74, '2021-04-09 15:45:19', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (76, '欢迎来了解区块链技术哦', 12345682, 46, '2021-03-11 15:45:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (77, '赞了，适合我这种', 12345683, 29, '2021-03-11 15:45:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (78, '这个不错', 12345684, 47, '2021-03-11 15:45:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (79, '谢谢博主，学到了', 12345685, 28, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (80, '感觉博主整合 拉进收藏了', 12345686, 75, '2021-03-17 15:41:39', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (81, '这才是大家需要的帖子', 12345687, 76, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (82, '这真是一篇好文章', 12345678, 8, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (83, '作者加油，加油', 12345682, 8, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (84, '在分享中成长', 12345683, 8, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (85, '笔者深入产出', 12345684, 8, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (86, '学到了学到了', 12345685, 8, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (87, '这方面一直没明白', 12345686, 8, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (88, '实在是太有用了', 12345687, 8, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (89, '收藏从未停止，实践从未开始', 12345678, 8, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (90, '写的很好，一起加油啊！', 12345682, 8, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (91, '一起去收藏夹吃灰吧！', 12345683, 8, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (92, '总结相当到位了', 12345684, 8, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (93, '这才是大家需要的帖子', 12345685, 8, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (94, '赞了，适合我这种', 12345686, 8, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (95, '这个不错', 12345687, 8, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (96, '谢谢博主，学到了', 12345678, 8, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (97, '感觉博主整合 拉进收藏了', 12345682, 8, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (98, '学习了', 12345683, 8, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (99, '真不错', 12345684, 8, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (100, '这方面一直没明白', 12345686, 12, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (101, '实在是太有用了', 12345687, 12, '2021-04-10 15:40:47', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (102, '收藏从未停止，实践从未开始', 12345678, 12, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (103, '写的很好，一起加油啊！', 12345682, 12, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (104, '一起去收藏夹吃灰吧！', 12345683, 12, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (105, '总结相当到位了', 12345684, 12, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (106, '这才是大家需要的帖子', 12345685, 12, '2021-03-20 15:41:05', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (107, '赞了，适合我这种', 12345686, 12, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (108, '这个不错', 12345687, 12, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (109, '谢谢博主，学到了', 12345678, 12, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (110, '感觉博主整合 拉进收藏了', 12345682, 12, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (111, '学习了', 12345683, 12, '2021-04-07 21:03:29', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (112, '真不错', 12345684, 12, '2021-04-12 19:30:48', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (113, '真好', 12345681, 11, '2021-04-17 15:32:18', 0);
INSERT INTO onlearning.comment (c_id, c_text, u_id, t_id, c_time, v_id) VALUES (116, '测试评论功能', 12334, 8, '2021-04-26 13:24:51', 0);