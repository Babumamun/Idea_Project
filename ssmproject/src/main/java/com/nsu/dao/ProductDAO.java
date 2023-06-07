package com.nsu.dao;

import com.nsu.bean.Product;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
@Repository
@Mapper
public interface ProductDAO {
     List<Product>selectAll();
     int addProducts(Product product);
     void deleteProduct(String id);
     Product selectById(String id);
    List<Product> selectByName(String name);
     void update(Product product);
}
