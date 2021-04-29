package com.kurly.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {

	private String mkp_name;
	private String mkp_sub_name;
	private Integer mkp_price;
	private Integer mkp_discount;
	private Integer mkp_discount_rate; 
	private Integer mkp_kurly_only;		 //독점여부
	private Integer mkp_point_rate; 	 //적립률
	private String mkp_unit;			//판매단위	
	private Integer mkp_weight;
	private Integer mkp_early_delivery; 
	private Integer mkp_delivery;
	private String mkp_packing_type;
	private String mkp_allergy_info;
	private String mkp_exp_date;  		//유통기한
	private String mkpi_uri;
	private String mkb_name; 			//업체이름

	private String originPrice; //원래가격
	private String finalPrice;  //할인적용가격
	private String point; 		//적립
	
	private Integer finalPriceInt;		// 최종가격 정수타입     ,가붙어서 js에서 int로 인식불가능해서추가한거
	private Integer pointInt;			// 적립 포인트 정수타입
	
	
	
}
