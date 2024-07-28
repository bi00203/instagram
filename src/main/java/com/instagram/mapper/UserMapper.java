package com.instagram.mapper;

import com.instagram.dto.UserDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {

    // 유저 회원가입
    void insertUser(UserDTO user);

    UserDTO getUserByUserInfo(UserDTO user);
}
