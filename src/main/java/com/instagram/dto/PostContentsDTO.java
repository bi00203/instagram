package com.instagram.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
public class PostContentsDTO {
    private Integer no;
    private byte[] contents;
    private String mediaType;
}
