package com.kdparts.service;


import java.util.List;
import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Service;

import com.kdparts.entity.Product;
import com.kdparts.repository.PrdRepository;

@Service
@Configuration
@EnableJpaRepositories(basePackages = "com.kdparts.repository")
@EntityScan(basePackages = "com.kdparts.entity")
public class PrdService {
	
	@Autowired
	private PrdRepository prdRepository;
	
	 public PrdService(PrdRepository prdRepository) {
	        this.prdRepository = prdRepository;
	    }
	public List<Product> getAllproduct() {
		// TODO Auto-generated method stub
		return prdRepository.findAll();
	} 
	 public Product saveProduct(Product product) {
	        return prdRepository.save(product);
	    }
	 
	 public Product getProductById(Long prdId) {
		 return prdRepository.findById(prdId).orElseThrow(() -> new NoSuchElementException("Product not found"));
	 }
}
