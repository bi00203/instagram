package com.instagram.controller;

import com.instagram.dto.UserDTO;
import com.instagram.service.UserService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Log4j2
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired private UserService userService;

    @GetMapping("/login")
    public void get_user_login(){}

    @GetMapping("/signup")
    public void get_user_signup(){}

    @PostMapping("/signup")
    public String post_user_signup(UserDTO user){
        log.info("post_user_signup:" + user);
        userService.create_user(user);
        return "redirect:/user/login";
    }
}
