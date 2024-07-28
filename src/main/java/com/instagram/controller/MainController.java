package com.instagram.controller;

import com.instagram.dto.PostDTO;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Log4j2
@Controller
public class MainController {
    @GetMapping("/")
    public String get_main() {
        return "main/main";
    }

    @GetMapping("/post/create")
    public String get_post_create(){
        return "main/create-post";
    }

    @PostMapping("/post/create")
    public String post_post_create(
            PostDTO post
    ){
        log.info(post);
        return "redirect:/post/create";
    }








}
