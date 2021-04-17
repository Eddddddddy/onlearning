package com.eddy.onlearning.controller;

import com.alibaba.fastjson.JSONObject;
import com.eddy.onlearning.bean.Administrator;
import com.eddy.onlearning.bean.Article;
import com.eddy.onlearning.bean.Comment;
import com.eddy.onlearning.bean.User;
import com.eddy.onlearning.mapper.ArticleMapper;
import com.eddy.onlearning.mapper.CommentMapper;
import com.eddy.onlearning.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Controller
public class dashboardController {

    @Autowired(required = false)
    ArticleMapper articleMapper;

    @Autowired(required = false)
    CommentMapper commentMapper;

    @Autowired(required = false)
    UserMapper userMapper;

    @RequestMapping("/dashboard")
    public String dashboard(HttpSession session) {
        Administrator administrator = (Administrator)session.getAttribute("loginAdmin");
        if (administrator == null){
            User user = new User();
            user.setU_id(0);
            user.setU_name("登录");
            session.setAttribute("loginUser", user);
            return "redirect:/user/0";
        }
        return "dashboard";
    }

    @RequestMapping("/dashboard/article")
    public String article(HttpSession session) {
        Administrator administrator = (Administrator)session.getAttribute("loginAdmin");
        if (administrator == null){
            User user = new User();
            user.setU_id(0);
            user.setU_name("登录");
            session.setAttribute("loginUser", user);
            return "redirect:/user/0";
        }
        return "dashboardArticle";
    }

    @RequestMapping("/dashboard/user")
    public String user(HttpSession session) {
        Administrator administrator = (Administrator)session.getAttribute("loginAdmin");
        if (administrator == null){
            User user = new User();
            user.setU_id(0);
            user.setU_name("登录");
            session.setAttribute("loginUser", user);
            return "redirect:/user/0";
        }
        return "dashboardUser";
    }

    @RequestMapping("/dashboard/comment")
    public String comment(HttpSession session) {
        Administrator administrator = (Administrator)session.getAttribute("loginAdmin");
        if (administrator == null){
            User user = new User();
            user.setU_id(0);
            user.setU_name("登录");
            session.setAttribute("loginUser", user);
            return "redirect:/user/0";
        }
        return "dashboardComment";
    }

    @RequestMapping("/da")
    @ResponseBody
    public JSONObject da() {
        JSONObject jsonObject = new JSONObject();
        List<String> t_cname = new ArrayList<>();
        List<Integer> t_view = new ArrayList<>();
        List<Integer> comment = new ArrayList<>();
        Collection<Article> articles = articleMapper.getAllArticle();
        for (Article article : articles) {
            t_cname.add(article.getT_cname());
            t_view.add(article.getT_view());
            comment.add(commentMapper.getCommentNumberByArticle(article.getT_id()));
        }
        jsonObject.put("文章", t_cname);
        jsonObject.put("阅读量", t_view);
        jsonObject.put("评论数", comment);
        return jsonObject;
    }

    @RequestMapping("/db")
    @ResponseBody
    public JSONObject db() {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("name", "文章");
        List<JSONObject> children = new ArrayList<>();
        Collection<Article> articles = articleMapper.getAllFname();
        for (Article article : articles) {
            JSONObject child = new JSONObject();
            List<JSONObject> childList = new ArrayList<>();
            child.put("name", article.getT_fname());
            Collection<Article> cArticles = articleMapper.getArticleByFID(article.getT_fid());
            for (Article carticle : cArticles) {
                JSONObject cchild = new JSONObject();
                cchild.put("name", carticle.getT_cname());
                cchild.put("value", carticle.getT_id());
                childList.add(cchild);
            }
            child.put("children", childList);
            children.add(child);
        }
        jsonObject.put("children", children);
        return jsonObject;
    }

    @RequestMapping("/dc/{t_id}")
    @ResponseBody
    public Article dc(@PathVariable int t_id) {
        Article article = articleMapper.getArticleByID(t_id);
        if (article == null) {
            article = new Article();
            article.setT_cname("文章名称");
            article.setT_fname("文章分类");
            article.setT_data(" ");
        }
        return article;
    }

    @RequestMapping("/dd")
    @ResponseBody
    public String dd(int t_id, String t_data, String t_fname, String t_cname) {
        System.out.println(t_id);
        System.out.println(t_data);
        System.out.println(t_fname);
        System.out.println(t_cname);
        Article article = articleMapper.getArticleByID(t_id);
        if (article == null || t_id == 0) {
            article = new Article();
            if (articleMapper.getArticleByFName(t_fname) == null) {
                article.setT_fname(t_fname);
                article.setT_fid(articleMapper.getMaxFId() + 1);
                article.setT_cid(1);
            } else {
                article.setT_fname(articleMapper.getArticleByFName(t_fname).getT_fname());
                article.setT_fid(articleMapper.getArticleByFName(t_fname).getT_cid());
                article.setT_cid(articleMapper.getMaxCId() + 1);
            }
            article.setT_cname(t_cname);
            article.setT_data(t_data);
            articleMapper.addArticle(article.getT_fid(), article.getT_fname(), article.getT_cid(), article.getT_cname(), article.getT_data());
        } else {
            articleMapper.updateData(t_data, article.getT_id());
        }
        return "保存成功";
    }

    @RequestMapping("/de/{t_id}")
    @ResponseBody
    public String de(@PathVariable int t_id) {
        Article article = articleMapper.getArticleByID(t_id);
        if (article == null) {
            return "未找到文章";
        }
        articleMapper.deleteArticle(article.getT_id());
        return "删除成功";
    }

    @RequestMapping("/df")
    @ResponseBody
    public Collection<User> df() {
        Collection<User> users = userMapper.getAllUser();
        return users;
    }

    @RequestMapping("/dg")
    @ResponseBody
    public Collection<User> dg(int u_id) {
        userMapper.frozenUserByID(u_id);
        Collection<User> users = userMapper.getAllUser();
        return users;
    }

    @RequestMapping("/dh")
    @ResponseBody
    public Collection<User> dh(int u_id) {
        userMapper.recoveryUserByID(u_id);
        Collection<User> users = userMapper.getAllUser();
        return users;
    }

    @RequestMapping("/di")
    @ResponseBody
    public Collection<User> di(int u_id) {
        commentMapper.deleteCommentByUID(u_id);
        userMapper.deleteUserByID(u_id);
        Collection<User> users = userMapper.getAllUser();
        return users;
    }

    @RequestMapping("/dj")
    @ResponseBody
    public Collection<User> dj(String searchText) {
        Collection<User> users = new ArrayList<>();
        try {
            if (userMapper.getUserByID(Integer.parseInt(searchText)) != null) {
                users.add(userMapper.getUserByID(Integer.parseInt(searchText)));
            }
        } catch (Exception e) {
            ;
        }
        if (userMapper.getUserByEmail(searchText) != null) {
            users.add(userMapper.getUserByEmail(searchText));
        }
        Collection<User> users1 = userMapper.getUserByName(searchText);
        for (User user :
                users1) {
            users.add(user);
        }
        System.out.println("out dj");
        System.out.println(users);
        return users;
    }


    @RequestMapping("/cf")
    @ResponseBody
    public Collection<Comment> cf() {
        Collection<Comment> users = commentMapper.getAllComment();
        Collection<Comment> comments = new ArrayList<>();
        for (Comment c :
                users) {
            c.setU_name(userMapper.getUserByID(c.getU_id()).getU_email());
            c.setT_name(articleMapper.getCNameByID(c.getT_id()));
            comments.add(c);
        }
        return comments;
    }

    @RequestMapping("/ci")
    @ResponseBody
    public Collection<Comment> ci(int u_id) {
        commentMapper.deleteCommentByID(u_id);
        Collection<Comment> users = commentMapper.getAllComment();
        Collection<Comment> comments = new ArrayList<>();
        for (Comment c :
                users) {
            c.setU_name(userMapper.getUserByID(c.getU_id()).getU_email());
            c.setT_name(articleMapper.getCNameByID(c.getT_id()));
            comments.add(c);
        }
        return comments;
    }

    @RequestMapping("/cj")
    @ResponseBody
    public Collection<Comment> cj(String searchText) {
        Collection<Comment> users = new ArrayList<>();
        if (articleMapper.getArticleByCName(searchText) != null){
            if (commentMapper.getCommentByArticle(articleMapper.getArticleByCName(searchText).getT_id()) != null){
                for (Comment c :
                        commentMapper.getCommentByArticle(articleMapper.getArticleByCName(searchText).getT_id())) {
                    c.setU_name(userMapper.getUserByID(c.getU_id()).getU_email());
                    c.setT_name(articleMapper.getCNameByID(c.getT_id()));
                    users.add(c);
                }
            }
        }
        if (userMapper.getUserByEmail(searchText) != null){
            if (commentMapper.getCommentByUser(userMapper.getUserByEmail(searchText).getU_id()) != null){
                for (Comment c :
                        commentMapper.getCommentByUser(userMapper.getUserByEmail(searchText).getU_id())) {
                    c.setU_name(userMapper.getUserByID(c.getU_id()).getU_email());
                    c.setT_name(articleMapper.getCNameByID(c.getT_id()));
                    users.add(c);
                }
            }
        }
        if (commentMapper.getCommentByText(searchText) != null) {
            for (Comment c :
                    commentMapper.getCommentByText(searchText)) {
                c.setU_name(userMapper.getUserByID(c.getU_id()).getU_email());
                c.setT_name(articleMapper.getCNameByID(c.getT_id()));
                users.add(c);
            }
        }
        System.out.println("out dj");
        System.out.println(users);
        return users;
    }


}
