package com.eddy.onlearning.mapper;

import com.eddy.onlearning.bean.Article;
import com.eddy.onlearning.bean.Video;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.Collection;

@Mapper
public interface VideoMapper {
    @Select("select * from video where v_id=#{v_id}")
    public Video getVideoByID(int v_id);

    @Update("update video set v_view=#{v_view} where v_id=#{v_id}")
    public void updateView(int v_view, int v_id);

    @Select("select * from video order by v_view DESC LIMIT 10")
    public Collection<Video> get10HotVideo();

    @Select("select v_id,v_cname from video where v_fid=#{v_fid}")
    public Collection<Video> getCnameByFID(int v_fid);

    @Select("select v_id,v_fid,v_fname from onlearning.video where v_cid=1")
    public Collection<Video> getAllFname();
}
