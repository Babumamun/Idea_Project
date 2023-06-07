package com.util;

import com.bean.Employee;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.List;

public class MyBatisUtil {
    private static SqlSessionFactory factory;

    private MyBatisUtil() {
    }

    static
    {
        Reader reader = null;
        try {
            reader = Resources.getResourceAsReader("mybatis-config.xml");
        } catch (IOException e) {
            throw new RuntimeException(e.getMessage());
        }
        factory = new SqlSessionFactoryBuilder().build(reader);
    }

    public static SqlSessionFactory getSqlSessionFactory()
    {
        return factory;
    }

//    public static void main(String args[]) throws IOException{
//
//        Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
//        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
//        SqlSession session = sqlSessionFactory.openSession();
//
//       List<Employee>employees=session.selectList();

//    }


//
//    SqlSession sqlSession=null;
//    InputStream inputStream=null;
//    String resource="";
//    SqlSessionFactory sqlSessionFactory=null;

//    private static SqlSessionFactory sqlSessionFactory;
//    static {
//        Reader reader;
//        try {
//            reader = Resources.getResourceAsReader("mybatis-config.xml");
//            sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }
//    public static SqlSessionFactory getSqlSessionFactory(){
//        return sqlSessionFactory;
//    }
}
