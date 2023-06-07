package com.nsu.controller;

import com.alibaba.druid.sql.parser.SymbolTable;
import com.nsu.bean.Product;
import com.nsu.bean.Register;
import com.nsu.bean.User;
import com.nsu.service.ProductService;
import com.nsu.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductsController {
    @Autowired
    private ProductService productService;
    private List<Product> products;
    @RequestMapping("/cart")
    public String redirect1()
    {
        return "cart";
    }
    @RequestMapping("/account")
    public String redirect2()
    {
        return "account";
    }

    @RequestMapping("/prompt")
    public String redirect3()
    {
        return "prompt";
    }
    @RequestMapping("/add")
    public String redirect4()
    {
        return "add";
    }
    @RequestMapping("/result")
    public String redirect5()
    {
        return "result";
    }

    @RequestMapping("/alert")
    public String redirect6()
    {
        return "alert";
    }
    @RequestMapping("/update")
    public String redirect7()
    {
        return "update";
    }
    @RequestMapping("/alert2")
    public String redirect8()
    {
        return "alert2";
    }
    @RequestMapping("/homepage")
    public String getAllProducts(Model model){
        products=productService.selectAll();
        model.addAttribute("products",products);
        return "homepage";
    }
    @RequestMapping("/products")
    public String getAllProduct2(Model youa){
        products=productService.selectAll();
        youa.addAttribute("products",products);
        return "products";
    }
    @RequestMapping("/product-details")
    public String getAllProduct3(Model mod){
        products=productService.selectAll();
        mod.addAttribute("products",products);
        return "product-details";
    }
    @RequestMapping("/admin")
    public String getAllProduct4(Model mdl){
        products=productService.selectAll();
        mdl.addAttribute("products",products);
        return "admin";
    }

    @PostMapping("/LongIn")
    public String LongIn(@Valid @ModelAttribute("user") User user, BindingResult result){
        if(result.hasErrors())
            return "account";
         else

            return "redirect:admin";

    }

    @PostMapping("/Register")
    public String Register(@Valid @ModelAttribute("register") Register register, BindingResult result,Model model){

        if(result.hasErrors())
            return "account";
        else
            model.addAttribute("msg","Register successfully!!");
            return "alert";
    }

                //add product and upload image for the product
@RequestMapping("/upload2")
public String upload2(MultipartFile myfile, @ModelAttribute("product") Product product,HttpServletRequest request, Model model){
//    System.out.println("Product object:"+product);
    int result=productService.addProducts(product);
       String realpath=request.getServletContext().getRealPath("static/img");
    String filename=myfile.getOriginalFilename();
    File targetFile=new File(realpath,filename);
    if(!targetFile.exists())
        targetFile.mkdirs();
    try{
        myfile.transferTo(targetFile);
//        model.addAttribute("msg","Product and Image upload successfully!!");
//        model.addAttribute("mypic",targetFile.getName());
//        System.out.println(targetFile.getName());
    }catch (Exception e){
        e.printStackTrace();
    }

    if(result>0){
        model.addAttribute("msg","Product and Image upload successfully!!");
    }

    else {
        model.addAttribute("msg","Product and Image upload failed!");
    }
    return "result";
}

    // delete from database
    @RequestMapping("/delproduct")
    public String deProduct(@RequestParam("productId") String productId,Model model){
        //System.out.println("Product id:"+productId);
        productService.delProducts(productId);
        model.addAttribute("msg","Delete successfully done!!");
        return "alert2";
    }

                        // Search products

    @RequestMapping("/searchpage")
public String Search(@RequestParam(value="name",defaultValue = " ") String name ,Model model){
//      System.out.println("search name is:"+name);
        List<Product>product= productService.getByName(name);
     model.addAttribute("products",product);
        return "homepage";
}

                    // update product
@RequestMapping("/updateProduct")
public String GetId(@RequestParam("productId") String productId,Model model){
   System.out.println("update Product id is:"+productId);
   Product product=productService.selectById(productId);
   model.addAttribute("product",product);
        return "update";
}

    @RequestMapping("/updateProduct2")
    public String Update(Product products,MultipartFile myfile,Model model,HttpServletRequest request){
        productService.update(products);
        String realpath=request.getServletContext().getRealPath("static/img");
        String filename=products.getId()+".jpg";
        File targetFile=new File(realpath,filename);
        if(!targetFile.exists())
            targetFile.mkdirs();
        try
        {

            myfile.transferTo(targetFile);
        } catch (IOException e)
        {
            e.printStackTrace();
        }

        model.addAttribute("msg","Product Update successfully done!");
        return "alert";
    }

}
