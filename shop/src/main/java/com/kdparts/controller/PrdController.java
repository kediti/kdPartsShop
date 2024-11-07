package com.kdparts.controller;


import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;


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
	
	@RequestMapping("/write.do")
	public String write(){
		return "prdWrite";
	}
	
	@RequestMapping("/insert.do")
	public String insert(Product product){
		String filename="";
		
		if(!product.getPrdImg().isEmpty()) {
			filename = product.getPrdImg().getOriginalFilename();
			String path = "C:\\Users\\kdy97\\git\\kdPartsShop\\shop\\src\\main\\webapp\\WEB-INF\\views\\images";
			
			try {
				new File(path).mkdirs();
				product.getPrdImg().transferTo(new File(path+filename));
			} catch(Exception e) {
				
			}
			
		}
		
		return "prdWrite";
	}
}
