package com.sms.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service("mailService")
public class SMSMailSender implements MailService{
	
	@Autowired
	JavaMailSender mailSender;
	
	private final static String mailFrom = "demo.xyzw@gmail.com";

	@Override
	public void sendEmail(String toAddress, String subject, String msgBody) {
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setFrom(mailFrom);
		mailMessage.setTo(toAddress);
		mailMessage.setSubject(subject);
		mailMessage.setText(msgBody);
		mailSender.send(mailMessage);
	}
}
