package com.instagram.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@ToString
public class ChatRoomDTO {
    private String id;
    private UserDTO otherUser;
    private List<ChatMessageDTO> messages;
    private LocalDateTime createTime;
}
