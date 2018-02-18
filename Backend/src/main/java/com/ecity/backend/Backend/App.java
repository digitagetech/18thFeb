package com.ecity.backend.Backend;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.ecity.backend.config.ApplicationContextConfig;
import com.ecity.backend.model.User;
import com.ecity.backend.dao.UserDao;


/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        
        ApplicationContext c=new AnnotationConfigApplicationContext(ApplicationContextConfig.class);
        System.out.println("Done");
    }
}
