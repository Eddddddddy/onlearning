package com.eddy.onlearning.mapper;

import com.eddy.onlearning.bean.Comment;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.Collection;
import java.util.Date;

@Mapper
public interface CommentMapper {
    @Select("select * from comment where t_id=#{t_id} order by c_time")
    public Collection<Comment> getCommentByArticle(int t_id);

    @Select("select * from comment where v_id=#{v_id} order by c_time")
    public Collection<Comment> getCommentByVideo(int v_id);

    @Insert("insert into comment(c_text,u_id,t_id,c_time) values (#{c_text},#{u_id},#{t_id},#{c_time})")
    public void addComment(String c_text, int u_id, int t_id, Date c_time);

    @Insert("insert into comment(c_text,u_id,v_id,c_time) values (#{c_text},#{u_id},#{v_id},#{c_time})")
    public void addCommentToVideo(String c_text, int u_id, int v_id, Date c_time);

    @Select("select count(*) from comment where t_id=#{t_id}")
    public int getCommentNumberByArticle(int t_id);

    @Delete("delete from comment where u_id=#{u_id}")
    public void deleteCommentByUID(int u_id);

    @Delete("delete from comment where c_id=#{c_id}")
    public void deleteCommentByID(int c_id);

    @Select("select * from comment")
    public Collection<Comment> getAllComment();

    @Select("select * from comment where u_id=#{u_id}")
    public Collection<Comment> getCommentByUser(int u_id);

    @Select("select * from comment where c_text like '%${keyword}%'")
    public Collection<Comment> getCommentByText(String keyword);
}
