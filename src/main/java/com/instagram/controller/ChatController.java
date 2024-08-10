package com.instagram.controller;

import com.instagram.dto.ChatMessageDTO;
import com.instagram.dto.ChatRoomDTO;
import com.instagram.dto.UserDTO;
import com.instagram.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ChatController {
    @Autowired private ChatService chatService;

    public ChatController(ChatService chatService) {
        this.chatService = chatService;
    }

    @GetMapping("/chat")
    public String get_chat(
            @AuthenticationPrincipal UserDTO user,
            Model model
    ){
        List<ChatRoomDTO> chatRooms = chatService.get_chat_rooms(user.getEmail());
        model.addAttribute("chatRooms", chatRooms);
        return "main/chat";
    }

    @GetMapping("/chat/{roomId}")
    public String get_chat_room(
            @AuthenticationPrincipal UserDTO user,
            @PathVariable String roomId,
            Model model
    ){
        List<ChatRoomDTO> chatRooms = chatService.get_chat_rooms(user.getEmail());
        ChatRoomDTO chatRoom = chatService.get_chat_room(roomId);
        List<List<ChatMessageDTO>> groupedChat = chatService.grouping_chat_messages(chatRoom);

        model.addAttribute("chatRoom", groupedChat);
        model.addAttribute("chatRooms", chatRooms);

        return "main/chat";
    }

    @MessageMapping("/{roomId}")
    public String get_chat_message(
            @DestinationVariable String roomId,
            String message
    ){
        return message;
    }
}
