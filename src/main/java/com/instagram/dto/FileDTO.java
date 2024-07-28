package com.instagram.dto;


import org.springframework.web.multipart.MultipartFile;

public class FileDTO {
    private byte[] data;
    private MultipartFile multipartFile;
    private String fileType;
}
