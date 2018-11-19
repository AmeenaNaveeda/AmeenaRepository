package com.desert.safari.mail.service;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import com.desert.safari.vo.Contact;
 
 
@Service("mailService")
public class MailServiceImpl implements MailService {
 
    @Autowired
    JavaMailSender mailSender;
 
    @Override
    public void sendEmail(Object object) {
 
        Contact contact = (Contact) object;
 
        MimeMessagePreparator preparator = getMessagePreparator(contact);
 
        try {
            mailSender.send(preparator);
            System.out.println("Message Send...Hurrey");
        } catch (MailException ex) {
            System.err.println(ex.getMessage());
        }
    }
 
    private MimeMessagePreparator getMessagePreparator(final Contact contact) {
 
        MimeMessagePreparator preparator = new MimeMessagePreparator() {
 
            public void prepare(MimeMessage mimeMessage) throws Exception {
                mimeMessage.setFrom(contact.getEmail());
                mimeMessage.setRecipient(Message.RecipientType.TO,
                        new InternetAddress(contact.getEmail()));
                mimeMessage.setText(contact.getMessage());
                mimeMessage.setSubject(contact.getSubject());
            }
        };
        return preparator;
    }
 
}