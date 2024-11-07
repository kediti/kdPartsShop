package com.kdparts.dto;

import org.modelmapper.ModelMapper;

import com.kdparts.entity.ItemImg;
import lombok.Getter;
import lombok.Setter;
import org.modelmapper.ModelMapper;

@Getter
@Setter
public class ItemImgDTO {
	private Long id;
	private String imgName;
	private static ModelMapper modelMapper = new ModelMapper();
	
	public static ItemImgDTO of(ItemImg itemImg) {
		return modelMapper.map(itemImg, ItemImgDTO.class);
	}
}
