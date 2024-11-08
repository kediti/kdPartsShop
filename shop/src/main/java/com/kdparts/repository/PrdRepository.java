package com.kdparts.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kdparts.entity.Product;

@Repository
public interface PrdRepository extends JpaRepository<Product, Long> {
	List<Product> findByPrdNameContainingOrPrdPartsContainingOrPrdPackContaining(String nameKeyword,String partsKeyword,String packKeyword);
}
