package com.instagram.service;

import com.instagram.dto.UserDTO;
import com.instagram.mapper.UserMapper;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

import java.io.IOException;

@Service
public class UserService {
    @Autowired private UserMapper userMapper;
    private byte[] userDefaultImageData;

    @PostConstruct
    void loadUserDefaultImage() throws IOException {
        Resource resource = new ClassPathResource("/static/images/login/user.png");
        this.userDefaultImageData = resource.getContentAsByteArray();
    }

    public boolean check_user_is_duplicated(UserDTO user){
        UserDTO findUser = userMapper.getUserByUserInfo(user);
        return findUser != null;
    }
    public void create_user(UserDTO user){
        user.setImage(userDefaultImageData);
        userMapper.insertUser(user);
    }
}
