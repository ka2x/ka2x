package com.ka2x.demo;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.Environment;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;

@Slf4j
@SpringBootApplication
public class Ka2xDemoApplication {

    public static void main(String[] args) {
        ConfigurableApplicationContext context = SpringApplication.run(Ka2xDemoApplication.class, args);
        printURLs(context);
    }

    private static void printURLs(ApplicationContext context) {
        Environment env = context.getEnvironment();
        String port = env.getProperty("local.server.port");
        InetAddress localHost = null;
        try {
            localHost = Inet4Address.getLocalHost();
        } catch (UnknownHostException e) {
            log.error(e.getMessage(), e);
        }
        if (localHost == null) {
            return;
        }
        String host = localHost.getHostAddress();  // 返回格式为：xxx.xxx.xxx
        log.info("app url is http://{}:{}", host, port);
    }


}
