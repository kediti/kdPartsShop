package com.kdparts.service;


import java.util.List;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Service;

import com.kdparts.entity.Product;
import com.kdparts.repository.PrdRepository;

@Service
@Configuration
@EnableJpaRepositories(basePackages = "com.kdparts.repository")
@EntityScan(basePackages = "com.kdparts.emtity")
public class PrdService {
	private final PrdRepository prdRepository;
	
	 public PrdService(PrdRepository prdRepository) {
	        this.prdRepository = prdRepository;
	    }
	public List<Product> getAllproduct() {
		// TODO Auto-generated method stub
		return prdRepository.findAll();
	} 
}
