package com.eddy.onlearning.controller;

import com.eddy.onlearning.bean.Article;
import com.eddy.onlearning.bean.Comment;
import com.eddy.onlearning.bean.User;
import com.eddy.onlearning.mapper.ArticleMapper;
import com.eddy.onlearning.mapper.CommentMapper;
import com.eddy.onlearning.mapper.UserMapper;
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
public class articleController {
    @Autowired(required = false)
    ArticleMapper articleMapper;

    @Autowired(required = false)
    CommentMapper commentMapper;

    @Autowired(required = false)
    UserMapper userMapper;

    @RequestMapping("/article/{t_id}")
    public String article(@PathVariable int t_id, Model model, HttpSession session) {
        Object loginUser = session.getAttribute("loginUser");
        if (loginUser == null) {
            User user = new User();
            user.setU_id(0);
            user.setU_name("登录");
            session.setAttribute("loginUser", user);
        }
        System.out.println("in article");
        Article article = articleMapper.getArticleByID(t_id);
        article.viewed();
        articleMapper.updateView(article.getT_view(), article.getT_id());
        article.setT_html(MarkdownUtil.markdownToHtml(article.getT_data()));
        model.addAttribute("article", article);

        Collection<Article> hotArticles = articleMapper.get10HotArticle();
        model.addAttribute("hotArticles", hotArticles);

        Collection<Article> catalogs = articleMapper.getCnameByFID(article.getT_fid());
        model.addAttribute("catalogs", catalogs);

        Collection<Comment> comments = commentMapper.getCommentByArticle(article.getT_id());
        for (Comment comment :
                comments) {
            comment.setU_name(userMapper.getUserByID(comment.getU_id()).getU_name());
        }
        model.addAttribute("comments", comments);
        return "article";
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

    @RequestMapping("/a/{t_id}")
    @ResponseBody
    public Collection<Comment> comment(@PathVariable int t_id) {
        SimpleDateFormat ft_y = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat ft_d = new SimpleDateFormat("hh:mm:ss");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);
        Date zero = calendar.getTime();
        Collection<Comment> comments = commentMapper.getCommentByArticle(t_id);
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

    @RequestMapping("/c/{c_text}/{t_id}/{u_id}")
    @ResponseBody
    public Collection<Comment> Addcomment(@PathVariable("c_text") int t_id, @PathVariable("t_id") String c_text, @PathVariable("u_id") int u_id) {
        System.out.println("comment");
        System.out.println(t_id);
        System.out.println(u_id);
        System.out.println(c_text);
        commentMapper.addComment(c_text, u_id, t_id, new Date());

        Collection<Comment> comments = commentMapper.getCommentByArticle(t_id);
        for (Comment comment :
                comments) {
            comment.setU_name(userMapper.getUserByID(comment.getU_id()).getU_name());
        }
        return comments;
    }

}
