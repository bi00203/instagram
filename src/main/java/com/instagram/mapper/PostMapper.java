package com.instagram.mapper;

import com.instagram.dto.PostDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface PostMapper {

    PostDTO selectPostByPostNo(Integer postNo);

    // 마지막 게시물 이후 게시물들 count 개수만큼 불러오기
    List<PostDTO> selectPosts(
            @Param("lastPostNo") Integer lastPostNo,
            @Param("count") Integer count,
            @Param("userEmail") String userEmail
    );
    // 하나의 게시물 (POST) 내용 INSERT
    void insertPost(PostDTO post);
    // 위에서 INSERT 했던 게시물의 사진/동영상 INSERT
    void insertPostContents(PostDTO post);

}







