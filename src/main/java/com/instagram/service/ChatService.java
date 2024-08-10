package com.instagram.service;

import com.instagram.dto.ChatMessageDTO;
import com.instagram.dto.ChatRoomDTO;
import com.instagram.mapper.ChatMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@Service
public class ChatService {
    @Autowired private ChatMapper chatMapper;

    public List<ChatRoomDTO> get_chat_rooms(String userEmail){
        return chatMapper.selectChatRoomsByUserEmail(userEmail);
    }

    public ChatRoomDTO get_chat_room(String roomId){
        return chatMapper.selectChatRoomByRoomId(roomId);
    }

    // 메세지를 유저로 그룹핑해서 표시하기 위한 메서드
    public List<List<ChatMessageDTO>>grouping_chat_messages(ChatRoomDTO chatRoom){
        // 이 방에서 보낸 모든 메세지 리스트
        List<ChatMessageDTO> chatMessages = chatRoom.getMessages();
        // 유저가 보낸 메세지를 그룹핑해서 리스트로 넣어줌
        LinkedList<List<ChatMessageDTO>> chatMessageList = new LinkedList<>();
        // 마지막에 채팅 보낸 유저
        String lastSendUser = null;
        // 모든 메세지를 순회
        for(ChatMessageDTO chatMessage: chatMessages){
            String sendUser = chatMessage.getSender().getEmail();
            // 마지막 채팅 유저가 현재 채팅 유저랑 같다면 == 같은 list(그룹)로 묶는다
            if(lastSendUser != null && lastSendUser.equals(sendUser)){
                // 마지막 그룹을 가져와서 현재 채팅을 넣는다
                chatMessageList.getLast().add(chatMessage);
            }
            // 그 전 유저와 현재 채팅 유저가 다르다면 새로운 그룹
            else{
                // 새로운 그룹을 생성한다
                var newMessageList = new ArrayList<ChatMessageDTO>();
                // 화면에 가져갈 모든 그룹 리스트에 새로운 그룹을 추가한다
                chatMessageList.add(newMessageList);
                // 그룹에 현재 메세지를 담는다
                newMessageList.add(chatMessage);
            }
            lastSendUser = sendUser;
        }
        return chatMessageList;
    }
}
