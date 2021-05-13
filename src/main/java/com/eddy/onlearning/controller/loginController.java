package com.eddy.onlearning.controller;

import com.eddy.onlearning.bean.Administrator;
import com.eddy.onlearning.bean.User;
import com.eddy.onlearning.mapper.AdministratorMapper;
import com.eddy.onlearning.mapper.UserMapper;
import org.apache.commons.codec.binary.Hex;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Date;

@Controller
public class loginController {
    @Autowired(required = false)
    UserMapper userMapper;

    @Autowired(required = false)
    AdministratorMapper administratorMapper;

    @RequestMapping("/user/{loginUser}")
    public String login(HttpSession session, Model model) {
        User user = (User) session.getAttribute("loginUser");
        System.out.println(user);
        if (user.getU_id() == 0) {
            return "login";
        }
        return "redirect:/index.html";
    }

    @PostMapping(value = "/user/check")
    public String check(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        HttpSession session,
                        Model model) {
        if (!username.isEmpty() && !password.isEmpty()) {
            User user = userMapper.getUserByEmail(username);
            if (user != null) {
                if (user.getU_state() == 1) {
                    password = password+user.getU_password_salt();
                    MessageDigest messageDigest;
                    String encdeStr = "";
                    try {
                        messageDigest = MessageDigest.getInstance("SHA-256");
                        byte[] hash = messageDigest.digest(password.getBytes("UTF-8"));
                        encdeStr = Hex.encodeHexString(hash);
                    } catch (NoSuchAlgorithmException e) {
                        e.printStackTrace();
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                    if (user.getU_password().equals(encdeStr)) {
                        session.setAttribute("loginUser", user);
                        return "redirect:/index.html";
                    }
                } else {
                    model.addAttribute("msg", "您的账号已被冻结");
                    return "login";
                }
            } else {
                Administrator admin = administratorMapper.getAdministratorByEmail(username);
                if (admin != null) {
                    password = password+admin.getA_password_salt();
                    MessageDigest messageDigest;
                    String encdeStr = "";
                    try {
                        messageDigest = MessageDigest.getInstance("SHA-256");
                        byte[] hash = messageDigest.digest(password.getBytes("UTF-8"));
                        encdeStr = Hex.encodeHexString(hash);
                    } catch (NoSuchAlgorithmException e) {
                        e.printStackTrace();
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                    if (admin.getA_password().equals(encdeStr)) {
                        session.setAttribute("loginAdmin", admin);
                        return "redirect:/dashboard";
                    }
                }
            }
        }
        model.addAttribute("msg", "用户名密码错误");
        return "login";
    }

    @RequestMapping("/user/logoff")
    public String logoff(HttpSession session) {
        User user = new User();
        user.setU_id(0);
        user.setU_name("登录");
        session.setAttribute("loginUser", user);
        return "redirect:/index.html";
    }

    @RequestMapping("/user/signup")
    public String signup(HttpSession session, Model model) {
        model.addAttribute("msg", null);
        return "signup";
    }

    @PostMapping(value = "/user/signup-add")
    public String add(@RequestParam("id") String id,
                      @RequestParam("username") String username,
                      @RequestParam("password") String password,
                      @RequestParam("repassword") String repassword,
                      HttpSession session,
                      Model model) {
        if (!id.isEmpty() && !password.isEmpty()) {
            if (!username.isEmpty()) {
                if (password.equals(repassword)) {
                    User user = userMapper.getUserByEmail(id);
                    if (user == null) {
                        System.out.println(userMapper.getMaxId());
                        Long nextId = Long.valueOf(userMapper.getMaxId()) + 1;
                        SecureRandom random=new SecureRandom();
                        Integer randNum = random.nextInt();
                        MessageDigest messageDigest;
                        String encdeStr = password + randNum;
                        try {
                            messageDigest = MessageDigest.getInstance("SHA-256");
                            byte[] hash = messageDigest.digest(encdeStr.getBytes("UTF-8"));
                            encdeStr = Hex.encodeHexString(hash);
                        } catch (NoSuchAlgorithmException e) {
                            e.printStackTrace();
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                        }
                        userMapper.addUser(nextId.toString(), username, id, encdeStr, randNum.toString());
                        user = userMapper.getUserByEmail(id);
                        session.setAttribute("loginUser", user);
                        return "redirect:/index.html";

                    } else {
                        model.addAttribute("msg", "账户已注册，可直接登录");
                    }
                } else {
                    model.addAttribute("msg", "密码输入有误");
                }
            } else {
                model.addAttribute("msg", "昵称不能为空");
            }
        } else {
            model.addAttribute("msg", "用户名密码不能为空");
        }
        return "signup";
    }
}
