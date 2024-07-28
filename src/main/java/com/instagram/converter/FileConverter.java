package com.instagram.converter;

import com.instagram.dto.FileDTO;
import com.instagram.dto.PostContentsDTO;
import lombok.extern.log4j.Log4j2;
import org.springframework.core.convert.converter.Converter;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Log4j2
public class FileConverter implements Converter<List<MultipartFile>, List<PostContentsDTO>> {
    @Override
    public List<PostContentsDTO> convert(List<MultipartFile> source) {
        log.info("converter 실행..");
        for (MultipartFile multipartFile : source) {
            try {
                byte[] data = multipartFile.getBytes();
                String contentType = multipartFile.getContentType();
                String originalFilename = multipartFile.getOriginalFilename();
                log.info(originalFilename);
                log.info(contentType);
            }catch (Exception e){

            }
        }
        return List.of();
    }
}
