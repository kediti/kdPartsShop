package com.kdparts.controller;


import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;


import com.kdparts.entity.Product;
import com.kdparts.service.PrdService;

@Controller
public class PrdController {
	
	@Autowired
	private final PrdService prdService;
	
	
	public PrdController(PrdService prdService) {
        this.prdService = prdService;
    }
	
	@RequestMapping("/productList")
	public String getProductList(Model model) {
		List<Product> products = prdService.getAllproduct();
		model.addAttribute("product", prdService.getAllproduct());
		model.addAttribute("List", products);
		return "productList";
	}
	
	 @GetMapping("/product/register")
	    public String showRegisterForm(Model model) {
	        model.addAttribute("product", new Product());
	        return "productRegister";
	    }
	 @PostMapping("/product/register")
	    public String registerProduct(@ModelAttribute("product") Product product, @RequestParam("prdImgFile") MultipartFile prdImgFile) {
	       
		 if (!prdImgFile.isEmpty()) {
		        String fileName = prdImgFile.getOriginalFilename();
		        String filePath = "C:" + File.separator + "Users" + File.separator + "kdy97" + File.separator + "git" + File.separator + 
		                  "kdPartsShop" + File.separator + "shop" + File.separator + "src" + File.separator + 
		                  "main" + File.separator + "resources" + File.separator + "static" + File.separator + "images" + File.separator + fileName; // 실제 저장 경로 설정 필요
		        File dest = new File(filePath);

		        try {
		            prdImgFile.transferTo(dest); 
		            product.setPrdImg(fileName); 
		        } catch (IOException e) {
		            e.printStackTrace();
		        }
		    }
		 prdService.saveProduct(product);
	        return "redirect:/productList";
	    }
}
