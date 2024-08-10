package com.instagram.controller;

import com.instagram.dto.PostDTO;
import com.instagram.dto.UserDTO;
import com.instagram.service.PostService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Log4j2
@Controller
public class MainController {
    @Autowired private PostService postService;

    @GetMapping("/")
    public String get_main() {
        return "main/main";
    }

    @GetMapping("/posts")
    public String get_posts(
            @RequestParam(defaultValue = "0") Integer lastPostNo,
            Model model
    ) {
        List<PostDTO> posts = postService.get_posts(lastPostNo);
        System.out.println(posts);
        model.addAttribute("posts", posts);
        return "fragment/main-post-article";
    }


    @GetMapping("/post/create")
    public String get_post_create(){
        return "main/create-post";
    }

    @PostMapping("/post/create")
    public String post_post_create(
            @AuthenticationPrincipal UserDTO user,
            PostDTO post
    ){
        postService.create_post(user, post);
        return "redirect:/post/create";
    }








}
