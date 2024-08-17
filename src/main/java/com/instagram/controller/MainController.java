package com.instagram.controller;

import com.instagram.dto.PostDTO;
import com.instagram.dto.UserDTO;
import com.instagram.service.PostService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
            @RequestParam(defaultValue = "99999999") Integer lastPostNo,
            @RequestParam(defaultValue = "3") Integer count,
            Model model
    ) {
        List<PostDTO> posts = postService.get_posts(lastPostNo, count);
        System.out.println(posts);
        model.addAttribute("posts", posts);
        return "fragment/main-post-article";
    }

    @GetMapping("/post/{no}")
    public String get_post(@PathVariable Integer no, Model model) {
        PostDTO postDTO = postService.get_post(no);
        model.addAttribute("post", postDTO);
        return "main/view";
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

    /**************************************************/
    @GetMapping("/contents")
    public ResponseEntity<List<PostDTO>> get_contents(
            @RequestParam(defaultValue = "99999999") Integer lastPostNo,
            @RequestParam(defaultValue = "3") Integer count,
            @RequestParam(value = "email", required = false) String userEmail
    ){
        List<PostDTO> posts = postService.get_posts(lastPostNo, count, userEmail);
        return ResponseEntity.ok(posts);
    }

    @GetMapping("/search")
    public String get_search(){
        return "main/search";
    }




}
