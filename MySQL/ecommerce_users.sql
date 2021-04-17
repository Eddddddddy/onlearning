UPDATE ecommerce.users SET u_password = null, u_name = null, u_type_p = null, u_type_o = null, u_text = null WHERE u_email = '11';
UPDATE ecommerce.users SET u_password = '123456', u_name = '12345', u_type_p = null, u_type_o = null, u_text = null WHERE u_email = '12345@qq.com';
UPDATE ecommerce.users SET u_password = '123456', u_name = '张三', u_type_p = 2, u_type_o = 2, u_text = 2 WHERE u_email = '123456789@gmail.com';
UPDATE ecommerce.users SET u_password = 'wang', u_name = null, u_type_p = null, u_type_o = null, u_text = null WHERE u_email = '854214642';
UPDATE ecommerce.users SET u_password = '123456', u_name = '李四', u_type_p = 0, u_type_o = 3, u_text = 1 WHERE u_email = '854214642@qq.com';