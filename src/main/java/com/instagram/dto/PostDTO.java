package com.instagram.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@ToString
public class PostDTO {
    private Integer no;
    private UserDTO user;
    private String text;
    private LocalDateTime createDate;
    private List<PostContentsDTO> contents;
}
