package com.instagram.service;

import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import java.util.Random;

@Service
public class EmailService {
    @Autowired JavaMailSender mailSender;
    @Value("${mail.from}")
    private String FROM;

    public void send_signup_auth_mail(String userEmail) throws Exception{
        Random random = new Random();
        String authNumber = "" + random.nextInt(10) + random.nextInt(10) + random.nextInt(10) + random.nextInt(10);

        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage);
        helper.setSubject("[INSTAGRAM] 회원가입 인증 메일입니다");
        helper.setText("<b>인증번호:</b> " + authNumber, true);
        helper.setTo(userEmail);
        helper.setFrom(FROM);

        mailSender.send(mimeMessage);
    }
}
