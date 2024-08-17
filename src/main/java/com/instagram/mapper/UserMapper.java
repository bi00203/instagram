package com.instagram.mapper;

import com.instagram.dto.UserDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserMapper {
    // 유저 정보로 유저 조회
    UserDTO getUserByUserInfo(UserDTO user);
    // 유저 회원가입
    void insertUser(UserDTO user);
    // 키워드로 유저 찾기
    List<UserDTO> selectUserByKeyword(String keyword);

    void insertFollowUser(
            @Param("meEmail") String meEmail,
            @Param("otherEmail") String otherEmail
    );
    void deleteFollowUser(
            @Param("meEmail") String meEmail,
            @Param("otherEmail") String otherEmail
    );
}





