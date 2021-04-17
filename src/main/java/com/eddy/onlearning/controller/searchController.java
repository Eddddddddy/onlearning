package com.eddy.onlearning.controller;

import com.eddy.onlearning.bean.Article;
import com.eddy.onlearning.bean.User;
import com.eddy.onlearning.mapper.ArticleMapper;
import com.eddy.onlearning.mapper.CommentMapper;
import com.eddy.onlearning.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Collection;

@Controller
public class searchController {
    @Autowired(required = false)
    ArticleMapper articleMapper;

    @Autowired(required = false)
    CommentMapper commentMapper;

    @Autowired(required = false)
    UserMapper userMapper;

    @GetMapping("/search")
    public String search(@RequestParam("keyword") String keyword, Model model, HttpSession session) {
        Object loginUser = session.getAttribute("loginUser");
        if (loginUser == null) {
            User user = new User();
            user.setU_id(0);
            user.setU_name("登录");
            session.setAttribute("loginUser", user);
        }
        System.out.println(keyword);
//        String payload = "%";
//        payload.concat(keyword);
//        payload.concat("%");
        Collection<Article> articles = articleMapper.getArticleByKeyword(keyword);
        System.out.println(articles);
        model.addAttribute("results",articles);
        Collection<Article> hotArticles = articleMapper.get10HotArticle();
        model.addAttribute("hotArticles", hotArticles);
        return "search";
    }
}
