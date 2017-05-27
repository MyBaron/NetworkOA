package cn.Utils;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * Created by Administrator on 2017/5/5.
 */
public class UtilSpringContext implements ApplicationContextAware{

    private static ApplicationContext application;

    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
             application=applicationContext;
    }

    public static ApplicationContext getApplicationContext(){
        return application;
    }

    public  static Object getBean(String name){
        return application.getBean(name);
    }
    public static <T> T getBean(String name,Class<T> requiredClass){
        return application.getBean(name,requiredClass);
    }

}
