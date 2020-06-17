package com.aws.codestar.projecttemplates.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.aws.codestar.projecttemplates.controller.HelloWorldController;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.proc.kart.model.Product;

/**
 * Spring configuration for sample application.
 */
@Configuration
@ComponentScan({"com.aws.codestar.projecttemplates.configuration", "com.proc.kart.controller", "com.proc.kart.hbm.config"})
@PropertySource("classpath:application.properties")
public class ApplicationConfig {

    /**
     * Retrieved from properties file.
     */
    @Value("${HelloWorld.SiteName}")
    private String siteName;

    @Bean
    public HelloWorldController helloWorld() {
        return new HelloWorldController(this.siteName);
    }

    /**
     * Required to inject properties using the 'Value' annotation.
     */
    @Bean
    public static PropertySourcesPlaceholderConfigurer placeHolderConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }
}
