package com.nsu.dao;

import com.nsu.bean.Student;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface StudentDAO {
    public List<Student> selectAll();

}

