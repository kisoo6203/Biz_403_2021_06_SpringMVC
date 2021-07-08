package com.callor.gallery.model;

import lombok.ToString;

import lombok.Setter;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MemberVO {
	
	private String m_userid;
	private String m_password;
	private String re_password;
	private String m_nick;
	private String m_tel;
	private int m_level;

}
