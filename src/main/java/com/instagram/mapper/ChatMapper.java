package com.instagram.mapper;

import com.instagram.dto.ChatRoomDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ChatMapper {
    // roomId에 해당하는 방의 모든 정보 조회 (사람, 메세지 내용 전부)
    ChatRoomDTO selectChatRoomByRoomId(String roomId);
    // chat main화면 왔을 때, 사이드바에 있는 방 정보 조회 (방, 상대방, 마지막 메세지만)
    List<ChatRoomDTO> selectChatRoomsByUserEmail(String userEmail);

}
