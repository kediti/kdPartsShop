package com.kdparts.dto;

import java.util.ArrayList;
import java.util.List;

import org.modelmapper.ModelMapper;

import com.kdparts.entity.Product;

import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class prdFormDTO {
	private Long prd_id;
	
	@NotBlank(message = "상품명은 필수 입력 값입니다")
	private String prd_name;
	
	@NotBlank(message = "팩션은 필수 입력 값입니다")
	private String prd_pack;
	
	@NotBlank(message = "파츠명은 필수 입력 값입니다")
	private String prd_parts;
	
	@NotBlank(message = "상품설명은 필수 입력 값입니다. 없을 경우 - 를 적어주세요")
	private String prd_des;
	
	@NotBlank(message = "코스트는 필수 입력 값입니다")
	private Integer prd_cost;
	
	@NotBlank(message = "가격은 필수 입력 값입니다")
	private Integer prd_price;
	
	private List<ItemImgDTO> itemImgDTOList = new ArrayList<>();
	private List<Long> itemImgIds = new ArrayList<>();
	private static ModelMapper modelMapper = new ModelMapper();
	
	public Product createProduct() {
		return modelMapper.map(this, Product.class);
	}
	
	public static prdFormDTO of(Product product) {
		return modelMapper.map(product, prdFormDTO.class);
	}
}
