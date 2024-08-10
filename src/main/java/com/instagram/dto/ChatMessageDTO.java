package com.instagram.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;

@Getter
@Setter
@ToString
public class ChatMessageDTO {
    private Integer no;
    private UserDTO sender;
    private String message;
    private LocalDateTime sendTime;
}
