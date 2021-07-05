package com.callor.book.model;

import java.util.List;

/*
 * Naver News 정보를 담는 NewsDTO 클래스를 list로 선언한
 * 부모 DTO선언
 */
public class NaverParentDTO {
	
	public String lastBuildDate ;
	public String total ;
	public String start ;
	public String display ;
	
	// 가장 중요한 변수
	// naver에서 데이터가 전송되어 올때
	// 필요한 데이터는 items 항목에 배열로 담겨온다
	// 부모 DTO에서 List type으로 items 변수를 선언한다
	public List<NewsDTO> items ;
}
