package com.instagram.service;

import com.instagram.dto.UserDTO;
import com.instagram.mapper.UserMapper;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Objects;

// @Service 적용 시, Bean 이 등록되면서 Spring Security가 자동으로
// 이 객체가 기본 UserDetailsService 를 대체하게 됨
@Log4j2
@Service
public class CustomUserDetailsService implements UserDetailsService {
    @Autowired private UserMapper userMapper;
    // 로그인 페이지에서 로그인 버튼 누르면 loadUserByUsername 가 최우선 자동 실행됨
    // 여기서 로그인 로직 구현 (username => 화면에서 입력한 id 값이 옴)
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        log.info(username); // 유저가 로그인할 때 작성한 email
        UserDTO findUser = userMapper.getUserByEmail(username);
        // 해당 유저가 존재하지 않는다
        if (Objects.isNull(findUser)){
            throw new UsernameNotFoundException("Not Found User: " + username);
        }
        // 찾은 유저를 return 하여 Authentication 객체에 등록한다
        return findUser;
    }
}
