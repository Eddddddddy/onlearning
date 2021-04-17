package com.eddy.onlearning.mapper;

import com.eddy.onlearning.bean.Article;
import org.apache.ibatis.annotations.*;

import java.util.Collection;

@Mapper
public interface ArticleMapper {
    @Select("select t_id,t_fid,t_fname from onlearning.article where t_cid=1")
    public Collection<Article> getAllFname();

    @Select("select * from article where t_id=#{t_id}")
    public Article getArticleByID(int t_id);

    @Update("update article set t_view=#{t_view} where t_id=#{t_id}")
    public void updateView(int t_view, int t_id);

    @Select("select * from article order by t_view DESC LIMIT 10")
    public Collection<Article> get10HotArticle();

    @Select("select t_id,t_cname from article where t_fid=#{t_fid}")
    public Collection<Article> getCnameByFID(int t_fid);

    @Select("select * from article where t_data like '%${keyword}%'")
    public Collection<Article> getArticleByKeyword(String keyword);

    @Select("select * from article order by t_view")
    public Collection<Article> getAllArticle();

    @Select("select * from article where t_fid=#{t_fid}")
    public Collection<Article> getArticleByFID(int t_fid);

    @Update("update article set t_data=#{t_data} where t_id=#{t_id}")
    public void updateData(String t_data, int t_id);

    @Select("select * from article where t_fname=#{t_fname} and t_cid=1")
    public Article getArticleByFName(String t_fname);

    @Select("select * from article where t_cname=#{t_cname}")
    public Article getArticleByCName(String t_cname);

    @Select("select MAX(t_fid) from article")
    public int getMaxFId();

    @Select("select MAX(t_cid) from article")
    public int getMaxCId();

    @Insert("insert into article(t_fid, t_fname, t_cid, t_cname, t_data) values (#{t_fid},#{t_fname},#{t_cid},#{t_cname},#{t_data})")
    public void addArticle(int t_fid, String t_fname, int t_cid, String t_cname, String t_data);

    @Delete("DELETE FROM article where t_id=#{t_id}")
    public void deleteArticle(int t_id);

    @Select("select t_cname from article where t_id=#{t_id}")
    public String getCNameByID(int t_id);
}
