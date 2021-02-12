package com.nenu;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

@Service
public class SpringTest {

    @Test
    public void TestSpring(){
        //获取应用上下文
        ApplicationContext applicationContext =
                new ClassPathXmlApplicationContext("applicationContext.xml");

        //获取SpringTest类
        //Spring会自动扫描@Service注解的类，并把这些类纳入到Spring容器中管理
        //注意获取时首字母要小写
        SpringTest springTest =
                (SpringTest) applicationContext.getBean("springTest");

        //调用say hello方法
        springTest.sayHello();
    }

    //在这个类里面写sayHello方法
    public void sayHello(){
        System.out.println("hello");
    }

}
