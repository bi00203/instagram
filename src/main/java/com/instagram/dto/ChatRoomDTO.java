package com.instagram.dto;

import lombok.*;

import java.time.LocalDateTime;
import java.util.List;

@Builder
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class ChatRoomDTO {
    private String id;
    private UserDTO otherUser;
    private List<ChatMessageDTO> messages;
    private LocalDateTime createTime;
}
