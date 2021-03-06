package com.easycode.common.utils;

import java.security.GeneralSecurityException;
import java.util.Properties;
import javax.mail.Address;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import org.springframework.beans.factory.annotation.Value;

import com.sun.mail.util.MailSSLSocketFactory;
/**
 * 

 * @ClassName: SendMailUtil2

 * @Description: 发送邮件工具类

 * @author: Mr.Yang

 * @date: 2017年8月28日 下午4:50:17
 */
public class SendMailUtil {
     /**
     * Message对象将存储我们实际发送的电子邮件信息，
     * Message对象被作为一个MimeMessage对象来创建并且需要知道应当选择哪一个JavaMail session。
     */
    private MimeMessage message;

    /**
     * Session类代表JavaMail中的一个邮件会话。
     * 每一个基于JavaMail的应用程序至少有一个Session（可以有任意多的Session）。
     * 
     * JavaMail需要Properties来创建一个session对象。
     * 寻找"mail.smtp.host"    属性值就是发送邮件的主机
     * 寻找"mail.smtp.auth"    身份验证，目前免费邮件服务器都需要这一项
     */
    private Session session;

    /***
     * 邮件是既可以被发送也可以被受到。JavaMail使用了两个不同的类来完成这两个功能：Transport 和 Store。 
     * Transport 是用来发送信息的，而Store用来收信。这里我们只需要用到Transport对象。
     */
    private Transport transport;

    @Value("mail.smtp.host")
    private String mailHost;
    @Value("mail.smtp.host")
    private String sender_username;
    @Value("mail.smtp.host")
    private String sender_password;

	private Properties properties = new Properties();
    /*
     * 初始化方法
     */
	 public  SendMailUtil(boolean debug) {
	        try {
	            // 开启SSL加密，否则会失败
	            MailSSLSocketFactory sf = new MailSSLSocketFactory();
	            sf.setTrustAllHosts(true);
	            properties.put("mail.smtp.ssl.enable", "true");
	            properties.put("mail.smtp.ssl.socketFactory", sf);

	        } catch (GeneralSecurityException e) {
	            e.printStackTrace();
	        }
	        session = Session.getInstance(properties);
	        session.setDebug(debug);// 开启后有调试信息
	        message = new MimeMessage(session);
	    }

    /**
     * 发送邮件
     * 
     * @param subject
     *            邮件主题
     * @param sendHtml
     *            邮件内容
     * @param receiveUser
     *            收件人地址
     */
    public boolean doSendHtmlEmail(String subject, String emailContent,String[] toEmailAddress) {
    	boolean b=false;
        try {
            // 发件人
            //InternetAddress from = new InternetAddress(sender_username);
            // 下面这个是设置发送人的Nick name
            InternetAddress from = new InternetAddress(MimeUtility.encodeWord("乐购商城官方邮箱")+" <"+sender_username+">");
            message.setFrom(from);

            // 邮件主题
            message.setSubject(subject);

            // 邮件内容,也可以使纯文本"text/plain"
            message.setContent(emailContent, "text/html;charset=UTF-8");

            // 保存邮件
            message.saveChanges();

            transport = session.getTransport("smtp");

            // smtp验证  用户名和授权码
            transport.connect(mailHost, sender_username, sender_password);

            // 发送
            transport.sendMessage(message,  getAddress(toEmailAddress));

            b=true;
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            if(transport!=null){
                try {
                    transport.close();
                } catch (MessagingException e) {
                    e.printStackTrace();
                }
            }
        }
        return b;
    }

    /**
     * 
     * @Title: getAddress

     * @Description: 遍历收件人信息

     * @param emilAddress
     * @return
     * @throws Exception

     * @return: Address[]
     */
    private static Address[] getAddress(String[] emilAddress) throws Exception {
        Address[] address = new Address[emilAddress.length];
        for (int i = 0; i < address.length; i++) {
            address[i] = new InternetAddress(emilAddress[i]);
        }
        return address;
    }

/*
    public static void main(String[] args) {
    	SendMailUtil se = new SendMailUtil(true);// 开启调试
        se.doSendHtmlEmail("1邮件主题", "邮件内容", new String[]{"xxxxx@gmail.com","xxxxxxxx@qq.com"});
    }*/
}