package com.eddy.onlearning.mapper;


import com.eddy.onlearning.bean.User;
import org.apache.ibatis.annotations.*;

import java.util.Collection;
import java.util.Date;

@Mapper
public interface UserMapper {
    @Select("select * from user where u_id=#{u_id}")
    public User getUserByID(int u_id);

    @Select("select * from user where u_email=#{u_email}")
    public User getUserByEmail(String u_email);

    @Select("select * from user where u_name=#{u_name}")
    public Collection<User> getUserByName(String u_name);

    @Insert("insert into user(u_id, u_name, u_email, u_password, u_password_salt) values (#{u_id},#{u_name},#{u_email},#{u_password},#{u_password_salt})")
    public void addUser(String u_id, String u_name, String u_email, String u_password, String u_password_salt);

    @Select("select MAX(u_id) from user")
    public String getMaxId();

    @Select("select * from user")
    public Collection<User> getAllUser();

    @Delete("delete from user where u_id=#{u_id}")
    public void deleteUserByID(int u_id);

    @Update("update user set u_state=0 where u_id=#{u_id}")
    public void frozenUserByID(int u_id);

    @Update("update user set u_state=1 where u_id=#{u_id}")
    public void recoveryUserByID(int u_id);

    @Select("select u_name from user where u_id=#{u_id}")
    public String getUNameByID(int u_id);
}
