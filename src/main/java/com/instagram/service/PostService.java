package com.instagram.service;

import com.instagram.dto.PostDTO;
import com.instagram.dto.UserDTO;
import com.instagram.mapper.PostMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostService {
    @Autowired private PostMapper postMapper;

    // 마지막 게시물로부터 count 개수만큼 게시물 가져오기
    public List<PostDTO> get_posts(Integer lastPostNo, Integer count) {
        return get_posts(lastPostNo, count, null);
    }

    // 해당 유저가 게시한 마지막 게시물로부터 count 개수만큼 게시물 가져오기
    public List<PostDTO> get_posts(Integer lastPostNo, Integer count, String userEmail){
        return postMapper.selectPosts(lastPostNo, count, userEmail);
    }

    public PostDTO get_post(Integer postNo){
        return postMapper.selectPostByPostNo(postNo);
    }

    // 하나의 게시물을 생성
    public void create_post(UserDTO user, PostDTO post){
        post.setUser(user); // 현재 로그인되어있는 유저 정보로 설정
        postMapper.insertPost(post); // 게시물 insert
        postMapper.insertPostContents(post); // 게시물의 사진/동영상 등 contents insert
    }
}
