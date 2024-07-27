package com.instagram.mapper;

import com.instagram.dto.UserDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {

    UserDTO getUserByEmail(String email);

    void insertUser(UserDTO user);

}
