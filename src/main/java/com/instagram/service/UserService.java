package com.instagram.service;

import com.instagram.dto.FileDTO;
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
    private FileDTO userDefaultImageFileDTO;
    @Autowired private UserMapper userMapper;
    
    // 어플리케이션 실행 시 즉시 자동 실행되어 유저 기본 이미지 파일을 불러옴
    @PostConstruct // @PostConstruct: 해당 클래스의 생성자 호출 후 즉시 실행됨
    void loadUserDefaultImage() throws IOException {
        Resource resource = new ClassPathResource("/static/images/login/user.png");
        byte[] data = resource.getContentAsByteArray();
        userDefaultImageFileDTO = FileDTO.builder().data(data).build();
    }

    // user를 찾아서 존재하지 않으면 사용할 수 있는지 검사
    // duplicated 라면 true 반환
    public boolean check_user_is_duplicated(UserDTO user){
        UserDTO findUser = userMapper.getUserByUserInfo(user);
        return findUser != null;
    }

    // 사용자를 생성한다
    public void create_user(UserDTO user) {
        // 1. 유저는 프로필이미지가 없으니 넣어줘야 한다
        user.setImage(userDefaultImageFileDTO);
        // 2. DB에 Insert 시킨다
        userMapper.insertUser(user);
    }




}
