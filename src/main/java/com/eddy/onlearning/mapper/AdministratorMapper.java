package com.eddy.onlearning.mapper;

import com.eddy.onlearning.bean.Administrator;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface AdministratorMapper {
    @Select("select * from administrator where a_email=#{a_email}")
    public Administrator getAdministratorByEmail(String a_email);
}
