package cn.Utils;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;

/**
 * Created by Administrator on 2017/4/27.
 */
public class UtilMyBatis {
    private static String resource;
    private static InputStream inputStream;
    private static SqlSessionFactory sqlSessionFactory;


    static {
       resource="conf.xml";
       inputStream=UtilMyBatis.class.getClassLoader().getResourceAsStream(resource);
        sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
    }

    /**
     * 获取Sqlsession
     */
    public static SqlSession getSqlSession(){
        return sqlSessionFactory.openSession();
    }


}
