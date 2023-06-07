package com.nsu.service;

import com.nsu.bean.Product;
import com.nsu.bean.Student;
import com.nsu.dao.ProductDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    @Autowired
    private ProductDAO productDAO;
    public List<Product> selectAll(){
        return productDAO.selectAll();
    }

    public int addProducts(Product product) {
       return productDAO.addProducts(product);
    }

    public void delProducts(String id){
         productDAO.deleteProduct(id);
    }


    public List<Product> getByName( String name){
        return productDAO.selectByName(name);
    }

    public Product selectById(String id){
        return productDAO.selectById(id);
    }

    public void update(Product product){
         productDAO.update(product);
    }


}
