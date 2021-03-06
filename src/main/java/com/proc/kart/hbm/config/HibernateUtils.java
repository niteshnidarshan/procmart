package com.proc.kart.hbm.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.proc.kart.model.Customer;
import com.proc.kart.model.Product;
  
@Configuration
@ComponentScan({"com.proc.kart.controller", "com.proc.kart.dao"})
@EnableTransactionManagement
public class HibernateUtils {
	
	/**
     * Required to inject properties using the 'Value' annotation.
     */
    @Bean
    public static PropertySourcesPlaceholderConfigurer placeHolderConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }
	
	@Bean(name= "dataSource")
    public DataSource getDataSource() { 
		
		/*BasicDataSource dataSource = new BasicDataSource();
		try {
			dataSource.setDriverClassName("org.postgresql.Driver");
		}catch(Exception e) {
			e.printStackTrace();
		}
		dataSource.setUrl("jdbc:postgresql://localhost:5431/postgres");
		dataSource.setUsername("postgres");
		dataSource.setPassword("password");
		*/
    	ComboPooledDataSource dataSource = new ComboPooledDataSource();
    	
    	try {
			dataSource.setDriverClass("org.postgresql.Driver");
			
		} catch (Exception e) { 
			e.printStackTrace();
		}
    	//dataSource.setJdbcUrl("jdbc:postgresql://postgresdb.cjqgo6mcy38x.us-east-2.rds.amazonaws.com:5432/postgres");
    	//dataSource.setUser("postgres");
    	//dataSource.setPassword("password");
    	
    	dataSource.setJdbcUrl("jdbc:postgresql://localhost:5431/postgres");
    	dataSource.setUser("postgres");
    	dataSource.setPassword("password");
    	dataSource.setMinPoolSize(1);
    	dataSource.setMaxPoolSize(5);
    	dataSource.setMaxIdleTime(30000);
    	
    	return dataSource;
    }
    
    private Properties getHibernateProperties() {
    	Properties properties = new Properties();
    	
    	
    	properties.put("hibernate.dialect", "org.hibernate.dialect.PostgreSQL95Dialect");
    	//properties.put("hibernate.temp.use_jdbc_metadata_defaults", "false");
    	//properties.put("hibernate.use-new-id-generator-mappings", "false");
    	properties.put("hibernate.connection_pool_size", "1");
    	properties.put("hibernate.hbm2ddl.auto", "update");
    	properties.put("hibernate.show_sql", "true"); 
    	
    	return properties;
    }
     
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties()).addAnnotatedClass(Customer.class);
    	SessionFactory sessionFactory = sessionBuilder.buildSessionFactory();
    	return sessionFactory;
    	
    }
    
    @Autowired
    @Bean(name = "transactionManager")
    public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
    	HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
    	return transactionManager;
    }
    
}
