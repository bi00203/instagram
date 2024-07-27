package com.instagram.controller;

import com.instagram.dto.UserDTO;
import com.instagram.service.EmailService;
import com.instagram.service.UserService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Log4j2
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired private UserService userService;
    @Autowired private EmailService emailService;


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

    /*********************************************************/
    // 유저에게 이메일로 인증 번호를 전송함
    @ResponseBody
    @PostMapping("/auth")
    public ResponseEntity<Void> post_email_auth(String email){
        try {
            // email 에 인증번호를 발송한다
            emailService.send_signup_auth_mail(email);
            // 발송에 성공했으면 ok.
            return ResponseEntity.ok(null);
        }catch (Exception e){
            // 발송하다가 오류났으면 Status에 Error 설정
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }
}
