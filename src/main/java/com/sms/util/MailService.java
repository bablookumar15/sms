package com.sms.util;

public interface MailService {
	public void sendEmail(String toAddress, String subject, String msgBody);
}
