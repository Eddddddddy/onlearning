package com.eddy.onlearning.controller;

import com.eddy.onlearning.bean.Article;
import com.eddy.onlearning.bean.User;
import com.eddy.onlearning.bean.Video;
import com.eddy.onlearning.mapper.ArticleMapper;
import com.eddy.onlearning.mapper.UserMapper;
import com.eddy.onlearning.mapper.VideoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Collection;

@Controller
public class indexController {
    @Autowired(required = false)
    UserMapper userMapper;

    @Autowired(required = false)
    ArticleMapper articleMapper;

    @Autowired(required = false)
    VideoMapper videoMapper;

    Collection<Article> catalogs;
    Collection<Video> catalogvs;

    @RequestMapping("/index.html")
    public String index(HttpSession session, Model model) {
        catalogs = articleMapper.getAllFname();
        catalogvs = videoMapper.getAllFname();
        Object loginUser = session.getAttribute("loginUser");
        if (loginUser == null) {
            User user = new User();
            user.setU_id(0);
            user.setU_name("登录");
            session.setAttribute("loginUser", user);
        } else {
            session.setAttribute("loginUser", loginUser);
        }
        if (catalogs != null) {
            model.addAttribute("catalogs", catalogs);
        }
        if (catalogvs != null) {
            model.addAttribute("catalogvs", catalogvs);
        }
        return "index";
    }

}
