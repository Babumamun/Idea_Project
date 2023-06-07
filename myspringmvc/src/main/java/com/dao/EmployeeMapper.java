package com.dao;

import com.bean.Employee;
import com.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployeeMapper {

//    public List<Employee> getAllUsers() {
//        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
//        try{
//            EmployeeMapper userMapper = sqlSession.getMapper(UserMapper.class);
//            return userMapper.getAllUsers();
//        }finally{
//            sqlSession.close();
//        }
//    }

    public List<Employee> getAllEmployees(){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        List<Employee> employeesList = session.selectList("getAllEmployees");
        session.commit();
        session.close();
        return employeesList;
    }


}
