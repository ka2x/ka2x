package com.ka2x.demo;

import lombok.extern.slf4j.Slf4j;
import org.apache.naming.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;
import springfox.documentation.oas.annotations.EnableOpenApi;
import springfox.documentation.swagger2.annotations.EnableSwagger2;
import springfox.documentation.swagger2.annotations.EnableSwagger2WebFlux;
import springfox.documentation.swagger2.annotations.EnableSwagger2WebMvc;

import java.beans.beancontext.BeanContext;
import java.beans.beancontext.BeanContextSupport;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Map;
import java.util.Set;

@EnableSwagger2
@EnableOpenApi
@EnableWebMvc
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
        log.info("swagger ui url is http://{}:{}/swagger-ui", host, port);
    }


}
