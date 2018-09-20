package kr.manic.java.springblog;

import org.apache.catalina.servlets.WebdavServlet;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class BlogConfig {
    @Bean
    public ServletRegistrationBean h2servletRegistration() {
        ServletRegistrationBean registration = new ServletRegistrationBean(new WebdavServlet());
        registration.addUrlMappings("/console/*");
        return registration;
    }
}
