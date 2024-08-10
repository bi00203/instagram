package com.instagram.mapper;

import com.instagram.dto.PostDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PostMapper {
    // 마지막 게시물 이후 게시물들 불러오기
    List<PostDTO> getPosts(Integer lastPostNo);
    // 하나의 게시물 (POST) 내용 INSERT
    void insertPost(PostDTO post);
    // 위에서 INSERT 했던 게시물의 사진/동영상 INSERT
    void insertPostContents(PostDTO post);
}







