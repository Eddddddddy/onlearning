package com.eddy.onlearning.controller;

import com.eddy.onlearning.bean.Article;
import com.eddy.onlearning.bean.Comment;
import com.eddy.onlearning.bean.User;
import com.eddy.onlearning.bean.Video;
import com.eddy.onlearning.mapper.ArticleMapper;
import com.eddy.onlearning.mapper.CommentMapper;
import com.eddy.onlearning.mapper.UserMapper;
import com.eddy.onlearning.mapper.VideoMapper;
import com.eddy.onlearning.util.MarkdownUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;

@Controller
public class videoController {
    @Autowired(required = false)
    VideoMapper videoMapper;

    @Autowired(required = false)
    CommentMapper commentMapper;

    @Autowired(required = false)
    UserMapper userMapper;

    @RequestMapping("/video/{v_id}")
    public String video(@PathVariable int v_id, Model model, HttpSession session) {
        Object loginUser = session.getAttribute("loginUser");
        if (loginUser == null) {
            User user = new User();
            user.setU_id(0);
            user.setU_name("登录");
            session.setAttribute("loginUser", user);
        }
        System.out.println("in video");
        Video video = videoMapper.getVideoByID(v_id);
        video.viewed();
        videoMapper.updateView(video.getV_view(), video.getV_id());
        model.addAttribute("video", video);

        Collection<Video> hotVideos = videoMapper.get10HotVideo();
        model.addAttribute("hotVideos", hotVideos);

        Collection<Video> catalogs = videoMapper.getCnameByFID(video.getV_fid());
        model.addAttribute("catalogs", catalogs);

        Collection<Comment> comments = commentMapper.getCommentByVideo(video.getV_id());
        for (Comment comment :
                comments) {
            comment.setU_name(userMapper.getUserByID(comment.getU_id()).getU_name());
        }
        model.addAttribute("comments", comments);
        return "video";
    }


    public static String timeStamp2Date(String time) {
        Long timeLong = Long.parseLong(time);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//要转换的时间格式
        Date date;
        try {
            date = sdf.parse(sdf.format(timeLong));
            return sdf.format(date);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @RequestMapping("/b/{v_id}")
    @ResponseBody
    public Collection<Comment> comment(@PathVariable int v_id) {
        SimpleDateFormat ft_y = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat ft_d = new SimpleDateFormat("hh:mm:ss");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        Date zero = calendar.getTime();
        Collection<Comment> comments = commentMapper.getCommentByVideo(v_id);
        for (Comment comment :
                comments) {
            comment.setU_name(userMapper.getUserByID(comment.getU_id()).getU_name());
//            try {
//                if (comment.getC_time().after(zero)) {
//                    comment.setC_time(ft_d.parse(ft_d.format(comment.getC_time())));
//                } else {
//                    comment.setC_time(ft_y.parse(ft_y.format(comment.getC_time())));
//                }
//            } catch (ParseException e) {
//                e.printStackTrace();
//            }
        }
        return comments;
    }

    @RequestMapping("/d/{c_text}/{v_id}/{u_id}")
    @ResponseBody
    public Collection<Comment> Addcomment(@PathVariable int v_id,@PathVariable String c_text,@PathVariable int u_id) {
            commentMapper.addCommentToVideo(c_text, u_id, v_id, new Date());

            Collection<Comment> comments = commentMapper.getCommentByVideo(v_id);
            for (Comment comment :
                    comments) {
                comment.setU_name(userMapper.getUserByID(comment.getU_id()).getU_name());
            }
            return comments;
    }

}
