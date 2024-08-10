package com.instagram.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.List;

@Getter
@Setter
@ToString
public class PostDTO {
    private Integer no;
    private UserDTO user;
    private String text;
    private Integer likeCount;
    private LocalDateTime writeTime;
    private List<FileDTO> contents;
    private String diffTime; // 게시날자를 기준으로 현재 날자와 비교 문자열

    public void setWriteTime(LocalDateTime writeTime) {
        this.writeTime = writeTime;
        LocalDateTime now = LocalDateTime.now();
        long hour = ChronoUnit.HOURS.between(writeTime, now);
        long day = ChronoUnit.DAYS.between(writeTime, now);
        long week = ChronoUnit.WEEKS.between(writeTime, now);
        this.diffTime = hour + "시간";
        if(hour > 23){
            this.diffTime = day + "일";
            if(day >= 7){
                this.diffTime = week + "주";
            }
        }
    }
}
